
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
