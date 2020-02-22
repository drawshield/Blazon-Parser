

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
    | cottice  { $$ = $1; }
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
    | simpleOrd cottice tincture { child($2, $3); $$ = child($1, $2); }
    | simpleOrd tincture barmodList { addList($1,$3); $$ = child($1,$2); }
    ;

cotticeItem:
    COTTICE { $$ = $1; }
    | WITHIN ONE COTTICE { $$ = $3; free($2); }
    | WITHIN THE COTTICE { $$ = $3; }
    | WITHIN TWO COTTICE { $$ = $3; free($2); }
    | WITHIN THREE COTTICE { $$ = attr ($3, A_KEYTERM, "cottice3"); free($2); }
    | WITHIN FOUR COTTICE { $$ = attr ($3, A_KEYTERM, "cottice2"); free($2); }
    | WITHIN SIX COTTICE { $$ = attr ($3, A_KEYTERM, "cottice3"); free($2); }
    ;

cottice:
    cotticeItem { $$ = $1; }
    | cotticeItem LINETYPE { $$ = child($1, $2); }
    | cotticeItem barmodList { $$ = addList($1, $2); }
    | cotticeItem LINETYPE barmodList { $$ = child($1, $2); addList($2, $3); }
    ;

barmodList:
    BARMOD LINETYPE { child($1,$2); $$ = parent(E_LIST, $1, NULL); }
    | barmodList BARMOD LINETYPE {$$ = child($1,$2); child($2, $3); }
    ;
