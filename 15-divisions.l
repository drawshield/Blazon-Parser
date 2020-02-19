%%

 /******************************
  * DIVISIONS
  ******************************/
part(y|ed) { stash(); return PARTY; }

bendwise { mkNode(E_DIVISION, "per-bend"); return PARTED_DIVISION; }
saltirewise { mkNode(E_DIVISION, "per-saltire"); return PARTED_DIVISION; }
chevronwise { mkNode(E_DIVISION, "per-chevron"); return PARTED_DIVISION; }
pilewise { mkNode(E_DIVISION, "per-pile"); return PARTED_DIVISION; }
palewise { mkNode(E_DIVISION, "per-pale"); return PARTED_DIVISION; }
fesse?wise { mkNode(E_DIVISION, "per-fess"); return PARTED_DIVISION; }
pily { mkNode(E_DIVISION, "pily"); return DIVISION_2; }
per{S}cross { mkNode(E_DIVISION, "quarterly"); return DIVISION_2; }
quarterly{S}per{S}fesse? { mkNode(E_DIVISION, "quarterly-per-fess"); return DIVISION_2; }
quarterly{S}per{S}pale { mkNode(E_DIVISION, "quarterly-per-pale"); return DIVISION_2; }
paly{S}bendy { mkNode(E_DIVISION, "paly-bendy"); return DIVISION_2; }
bendy{S}paly { mkNode(E_DIVISION, "paly-bendy"); return DIVISION_2; }
pily{S}bendy { mkNode(E_DIVISION, "pily-bendy"); return DIVISION_2; }
bendy{S}pily { mkNode(E_DIVISION, "pily-bendy"); return DIVISION_2; }
b[ua]rr?(y|uly)({S}sans)?({S}nombre)? { mkNode(E_DIVISION, "barry"); return DIVISION_2; }
paly { mkNode(E_DIVISION, "paly"); return DIVISION_2; }
chape { mkNode(E_DIVISION, "chape"); return DIVISION_2; }
chevronn?(ell)?y { mkNode(E_DIVISION, "chevronny"); return DIVISION_2; }
chausse { mkNode(E_DIVISION, "chausse"); return DIVISION_2; }
quarterly{S}quartered { mkNode(E_DIVISION, "gyronny"); return DIVISION_2; }
(per{S})?g(i|y)ronny { mkNode(E_DIVISION, "gyronny"); return DIVISION_2; }
bendy { mkNode(E_DIVISION, "bendy"); return DIVISION_2; }
per{S}fesse? { mkNode(E_DIVISION, "per-fess"); return DIVISION_2; }
per{S}pale { mkNode(E_DIVISION, "per-pale"); return DIVISION_2; }
per{S}pall { mkNode(E_DIVISION, "per-pall"); return DIVISION_2; }
per{S}pall{S}arrondi { mkNode(E_DIVISION, "per-pall-arrondi"); return DIVISION_2; }
per{S}chevron { mkNode(E_DIVISION, "per-chevron"); return DIVISION_2; }
per{S}bend { mkNode(E_DIVISION, "per-bend"); return DIVISION_2; }
per{S}saltire { mkNode(E_DIVISION, "per-saltire"); return DIVISION_2; }
fusill?y { mkNode(E_DIVISION, "fusily"); return DIVISION_2; }
fusill?y{S}bendy { mkNode(E_DIVISION, "fusily-bendy"); return DIVISION_2; }
fusill?y{S}in{S}bend { mkNode(E_DIVISION, "fusily-bendy"); return DIVISION_2; }
barry{S}bendy({S}lozengy)? { mkNode(E_DIVISION, "barry-bendy"); return DIVISION_2; }
bendy{S}lozengy { mkNode(E_DIVISION, "barry-bendy"); return DIVISION_2; }
barry{S}pily { mkNode(E_DIVISION, "barry-pily"); return DIVISION_2; }
barry{S}indented({S}the)?{S}(one|1){S}in{S}the{S}other { mkNode(E_DIVISION, "barry-indented-oio"); return DIVISION_2; }

per{S}pile { mkNode(E_DIVISION, "per-pile"); return DIVISION_2_3; }

tierced?{S}(in|per){S}pairle { mkNode(E_DIVISION, "per-pall"); return DIVISION_3; }
tierced?{S}(in|per){S}pairle{S}arrondi { mkNode(E_DIVISION, "per-pall-arrondi"); return DIVISION_3; }
tierced?{S}(in|per){S}pale { mkNode(E_DIVISION, "tierced-in-pale"); return DIVISION_3; }
tierced?{S}(in|per){S}fesse? { mkNode(E_DIVISION, "tierced-in-fess"); return DIVISION_3; }
tierced?{S}(in|per){S}bend { mkNode(E_DIVISION, "tierced-in-bend"); return DIVISION_3; }
tierced?{S}(in|per){S}chevron { mkNode(E_DIVISION, "tierced-in-chevron"); return DIVISION_3; }
  
  /* this can also be a used instead of "quartered" so we treat it differently */
quarterly { mkNode(E_DIVISION, "quarterly"); return QUARTERLY; }