/* Lexical recogniser for English Blazons */
 /* XXX do we need yylineno? It's apparently a performance hit if long tokens can include newline */
%option noyywrap yylineno case-insensitive batch
%option noreject noyymore noinput nounput nodefault
%option never-interactive bison-bridge warn

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

S  ([-[:space:]]+)
B  [:space:]*\)
N  ([1-8]|one|two|three|four|five|six)

%%
