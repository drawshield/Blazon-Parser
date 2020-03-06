
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