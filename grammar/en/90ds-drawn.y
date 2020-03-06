
using:
    WITH { }
    | IN { }
    ;

aspectRatio:
    REALNUM { $$ = $1; }
    | RATIO { $$ = $1; }
    ;

drawnItem:
    using THE WORD PALETTE { $$ = attr($4, A_KEYTERM, $3); } 
    | using WORD PALETTE { $$ = attr($3, A_KEYTERM, $2); }
    | using THE WORD SHAPE { $$ = attr($4, A_KEYTERM, $3); } 
    | using WORD SHAPE { $$ = attr($3, A_KEYTERM, $2); }
    | using THE WORD EFFECT { $$ = attr($4, A_KEYTERM, $3); } 
    | using WORD EFFECT { $$ = attr($3, A_KEYTERM, $2); }
    | using THE aspectRatio ASPECT { $$ = attr($4, A_KEYTERM, $3); }
    | using aspectRatio ASPECT { $$ = attr($3, A_KEYTERM, $2); }
    | using THE ASPECT OF aspectRatio { $$ = attr($3, A_KEYTERM, $5); }
    | using THE ASPECT aspectRatio { $$ = attr($3, A_KEYTERM, $4); }
    ;

drawnItems:
    drawnItem { $$ = parent(E_LIST, $1, NULL); }
    | drawnItems drawnItem { $$ = child($1, $2); }
    | drawnItems AND drawnItem { $$ = child($1, $3); }
    ;

drawn:
    DRAWN drawnItems { $$ = parent(E_INSTRUCTIONS, NULL, NULL); addList($$, $2); }
    | drawnItems { $$ = parent(E_INSTRUCTIONS, NULL, NULL); addList($$, $1); }
    ;
