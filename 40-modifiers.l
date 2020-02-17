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

  /* how many things */
(piece|part)s? { stash(); return PIECES; }
points? { stash(); return POINTS; }

  /* decorations (DrawShield Extension) */
rivett?ed { mkMod(T_DECORATION, "abased"); return DECORATION; }


