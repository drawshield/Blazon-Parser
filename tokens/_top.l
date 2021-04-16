/* Lexical analyser for English Blazons
 *
 * Copyright (C) 2020 Karl R Wilcox 
 * Copyright (C) 2021 Duncan Lowther
 * 
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */
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
   
const char adigit[8] = { '6', '3', '4', '\0', '\0', '2', '5', '8' };
char nbuf[4];

%}

S  ([-[:space:]]+)
B  [[:space:]]*\)
N  ([1-8]|one|two|three|four|five|six)
E  [[:^alnum:]]

%%
