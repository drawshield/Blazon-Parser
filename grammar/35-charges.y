
/* --------------------------------- Charges -------------------------------- */

/*******************************************************************************
 * This is the charge / ordinary disambiguation. If there are more than one we *
 * assume it is a charge and change the name of the element accordingly. (see  *
 * also ordinaries above).                                                     *
 *******************************************************************************/

chgNum:
    number CHARGE { $$ = attr($2,A_NUMBER,$1); }
    | twoOrMore ORD_OR_CHG { attr($2,A_NUMBER,$1); $$ = change($2,E_CHARGE); }
    ;

chgprefixes:
    ARRANGEMENT { $$ = parent(E_LIST, $1, NULL); }
    | chgprefixes ARRANGEMENT { $$ = child($1, $2); }
    | chgprefixes AND ARRANGEMENT { $$ = child($1, $3); }
    ;

charge:
    chgNum tincture { $$ = child($1, $2); }
    | chgprefixes chgNum tincture { addList($2, $1); $$ = child($2, $3); }
    ;
