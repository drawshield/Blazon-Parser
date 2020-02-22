%%

 /******************************
  * LINETYPES
  ******************************/
indented { mkMod(T_LINETYPE, "indented"); return LINETYPE; }
nebuly { mkMod(T_LINETYPE, "nebuly"); return LINETYPE; }
nowy { mkMod(T_LINETYPE, "nowy"); return LINETYPE; }
plain { mkMod(T_LINETYPE, "plain"); return LINETYPE; }
potenty { mkMod(T_LINETYPE, "potenty"); return LINETYPE; }
raguly { mkMod(T_LINETYPE, "raguly"); return LINETYPE; }
dovetailed { mkMod(T_LINETYPE, "dovetailed"); return LINETYPE; }
engrailed { mkMod(T_LINETYPE, "engrailed"); return LINETYPE; }
escartelly { mkMod(T_LINETYPE, "escartelly"); return LINETYPE; }
erable { mkMod(T_LINETYPE, "erable"); return LINETYPE; }
thorny { mkMod(T_LINETYPE, "thorny"); return LINETYPE; }
ristikoro { mkMod(T_LINETYPE, "ristikoro"); return LINETYPE; }
hakulikoro { mkMod(T_LINETYPE, "hakulikoro"); return LINETYPE; }
vallikoro { mkMod(T_LINETYPE, "vallikoro"); return LINETYPE; }
liljakoro { mkMod(T_LINETYPE, "liljakoro"); return LINETYPE; }
meander(ed|ing)? { mkMod(T_LINETYPE, "meander"); return LINETYPE; }
angled({S}lower)? { mkMod(T_LINETYPE, "angled"); return LINETYPE; }
angled{S}(opposite|upper) { mkMod(T_LINETYPE, "angled-upper"); return LINETYPE; }
(em)?battled{S}ghibell?ine { mkMod(T_LINETYPE, "battled-ghibelline"); return LINETYPE; }
(em)?battled({S}in{S}the{S}form)?({S}of)?{S}mine{S}dumps { mkMod(T_LINETYPE, "battled-mine-dumps"); return LINETYPE; }
(battled|double){S}(e?m?battled|crenn?ell?e?y?) { mkMod(T_LINETYPE, "battled-embattled"); return LINETYPE; }
(em)?battled{S}grady { mkMod(T_LINETYPE, "battled-embattled"); return LINETYPE; }
(em)?battled{S}brett?ess?e?y? { mkMod(T_LINETYPE, "battled-brettesse"); return LINETYPE; }
(e?m?battled|crenn?ell?e?y?){S}counter{S}(e?m?battled|crenn?ell?e?y?) { mkMod(T_LINETYPE, "battled-counter"); return LINETYPE; }
(super{S})?(e?m?battled|crenn?ell?e?y?) { mkMod(T_LINETYPE, "embattled"); return LINETYPE; }
(e?m?battled|crenn?ell?e?y?){S}arrondi { mkMod(T_LINETYPE, "embattled-arrondi"); return LINETYPE; }
invec[kt]ed { mkMod(T_LINETYPE, "invected"); return LINETYPE; }
(en)?arched { mkMod(T_LINETYPE, "arched"); return LINETYPE; }
bevill?ed{S}(opposite|upper) { mkMod(T_LINETYPE, "bevilled-upper"); return LINETYPE; }
bevill?y{S}(opposite|upper) { mkMod(T_LINETYPE, "bevilled-upper"); return LINETYPE; }
bevill?ed({S}lower)? { mkMod(T_LINETYPE, "bevilled"); return LINETYPE; }
bevill?y({S}lower)? { mkMod(T_LINETYPE, "bevilled"); return LINETYPE; }
dau?ncett(e|y){S}fl(o|eu)r(y|etty) { mkMod(T_LINETYPE, "dancetty-floretty"); return LINETYPE; }
dau?ncett(e|y){S}?the{S}peaks{S}?ensigned{S}?with{S}?a{S}fleur-de-lys { mkMod(T_LINETYPE, "dancetty-floretty"); return LINETYPE; }
dau?ncetty { mkMod(T_LINETYPE, "dancetty"); return LINETYPE; }
double{S}(en)?arched { mkMod(T_LINETYPE, "double-arched"); return LINETYPE; }
(en)?arched{S}double { mkMod(T_LINETYPE, "double-arched"); return LINETYPE; }
(rayonated|radiant) { mkMod(T_LINETYPE, "rayonny"); return LINETYPE; }
rayonn(e|y) { mkMod(T_LINETYPE, "rayonny"); return LINETYPE; }
(wavy|undy|serpentine) { mkMod(T_LINETYPE, "wavy"); return LINETYPE; }
(urdy|urde|champaine|champion) { mkMod(T_LINETYPE, "urdy"); return LINETYPE; }
fir{S}twiggy?e?d? { mkMod(T_LINETYPE, "twigged"); return LINETYPE; }
sapinagy { mkMod(T_LINETYPE, "twigged"); return LINETYPE; }
(embattled{S})?cupolae?d { mkMod(T_LINETYPE, "cupolaed"); return LINETYPE; }
(embattled{S})?gable?d?y? { mkMod(T_LINETYPE, "gabled"); return LINETYPE; }
indented{S}pommette?y? { mkMod(T_LINETYPE, "indented-pommetty"); return LINETYPE; }
fir{S}tree{S}topped { mkMod(T_LINETYPE, "fir-tree-topped"); return LINETYPE; }
trefl[ey]{S}counter{S}trefl[ey] { mkMod(T_LINETYPE, "trefle"); return LINETYPE; }