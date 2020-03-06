%%

 /******************************
  * FURS
  ******************************/

ermine |  
erminois |
erminites |
pean |
potent |
vair  { mkNode(E_FUR, yytext); return FUR; }
vair{S}[ei]n{S}pale { mkNode(E_FUR, "vair-in-pale"); return FUR; }
vair{S}[ei]n{S}point { mkNode(E_FUR, "vair-en-point"); return FUR; }
ermines { mkNode(E_FUR, "counter-ermine"); return FUR; }
counter{S}ermine { mkNode(E_FUR, "counter-ermine"); return FUR; }
counter{S}vair { mkNode(E_FUR, "counter-vair"); return FUR; }
counter{S}potent { mkNode(E_FUR, "counter-potent"); return FUR; }
potent{S}counter{S}potent { mkNode(E_FUR, "potent-counter-potent"); return FUR; }
tapiss?ee?({S}of)?({S}wheat)? { mkNode(E_FUR, "tapisse"); return FUR; }
 /* Sports pitches are implemented like furs */
soccer { mkNode(E_FUR, "soccer-field"); return FUR; }
(american{S})?football { mkNode(E_FUR, "american-football-field"); return FUR; }
tennis { mkNode(E_FUR, "tennis-court"); return FUR; }
basketball { mkNode(E_FUR, "basket-ball"); return FUR; }
basket{S}ball { mkNode(E_FUR, "basket-ball"); return FUR; }

 /******************************
  * PROPER
  ******************************/
(proper|ppr) { mkNode(E_PROPER, "proper"); return PROPER; }

 /******************************
  * COUNTERCHANGED
  ******************************/
de{S}l\'?un{S}en{S}l\'?autre |
interchanged? |
transmuted |
counter{S}cha[nr]ged? |
countercha[nr]ged? |
countercoloured  { mkNode(E_COUNTERCHANGED, "counterchanged"); return COUNTERCHANGED; }