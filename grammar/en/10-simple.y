
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
