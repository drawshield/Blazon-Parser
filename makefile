# Configuration variables
# IMPORTANT! If you change these, run make clean
DRAWSHIELD = true
LANG = en

CC	= gcc
CFLAGS	= -g -D LANG=$(LANG)
INC	= -I/usr/include/libxml2
LIBS	= -lxml2
LEX	= flex
YACC	= bison
LFLAGS	= -Cfe
YFLAGS	= -vd
OBJECTS	= blazonML.o blazon.tab.o lex.yy.o errors.o spelling.o canon.o

# By default, use only flex and bison fragments like 00-whatever.l
# i.e. do NOT match 00ds-extension.l
GRAMMAR = grammar/$(LANG)/[0-9][0-9]-*.y
TOKENS = tokens/$(LANG)/[0-9][0-9]-*.l

# If DRAWSHIELD is define use all flex and bison fragments
ifdef DRAWSHIELD
GRAMMAR = grammar/$(LANG)/[0-9][0-9]*.y
TOKENS = tokens/$(LANG)/[0-9][0-9]*.l
TOKENS_IN = tokens/$(LANG)/[0-9][0-9]*.tok
endif

.c.o:
	$(CC) $(CFLAGS) -c $(INC) -o $@ $<

default: blazon

blazonML.c: blazonML.h

spelling.c: spelling.h

errors.c: errors.h blazonML.h spelling.h

blazon.y: $(GRAMMAR) errors.h blazonML.h grammar/_top.y grammar/_bottom.y
	cat grammar/_top.y > blazon.y; \
	for i in $(GRAMMAR); do \
		tail -n +2 $$i >> blazon.y; \
	done; \
	cat grammar/_bottom.y >> blazon.y;

blazon.l: $(TOKENS) tokens/_top.l tokens/_bottom.l metalex
	cat tokens/_top.l > blazon.l; \
	cat $(TOKENS_IN) | ./metalex >> blazon.l; \
	for i in $(TOKENS); do \
		tail -n +2 $$i >> blazon.l; \
	done; \
	cat tokens/_bottom.l >> blazon.l;

metalex: tokens/meta.l
	$(LEX) $(LFLAGS) -t $< | $(CC) -xc $(CFLAGS) - -o $@

lex.yy.c: blazon.l errors.h blazonML.h blazon.tab.h
	$(LEX) $(LFLAGS) blazon.l

blazon.tab.c blazon.tab.h: blazon.y
	$(YACC) -o blazon.tab.c $(YFLAGS) blazon.y

blazon: $(OBJECTS)
	$(CC) $(CFLAGS) $(LNFLAGS) -o blazon $(OBJECTS)  $(LIBS)

clean: 
	/bin/rm -f $(OBJECTS) blazon.l blazon.tab.c


