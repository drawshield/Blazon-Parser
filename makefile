# Configuration variables
# IMPORTANT! If you change these, run make clean
DRAWSHIELD = true
LANG = en

CC		= cc
CFLAGS	= -g
INC		= -I/usr/include/libxml2
LIBS	= -lxml2
LEX		= flex
YACC	= bison
YFLAGS	= -vd
OBJECTS	= blazonML.o blazon.tab.o lex.yy.o errors.o spelling.o

# By default, use only flex and bison fragments like 00-whatever.l
# i.e. do NOT match 00ds-extension.l
GRAMMAR = grammar/[0-9][0-9]-*.y
LEXER = tokens/[0-9][0-9]-*.l

# If DRAWSHIELD is define use all flex and bison fragments
ifdef DRAWSHIELD
GRAMMAR = grammar/$(LANG)/[0-9][0-9]*.y
LEXER = tokens/$(LANG)/[0-9][0-9]*.l
endif

.c.o:
	$(CC) $(CFLAGS) -c $(INC) -o $@ $<

default: blazon

blazonML.c: blazonML.h

spelling.c: spelling.h

errors.c: errors.h blazonML.h spelling.h

blazon.y: $(GRAMMAR) errors.h blazonML.h
	cat grammar/_top.y > blazon.y; \
	for i in $(GRAMMAR); do \
		tail -n +2 $$i >> blazon.y; \
	done; \
	cat grammar/_bottom.y >> blazon.y;

blazon.l: $(LEXER) tokens/_top.l tokens/_bottom.l
	cat tokens/_top.l > blazon.l; \
	for i in $(LEXER); do \
		tail -n +2 $$i >> blazon.l; \
	done; \
	cat tokens/_bottom.l >> blazon.l;

lex.yy.c: blazon.l errors.h blazonML.h blazon.tab.h
	$(LEX) blazon.l

blazon.tab.c blazon.tab.h: blazon.y
	$(YACC) -o blazon.tab.c $(YFLAGS) blazon.y

blazon: $(OBJECTS)
	$(CC) $(CFLAGS) $(LNFLAGS) -o blazon $(OBJECTS)  $(LIBS)

clean: 
	/bin/rm -f $(OBJECTS) blazon.l blazon.tab.c


