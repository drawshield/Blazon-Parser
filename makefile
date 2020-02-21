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

blazon.y: errors.h blazonML.h

blazon.l: [0-9][0-9]-*.l _top.l _bottom.l
	cat _top.l > blazon.l; \
	for i in [0-9][0-9]*.l; do \
		tail -n +2 $$i >> blazon.l; \
	done; \
	cat _bottom.l >> blazon.l;

lex.yy.c: blazon.l errors.h blazonML.h blazon.tab.h
	$(LEX) blazon.l

blazon.tab.c blazon.tab.h: blazon.y
	$(YACC) -o blazon.tab.c $(YFLAGS) blazon.y

blazon: $(OBJECTS)
	$(CC) $(CFLAGS) $(LNFLAGS) -o blazon $(OBJECTS)  $(LIBS)

clean: 
	/bin/rm -f $(OBJECTS) blazon.l blazon.tab.c


