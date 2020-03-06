%%

 /******************************
  * TREATMENTS
  ******************************/

 /* Treatments that take two tinctures */
ann?ulett?y { mkNode(E_TREATMENT, "annuletty"); return TREATMENT2; }
rou?ndell?y { mkNode(E_TREATMENT, "roundelly"); return TREATMENT2; }
billett?y { mkNode(E_TREATMENT, "billetty"); return TREATMENT2; }
(checky|cheque?y|checkered) { mkNode(E_TREATMENT, "checky"); return TREATMENT2; }
(billett?y{S})?counter{S}billett?y { mkNode(E_TREATMENT, "counter-billetty"); return TREATMENT2; }
crusill?[ye] { mkNode(E_TREATMENT, "crusilly"); return TREATMENT2; }
estoill?[ye] { mkNode(E_TREATMENT, "estoilly"); return TREATMENT2; }
fretty { mkNode(E_TREATMENT, "fretty"); return TREATMENT2; }
(treille|latticed) { mkNode(E_TREATMENT, "latticed"); return TREATMENT2; }
plumetty { mkNode(E_TREATMENT, "plumetty"); return TREATMENT2; }
go?utty?e?e? { mkNode(E_TREATMENT, "goutty"); return TREATMENT2; }
grillage { mkNode(E_TREATMENT, "grillage"); return TREATMENT2; }
honeycombed { mkNode(E_TREATMENT, "honeycombed"); return TREATMENT2; }
ermined { mkNode(E_TREATMENT, "ermined"); return TREATMENT2; }
estencell?y { mkNode(E_TREATMENT, "estencely"); return TREATMENT2; }
(lozengy|masculy) { mkNode(E_TREATMENT, "lozengy"); return TREATMENT2; }
maily { mkNode(E_TREATMENT, "maily"); return TREATMENT2; }
(masonn?ed?|muraille) { mkNode(E_TREATMENT, "masoned"); return TREATMENT2; }
mullett?y { mkNode(E_TREATMENT, "mulletty"); return TREATMENT2; }
pap(e|i)l?lonn?(y|e) { mkNode(E_TREATMENT, "papelonny"); return TREATMENT2; }
platy { mkNode(E_TREATMENT, "platy"); return TREATMENT2; }
scaly { mkNode(E_TREATMENT, "scaly"); return TREATMENT2; }
sem(e|y){S}de{S}l(i|y)s { mkNode(E_TREATMENT, "seme-de-lys"); return TREATMENT2; }
fl(o|eu)ry { mkNode(E_TREATMENT, "seme-de-lys"); return TREATMENT2; }
vair(e|y) { mkNode(E_TREATMENT, "vairy"); return TREATMENT2; }
potent(e|y) { mkNode(E_TREATMENT, "potenty"); return TREATMENT2; }
ai?[qg]ui?lated { mkNode(E_TREATMENT, "aquilated"); return TREATMENT2; }
ferrated { mkNode(E_TREATMENT, "ferrated"); return TREATMENT2; }
verd(e|oy) { mkNode(E_TREATMENT, "verdy"); return TREATMENT2; }
barruly{S}wavy { mkNode(E_TREATMENT, "barruly-wavy"); return TREATMENT2; }
pied({S}at)?({S}random)? { mkNode(E_TREATMENT, "pied"); return TREATMENT2; }
piebald { mkNode(E_TREATMENT, "pied"); return TREATMENT2; }
 /* treatments that follow a single tincture (i.e. of x fixed colour ) */
hurty |
platy |
guzy |
pommy | 
torty { mkNode(E_TREATMENT, yytext); return TREATMENT1; }
bezant(y|e) { mkNode(E_TREATMENT, "bezanty"); return TREATMENT1; }

