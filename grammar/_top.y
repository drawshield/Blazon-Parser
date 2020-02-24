/* Convert British blazons to XML blazonML format */

%{

/* ----------------------- Code at the top of the file ---------------------- */

#include <stdio.h>
#include <libxml/parser.h>
#include <libxml/tree.h>
#include "blazon.tab.h"
#include "blazonML.h"
#include "errors.h"

/* Interface to Flex */

int yylex();
void yyerror(const char *s);

/* Top of the Abstract Syntax Tree */
xmlNodePtr xmlRootNode;
/* tincture list counter */
int tc = 1;

char *i2a(int i) {
    static char tc_buf[10];
    snprintf(tc_buf, 10, "%d", i);
    return tc_buf;
}

xmlNodePtr temp; // used for conversion of strings to nodes as required

/* -------------------------------------------------------------------------- */

%}

/**************************************************************************
 * The lexer returns things of 3 types:                                   *
 *     <n> - prepopulated xml nodes for incorporation into the AST        *
 *     <s> - strings, which usually become attributes of a different node *
 *     <> - typeless tokens which are syntactic markers                   *
 **************************************************************************/

%union {
    xmlNodePtr n;
    char *s;
}

/* Take this out for production, we should provide our own error messages*/
%define parse.error verbose
