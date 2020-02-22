
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
