/* Lexical recogniser for English Blazons */
%option noyywrap yylineno case-insensitive batch

%{

#include <string.h>
#include <libxml/parser.h>
#include <libxml/tree.h>
#include "blazon.tab.h"
#include "blazonML.h"
#include "errors.h"

void mkNode(char *nodeName, char *keyterm);
void mkMod(char *modType, char *keyterm);
void val(char *value);
#define stash() strcat(buffer,yytext); strcat(buffer," ");

char buffer[4096];

%}

S  [-[:space:]]+
B  [:space:]*\)

%%
