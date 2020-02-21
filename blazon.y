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

/* -------------------------------------------------------------------------- */
/*                          Tokens (terminal symbols)                         */
/* -------------------------------------------------------------------------- */

/* ---------------------- Punctuation, multi-use words ---------------------- */
%token AND SEMI 
%token ON PIECES POINTS FIELD OF IN THE AS SAME

/* --------------------------------- Numbers -------------------------------- */
%token <s> NUMBER 
/* token THE also sometimes means the number "1"

/* -------------------------------- Tinctures ------------------------------- */
%token <n> COLOUR FUR 
%token <n> PROPER COUNTERCHANGED
%token <n> TREATMENT2 TREATMENT1

/* -------------------------------- Divisons -------------------------------- */
%token <n> DIVISION_2 DIVISION_3 PARTED_DIVISION QUARTERLY DIVISION_2_3
%token PARTY
/* Quarterly may also be an ordinary */

/* ------------------------------- Ordinaries ------------------------------- */
%token <n> ORDINARY ORD_OR_CHG ORDMOD ORDMODCOL

/* --------------------------------- Charges -------------------------------- */
%token <n> CHARGE

/* -------------------------------- Modifiers ------------------------------- */
%token <n> LINETYPE DECORATION VOIDED
%token <n> ORIENTATION CHEVRONMOD

/* ------------------------------- Marshalling ------------------------------ */
%token <n> PAIRED QUARTERED 
%token <s>  QUARTERNUM
%token QUARTERMARK QUARTER

/* -------------------------------------------------------------------------- */
/*                                Non-Terminals                               */
/* -------------------------------------------------------------------------- */
/* most of these correspond closely to the nodes of the blazonML Schema */
%type <s> number quarterCount
%type <n> blazon shield simple field objects object
%type <n> quartered quarterList quarterNum quarterNums
%type <n> divmod divmods div2type division2 division3 division division23
%type <n> div23Type backref counterchange
%type <n> tincture treat2mod treatment tinctureList andTincture
%type <n> ordType ordprefixes ordinary ordprefix ordsuffixes ordsuffix
%type <n> simpleOrd ordsuffixItem
%type <n> charge chgType
%nterm onfield ofthe

/* ------------------------- Error recovery actions ------------------------- */
%destructor { drop($$); } <n>
%destructor { free($$); } <s>

/* ------------------------------- Precedence ------------------------------- */
%left TREATMENT1 TREATMENT2
%left DIVISION_2 PARTED_DIVISION DIVISION_3 DIVISION_2_3
%left AND

%%

/* -------------------------------------------------------------------------- */
/*                             Grammar Starts Here                            */
/* -------------------------------------------------------------------------- */

/* ----------------------------- Top level node ----------------------------- */
blazon:
    shield { child(xmlRootNode, $1); $$ = xmlRootNode; }
    ;

/*********************************************************************************
 * A shield can consist of a single coat of arms, two coats of arms side by side *
 * or many coats of arms in an arrangement known as quartering. The end of lower *
 * level coats of arms can be marked by a double semi-colon. This is probably no *
 * longer needed but is retained for compatilibity with blazons created for the  *
 * older, top-down version of the DrawShield parser.                             *
 *********************************************************************************/

shield:
    simple { $$ = parent(E_SHIELD, $1, NULL); }
    | simple SEMI { $$ = parent(E_SHIELD, $1, NULL); }
    | simple PAIRED simple { child($2, $1); child($2, $3); $$ = parent(E_SHIELD, $2, NULL); }
    | quartered quarterList { $$ = addList($1, $2); }
    ;

/* ------------------- Basic elements of the simple shield ------------------ */

simple: 
    field objects { $$ = parent(E_SIMPLE, $1, NULL); child($$, $2); }
    | field { $$ = parent(E_SIMPLE, $1, NULL); }
    ;

onfield:
    ON THE FIELD OF { }
    | THE FIELD OF { }
    | THE FIELD { }
    ;

field: 
    tincture { $$ = parent(E_FIELD, $1, NULL); }
    | onfield tincture { $$ = parent(E_FIELD, $2, NULL); }
    ;

objects:
    object { $$ = parent(E_OBJECTS, $1, NULL);}
    | objects object { $$ = child($1, $2); }
    ;

object:
    ordinary { $$ = $1; }
    | charge { $$ = $1; }
    ;

/* ------------------- Marshallings for quartered shields ------------------- */

quartered:
    QUARTERED { $$ = $1; }
    | QUARTERED quarterCount { $$ = attr($1, A_PARAM, $2);  }
    | QUARTERLY { $$ = parent(E_COMPLEX, NULL, "quarterly"); drop($1); }
    | QUARTERLY quarterCount { $$ = parent(E_COMPLEX, NULL, "quarterly");  attr($$, A_PARAM, $2);  drop($1); }
    ;

quarterCount:
    OF number { $$ = $2; }
    | OF number QUARTER  { $$ = $2; }
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
    | quarterNums quarterNum { $$ = child($1, $2); }
    | quarterNums AND quarterNum { $$ = child($1, $3); }
    ;

/* -------------------------------- Tinctures ------------------------------- */

/***************************************************************************************
 * There are 3 main forms of tincture, named colours; treatments (repeating patterns   *
 * of two given tinctures); and furs (repeating patterns with fixed colours). In       *
 * addition, divisions, charges and ordinaries can be "counterchanged", and charges    *
 * (only) can be "proper". Finally, there can be back references to previous tinctures *
 ***************************************************************************************/

tincture:
    COLOUR { $$ = parent(E_TINCTURE, $1, NULL); }
    | treatment { $$ = parent(E_TINCTURE, $1, NULL); }
    | FUR { $$ = parent(E_TINCTURE, $1, NULL); }
    | division tinctureList { addList($1,$2); $$ = parent(E_TINCTURE, $1, NULL); }
    | PROPER { $$ = parent(E_TINCTURE, $1, NULL); }
    | backref { $$ = parent(E_TINCTURE, $1, NULL); }
    ;

/* TODO Note difference organisation of counterchanged division */
tinctureList:
    tincture { attr($1, A_INDEX, "1"); $$ = parent(E_LIST, $1, NULL); tc = 1; }
    | tinctureList tincture { attr($2,A_INDEX,i2a(++tc)); child($1, $2); $$ = $1; }
    | tinctureList AND tincture { attr($3,A_INDEX,i2a(++tc)); child($1, $3); $$ = $1; }
    | tinctureList division2 counterchange { attr($3,A_INDEX,i2a(++tc)); $$ = child($1,child($2,$3)); }
    ;

treat2mod:
    OF number { $$ = newMod(T_NUMMOD, V_OFNUM); attr($$,A_NUMBER,$2); }
    | OF number POINTS { $$ = newMod(T_NUMMOD, V_OFNUM);  attr($$,A_NUMBER,$2); }
    ;

andTincture:
    tincture { $$ = $1; }
    | AND tincture { $$ = $2; }
    ;

treatment:
    TREATMENT2 tincture andTincture { attr($2,A_INDEX,"1"); attr($3,A_INDEX,"2"); $$ = child($1, $2); child($1, $3); }
    | TREATMENT2 treat2mod tincture andTincture { attr($3,A_INDEX,"1"); attr($3,A_INDEX,"2"); 
                                    child($1, $2); child($1, $3); $$ = child($1, $4); }
    | tincture TREATMENT1 { $$ = child($2, $1);}
    | tincture TREATMENT2 tincture { attr($1,A_INDEX,"1"); attr($3,A_INDEX,"2"); 
                                     child($2,$1); $$ = child($2,$3);}
    | tincture TREATMENT2 treat2mod tincture { attr($1,A_INDEX,"1"); attr($4,A_INDEX,"2");  
                                    child($2, $3); child($2,$1); $$ = child($2,$4); }
    ;

ofthe:
    AS THE
    | OF THE
    ;

backref:
    ofthe QUARTERNUM { $$ = parent(E_BACKREF, NULL, $2); }
    | ofthe SAME { $$ = parent(E_BACKREF, NULL, "same"); }
    | ofthe FIELD { $$ = parent(E_BACKREF, NULL, "field"); }
    ;

counterchange:
    COUNTERCHANGED { $$ = parent(E_TINCTURE, $1, NULL); }
    ;

/* --------------------- Divsions and division modifiers -------------------- */

/********************************************************************************
 * Divisions come in three types - those that have 2 tinctures, those that have *
 * 3 tinctures and those that can have either 2 or 3 tinctures. In addition, a  *
 * 2 tincture division can also be "counterchanged", in which case it has no    *
 * tinctures (it takes the "opposite" tinctures of another 2 tincture division  *
 * that is "below" it).                                                         *
 ********************************************************************************/
divmod:
    ORIENTATION { $$ = $1; }
    | LINETYPE  { $$ = $1; }
    | DECORATION  { $$ = $1; }
    | OF number { $$ = newMod(T_NUMMOD, V_OFNUM); attr($$,A_NUMBER,$2);}
    | OF number PIECES { $$ = newMod(T_NUMMOD, V_OFNUM);  attr($$,A_NUMBER,$2); }
    ;

divmods:
    divmod { $$ = parent(E_LIST, $1, NULL); }
    | divmods divmod { $$ = child($1, $2); }
    ;

div2type:
    PARTY DIVISION_2 { $$ = $2; }
    | DIVISION_2 { $$ = $1; }
    | PARTY PARTED_DIVISION { $$ = $2; }
    | QUARTERLY { $$ = $1; }
    ;

div23Type:
    PARTY DIVISION_2_3 { $$ = $2; }
    | DIVISION_2_3 { $$ = $1; }
    ;

division23:
    div23Type { $$ = $1; }
    | div23Type divmods { $$ = addList($1, $2); }
    ;

division2:
    div2type { $$ = $1; }
    | div2type divmods { $$ = addList($1, $2); }
    ;

division3:
    DIVISION_3  { $$ = $1; }
    | DIVISION_3 divmods { $$ = addList($1, $2); }
    ;

division: 
    division2  { $$ = note($1, "minTinc:2, maxTinc:2"); }
    | division3  { $$ = note($1, "minTinc:3, maxTinc:3"); }
    | division23  { $$ = note($1, "minTinc:2, maxTinc:3"); }
    ;

/* ------------------- Oridinaries, prefixes and suffixes ------------------- */

/*********************************************************************************
 * Ordinaries are probably the most complex part of blazonry. They can have both *
 * prefix and suffix modifiers, charges can be placed on or around them and some *
 * have identical names to charges and must be disambiguated through the number. *
 *********************************************************************************/

ordprefix:
    ORIENTATION  { $$ = $1; }
    | CHEVRONMOD { $$ = $1; }
    ;

ordsuffix:
    ordsuffixItem { $$ = $1; }
    | AND ordsuffixItem { $$ = $2; }
    ;

ordsuffixItem:
    ordprefix  { $$ = $1; }
    | ORDMOD  { $$ = $1; }
    | OF number POINTS { $$ = newMod(T_NUMMOD, V_OFNUM);  attr($$,A_NUMBER,$2); }
    | VOIDED { $$ = $1; }
    ;

ordprefixes:
    ordprefix { $$ = parent(E_LIST, $1, NULL); }
    | ordprefixes ordprefix { $$ = child($1, $2); }
    ;

ordsuffixes:
    ordsuffix { $$ = parent(E_LIST, $1, NULL); }
    | ordsuffixes ordsuffix { $$ = child($1, $2); }
    ;    

/******************************************************************************
 * This is the ordinary / charge disambiguation. If there is one item then we *
 * conclude it is an ordinary. (The opposite conclusion is made under the     *
 * charges section). We need to change the returned node type ORD_OR_CHG to   *
 * be a plain ordinary.                                                       *
 ******************************************************************************/

ordType:
    THE ORD_OR_CHG { attr($2,A_NUMBER,"1"); $$ = change($2, E_ORDINARY); }
    | THE ordprefixes ORD_OR_CHG { attr($3,A_NUMBER,"1"); $$ = change($3, E_ORDINARY); addList($$,$2); }
    | number ORDINARY { attr($2,A_NUMBER,$1); $$ = $2; }
    | number ordprefixes ORDINARY { attr($3,A_NUMBER,$1); addList($3,$2); $$ = $3; }
    ; 

simpleOrd:
    ordType tincture { $$ = child($1, $2);  }
    | ordType counterchange { $$ = child($1, $2);  }
    | ordType ordsuffixes tincture { addList($1, $2); $$ = child($1, $3); }
    | ordType ordsuffixes counterchange { addList($1, $2); $$ = child($1, $3); }
    ;

ordinary:
    simpleOrd { $$ = $1; }
    | simpleOrd ORDMODCOL tincture { child($2, $3); $$ = child($1, $2); }
    | simpleOrd VOIDED tincture { child($2, $3); $$ = child($1, $2); }
    ;

/* --------------------------------- Charges -------------------------------- */


chgType:
    number CHARGE { $$ = attr($2,A_NUMBER,$1); }
    | NUMBER ORD_OR_CHG { attr($2,A_NUMBER,$1); $$ = change($2,E_CHARGE); }
    ;

charge:
    chgType tincture { $$ = child($1, $2); }
    ;

/* --------------------------------- Numbers -------------------------------- */

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
