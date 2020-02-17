/* Convert English blazons to XML blazonML format */

%{
#include <stdio.h>
#include <libxml/parser.h>
#include <libxml/tree.h>
#include "blazon.tab.h"
#include "blazonML.h"
#include "errors.h"

int yylex();
void yyerror(const char *s);

xmlNodePtr xmlRootNode;

%}

%union {
    xmlNodePtr n;
    char *s;
}

%define parse.error verbose

/* Many token types... */

/* tinctures */
%token <n> COLOUR FUR 
 /* but only with a charge? */
%token <n> PROPER COUNTERCHANGED
%token <n> TREATMENT2 TREATMENT1
/* punctuation */
%token AND SEMI SEMI2
/* individual words */
%token ON PIECES POINTS FIELD OF IN
%token THE
/* Divisions */
%token <n> DIVISION_2 DIVISION_3 PARTED_DIVISION
%token PARTY
%token <s> NUMBER 
%token <n> ORDINARY CHARGE QUARTERLY ORD_OR_CHG
/* Various modifiers */
%token <n> LINETYPE DECORATION
%token <n> ORIENTATION CHEVRONMOD
/* Marshalling */
%token <n> PAIRED QUARTERED QUARTER
%token <s>  QUARTERNUM
%token QUARTERMARK 

%type <s> number
%type <n> blazon shield simple field objects object
%type <n> quartered quarterList quarterNum quarterNums
%type <n> divmod divmods div2type division2 division3 division
%type <n> tincture counterchange treat2mod treatment
%type <n> ordType ordprefixes ordinary
%type <n> charge chgType
%nterm onfield

/* Tidy up on error recovery */ 
%destructor { drop($$); } <n>
%destructor { free($$); } <s>

%left TREATMENT1 TREATMENT2
%left DIVISION_2 PARTED_DIVISION DIVISION_3
%left AND


%%

blazon:
    shield { child(xmlRootNode, $1); $$ = xmlRootNode; }
    ;

shield:
    simple { $$ = parent(E_SHIELD, $1, NULL); }
    | simple SEMI { $$ = parent(E_SHIELD, $1, NULL); }
    | simple PAIRED simple { child($2, $1); child($2, $3); $$ = parent(E_SHIELD, $2, NULL); }
    | quartered quarterList { addList($1, $2); $$ = $1; }
    ;

onfield:
    ON THE FIELD OF { }
    | THE FIELD OF { }
    | THE FIELD { }
    ;

simple: 
    field objects { $$ = parent(E_SIMPLE, $1, NULL); child($$, $2); }
    | field { $$ = parent(E_SIMPLE, $1, NULL); }
    ;

field: 
    tincture { $$ = parent(E_FIELD, $1, NULL); }
    | onfield tincture { $$ = parent(E_FIELD, $2, NULL); }
    | division { $$ = parent(E_FIELD, $1, NULL); }
    | onfield division { $$ = parent(E_FIELD, $2, NULL); }
    ;

objects:
    object { $$ = parent(E_OBJECTS, $1, NULL);}
    | objects object { child($1, $2); $$ = $1; }
    ;

object:
    ordinary { $$ = $1; }
    | charge { $$ = $1; }
    ;

quartered:
    QUARTERED { $$ = $1; }
    | QUARTERLY { $$ = parent(E_COMPLEX, NULL, "quarterly"); drop($1); }
    | QUARTERED OF number { attr($1, A_PARAM, $3); $$ = $1;  }
    | QUARTERLY OF number { $$ = parent(E_COMPLEX, NULL, "quarterly");  attr($$, A_PARAM, $3);  drop($1); }
    ;

quarterList:
    quarterNums shield { $$ = dupQuarters($2, $1); }
    | quarterList quarterNums shield { addList($1, dupQuarters($3, $2)); $$ = $1; }
    ;

quarterNum:
    QUARTERNUM { $$ = parent(E_VALUE, NULL, $1); }
    | QUARTERNUM QUARTERMARK { $$ = parent(E_VALUE, NULL, $1); }
    ;

quarterNums:
    quarterNum { $$ = parent(E_LIST, $1, NULL); }
    | quarterNums quarterNum { child($1, $2); $$ = $1; }
    | quarterNums AND quarterNum { child($1, $3); $$ = $1; }
    ;

divmod:
    ORIENTATION { $$ = $1; }
    | LINETYPE  { $$ = $1; }
    | DECORATION  { $$ = $1; }
    | OF number { $$ = newMod(T_NUMMOD, V_OFNUM); attr($$,A_NUMBER,$2);}
    | OF number PIECES { $$ = newMod(T_NUMMOD, V_OFNUM);  attr($$,A_NUMBER,$2); }
    ;

divmods:
    divmod { $$ = parent(E_LIST, $1, NULL); }
    | divmods divmod { child($1, $2); $$ = $1; }
    ;

div2type:
    PARTY DIVISION_2 { $$ = $2; }
    | DIVISION_2 { $$ = $1; }
    | PARTY PARTED_DIVISION { $$ = $2; }
    | QUARTERLY { $$ = $1; }
    ;

division2:
    div2type { $$ = $1; }
    | div2type divmods { addList($1, $2); $$ = $1; }
    ;

division3:
    DIVISION_3  { $$ = $1; }
    | DIVISION_3 divmods { addList($1, $2); $$ = $1; }
    ;

division: 
    division2 tincture tincture { child($1,$2); child($1,$3); $$ = $1; }
    | division2 tincture AND tincture { child($1,$2); child($1,$4); $$ = $1; }
    | division3 tincture tincture AND tincture { child($1,$2); child($1,$3); child($1,$5); $$ = $1; }
    | division3 tincture AND tincture AND tincture { child($1,$2); child($1,$4); child($1,$6); $$ = $1;}
    | division2 counterchange { child($1,$2); $$ = $1; }
    ;

tincture:
    COLOUR { $$ = parent(E_TINCTURE, $1, NULL); }
    | treatment { $$ = parent(E_TINCTURE, $1, NULL); }
    | FUR { $$ = parent(E_TINCTURE, $1, NULL); }
    ;

counterchange:
    COUNTERCHANGED { $$ = parent(E_TINCTURE, $1, NULL); }
    ;

treat2mod:
    OF number { $$ = newMod(T_NUMMOD, V_OFNUM); attr($$,A_NUMBER,$2); }
    | OF number POINTS { $$ = newMod(T_NUMMOD, V_OFNUM);  attr($$,A_NUMBER,$2);; }
    ;

treatment:
    TREATMENT2 tincture AND tincture { child($1, $2); child($1, $4); $$ = $1;; }
    | TREATMENT2 treat2mod tincture AND tincture { child($1, $2); child($1, $3); child($1, $5); $$ = $1; }
    | tincture TREATMENT1 { child($2, $1); $$ = $2; }
    | tincture TREATMENT2 tincture { child($2,$1); child($2,$3); $$ = $2; }
    | tincture TREATMENT2 treat2mod tincture { child($2, $3); child($2,$1); child($2,$4); $$ = $2; }
    ;

ordprefixes:
    ORIENTATION { $$ = parent(E_LIST, $1, NULL); }
    | CHEVRONMOD { $$ = parent(E_LIST, $1, NULL); }
    | ordprefixes ORIENTATION { child($1, $2); $$ = $1; }
    | ordprefixes CHEVRONMOD { child($1, $2); $$ = $1; }
    ;

ordType:
    THE ORD_OR_CHG { attr($2,A_NUMBER,"1"); $$ = $2; }
    | THE ordprefixes ORD_OR_CHG { attr($3,A_NUMBER,"1"); child($3,$2); $$ = $3; }
    | number ORDINARY { attr($2,A_NUMBER,$1); $$ = $2; }
    | number ordprefixes ORDINARY { attr($3,A_NUMBER,$1); child($3,$2); $$ = $3; }
    ; 
  /* TODO Need to change type of ORD_OR_CHG to ORDINARY, + same for CHARGE */
ordinary:
    ordType tincture { child($1, $2); $$ = $1; }
    ;

chgType:
    number CHARGE { attr($2,A_NUMBER,$1); $$ = $2; }
    | NUMBER ORD_OR_CHG { attr($2,A_NUMBER,$1); $$ = $2; }
    ;

charge:
    chgType tincture { child($1, $2); $$ = $1; }
    ;

number:
    NUMBER { $$ = $1; }
    | THE { $$ = "1"; }
    ;

%%

void main()
{
    xmlDocPtr doc;

    // XML Document
    doc = xmlNewDoc(BAD_CAST "1.0");
    xmlRootNode = xmlNewNode(NULL, BAD_CAST E_BLAZON);
    xmlNewProp(xmlRootNode, "creatorName", "blazonYacc");
    xmlDocSetRootElement(doc,xmlRootNode);

    yyparse();
    xmlAddChild(xmlRootNode, getMessages());

    xmlSaveFormatFileEnc("-", doc, "UTF-8", 1);
    xmlFreeDoc(doc);
}

 void yyerror (char const *s) 
 {
   parserMessage(s);
 }
