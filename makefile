CC		= cc
CFLAGS	= -g
INC		= -I/usr/include/libxml2
LIBS	= -lxml2
LEX		= flex
YACC	= bison
YFLAGS	= -vd
OBJECTS	= blazonML.o blazon.tab.o lex.yy.o errors.o spelling.o

.c.o:
	$(CC) $(CFLAGS) -c $(INC) -o $@ $<

default: blazon

blazonML.c: blazonML.h

spelling.c: spelling.h

errors.c: errors.h blazonML.h spelling.h

blazon.y: grammar/[0-9][0-9]-*.y errors.h blazonML.h
	cat grammar/_top.y > blazon.y; \
	for i in grammar/[0-9][0-9]*.y; do \
		tail -n +2 $$i >> blazon.y; \
	done; \
	cat grammar/_bottom.y >> blazon.y;

blazon.l: tokens/[0-9][0-9]-*.l tokens/_top.l tokens/_bottom.l
	cat tokens/_top.l > blazon.l; \
	for i in tokens/[0-9][0-9]*.l; do \
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


