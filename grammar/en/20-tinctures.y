
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
