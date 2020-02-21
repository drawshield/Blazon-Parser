%%

 /******************************
  * ORIENTATION
  ******************************/

sinister { mkMod(T_ORIENTATION, "sinister"); return ORIENTATION; }
reversed { mkMod(T_ORIENTATION, "reversed"); return ORIENTATION; }
dexter { mkMod(T_ORIENTATION, "dexter"); return ORIENTATION; }
inverted { mkMod(T_ORIENTATION, "inverted"); return ORIENTATION; }
enhanced { mkMod(T_ORIENTATION, "enhanced"); return ORIENTATION; }
(abased|abaisse) { mkMod(T_ORIENTATION, "abased"); return ORIENTATION; }
  /* Not really, but sort it later TODO */
(debrui|depres|oppres)sed{S}(with|by|of) { mkMod(T_ORIENTATION, "depressed"); return ORIENTATION; }


 /******************************
  * CHEVRON MODS
  ******************************/

(rompu|downset) { mkMod(T_CHEVRONMOD, "rompu"); return CHEVRONMOD; }
removed { mkMod(T_CHEVRONMOD, "removed"); return CHEVRONMOD; }
(debruised|fracted) { mkMod(T_CHEVRONMOD, "fracted"); return CHEVRONMOD; }
(eclate|burst|split) { mkMod(T_CHEVRONMOD, "burst"); return CHEVRONMOD; }
(disjoint|disjointed|brisse) { mkMod(T_CHEVRONMOD, "disjointed"); return CHEVRONMOD; }
false { mkMod(T_CHEVRONMOD, "voided"); return CHEVRONMOD; }

 /******************************
  * ORDINARY MODS
  ******************************/

lozengy {mkMod(T_ORDMOD, "lozengy"); return ORDMOD; }
triangular {mkMod(T_ORDMOD, "triangular"); return ORDMOD; }
throughout {mkMod(T_ORDMOD, "throughout"); return ORDMOD; }
of{S}pretence {mkMod(T_ORDMOD, "of-pretence"); return ORDMOD; }
ploye {mkMod(T_ORDMOD, "ploye"); return ORDMOD; }
closetted {mkMod(T_ORDMOD, "closetted"); return ORDMOD; }
embowed {mkMod(T_ORDMOD, "embowed"); return ORDMOD; }
(nowy{S})?quadrate {mkMod(T_ORDMOD, "quadrate"); return ORDMOD; }
nowy{S}lozengy {mkMod(T_ORDMOD, "nowy-lozengy"); return ORDMOD; }
rivett?ed {mkMod(T_ORDMOD, "riveted"); return ORDMOD; }
[ie]narched {mkMod(T_ORDMOD, "inarched"); return ORDMOD; }
(couped|humetty|alese) {mkMod(T_ORDMOD, "couped"); return ORDMOD; }
(couped|humetty|alese){S}(in{S})?sinister {mkMod(T_ORDMOD, "couped-sinister"); return ORDMOD; }
(couped|humetty|alese){S}(in{S})?dexter {mkMod(T_ORDMOD, "couped-dexter"); return ORDMOD; }
(couped|humetty|alese){S}(in{S})?chief {mkMod(T_ORDMOD, "couped-chief"); return ORDMOD; }
(couped|humetty|alese){S}(in{S})?base {mkMod(T_ORDMOD, "couped-base"); return ORDMOD; }
pointed {mkMod(T_ORDMOD, "pointed"); return ORDMOD; }
fl(o|eu)ry{S}counter{S}fl(o|eu)ry {mkMod(T_ORDMOD, "flory-counter-flory"); return ORDMOD; }
pointed{S}(in{S})?sinister {mkMod(T_ORDMOD, "pointed-sinister"); return ORDMOD; }
pointed{S}(in{S})?dexter {mkMod(T_ORDMOD, "pointed-dexter"); return ORDMOD; }
pointed{S}(in{S})?chief {mkMod(T_ORDMOD, "pointed-chief"); return ORDMOD; }
pointed{S}(in{S})?base {mkMod(T_ORDMOD, "pointed-base"); return ORDMOD; }
(bra[zc]ed|interlaced) {mkMod(T_ORDMOD, "braced"); return ORDMOD; }
(gemm?ell?(s|ed)?) {mkMod(T_ORDMOD, "gemel"); return ORDMOD; }
double{S}dancetty {mkMod(T_ORDMOD, "fracted"); return ORDMOD; }
bott?onn?(ee|y) {mkMod(T_ORDMOD, "botonny"); return ORDMOD; }
engouled{S}((into|by){S})?(dragons?{S})?(heads?)? {mkMod(T_ORDMOD, "engouled"); return ORDMOD; }
en(aluron|urney|toire|toyre) {mkMod(T_ORDMOD, "entire"); return ORDMOD; }

(compony|gobone|gobonated) { mkMod(T_ORDMOD, "compony1"); return ORDMODCOL; }
counter{S}(compony|gobone|gobonated) { mkMod(T_ORDMOD, "compony2"); return ORDMODCOL; }
(fimbriated|edged) { mkMod(T_ORDMOD, "fimbriated"); return ORDMODCOL; }

voided { mkMod(T_ORDMOD, "voided"); return VOIDED; }

  /* how many things */
(piece|part)s? { stash(); return PIECES; }
points? { stash(); return POINTS; }

  /* decorations (DrawShield Extension) */
rivett?ed { mkMod(T_DECORATION, "abased"); return DECORATION; }


