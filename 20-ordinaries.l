%%

 /******************************
  * ORDINARIES
  ******************************/
bars? { mkNode( E_ORDINARY, "bar"); return ORDINARY; }
barrulets? { mkNode( E_ORDINARY, "barrulet"); return ORDINARY; }
crancelin { mkNode( E_ORDINARY, "crancelin"); return ORDINARY; }
bend{S}archy{S}coronett[ey] { mkNode( E_ORDINARY, "crancelin"); return ORDINARY; }
bendlets? { mkNode( E_ORDINARY, "bendlet"); return ORDINARY; }
e?sca[rf]pe?s? { mkNode( E_ORDINARY, "scarpe"); return ORDINARY; }
chevronels? { mkNode( E_ORDINARY, "chevronel"); return ORDINARY; }
couple{S}closes? { mkNode( E_ORDINARY, "couple-close"); return ORDINARY; }
close{S}couples? { mkNode( E_ORDINARY, "couple-close"); return ORDINARY; }
closets? { mkNode( E_ORDINARY, "closet"); return ORDINARY; }
(baston|riband)s? { mkNode( E_ORDINARY, "riband"); return ORDINARY; }
[ie]ndorses? { mkNode( E_ORDINARY, "endorse"); return ORDINARY; }
humets? { mkNode( E_ORDINARY, "humet"); return ORDINARY; }
pall?ets? { mkNode( E_ORDINARY, "palet"); return ORDINARY; }
piles? { mkNode( E_ORDINARY, "pile"); return ORDINARY; }
 /* TODO add Pile of 3 points issuing from the chief as a mod */
mountains? { mkNode( E_ORDINARY, "mountain"); return ORDINARY; }
base { mkNode( E_ORDINARY, "base"); return ORDINARY; }
bends? { mkNode( E_ORDINARY, "bend"); return ORDINARY; }
chief { mkNode( E_ORDINARY, "chief"); return ORDINARY; }
fesse? { mkNode( E_ORDINARY, "fess"); return ORDINARY; }
fesse?{S}between{S}(2|two){S}chevrons? { mkNode( E_ORDINARY, "fess-between-chevrons"); return ORDINARY; }
dance { mkNode( E_ORDINARY, "dance"); return ORDINARY; }
ford { mkNode( E_ORDINARY, "ford"); return ORDINARY; }
gores? { mkNode( E_ORDINARY, "gore"); return ORDINARY; }
gore{S}sinister { mkNode( E_ORDINARY, "gore-sinister"); return ORDINARY; }
sinister{S}gore { mkNode( E_ORDINARY, "gore-sinister"); return ORDINARY; }
pallium { mkNode( E_ORDINARY, "pallium"); return ORDINARY; }
pale { mkNode( E_ORDINARY, "pale"); return ORDINARY; }
point { mkNode( E_ORDINARY, "point"); return ORDINARY; }
plaine?{S}point { mkNode( E_ORDINARY, "base"); return ORDINARY; }
ecclesiastical{S}pale { mkNode( E_ORDINARY, "pale-ecclesiastical"); return ORDINARY; }
canadian{S}pale { mkNode( E_ORDINARY, "pale-canadian"); return ORDINARY; }
quarter { mkNode( E_ORDINARY, "quarter"); return ORDINARY; }
tierce { mkNode( E_ORDINARY, "tierce"); return ORDINARY; }
(gorge|whirlpool|gurges) { mkNode( E_ORDINARY, "gorge"); return ORDINARY; }
grid { mkNode( E_ORDINARY, "grid"); return ORDINARY; }
trimount { mkNode( E_ORDINARY, "trimount"); return ORDINARY; }
moun[td]{S}of{S}(3|three){S}peaks { mkNode( E_ORDINARY, "trimount"); return ORDINARY; }
dexter{S}(bas?ton|battoon|batune)({S}couped)? { mkNode( E_ORDINARY, "baton-dexter"); return ORDINARY; }
(bas?ton|battoon|batune){S}dexter({S}couped)? { mkNode( E_ORDINARY, "baton-dexter"); return ORDINARY; }
(bas?ton|battoon|batune){S}sinister({S}couped)? { mkNode( E_ORDINARY, "baton"); return ORDINARY; }
bordure { mkNode( E_ORDINARY, "bordure"); return ORDINARY; }
cantons? { mkNode( E_ORDINARY, "canton"); return ORDINARY; }
cantells? { mkNode( E_ORDINARY, "cantell"); return ORDINARY; }
square{S}cantons? { mkNode( E_ORDINARY, "square-canton"); return ORDINARY; }
double{S}trea?s?sure { mkNode( E_ORDINARY, "double-tressure"); return ORDINARY; }
fillet { mkNode( E_ORDINARY, "fillet"); return ORDINARY; }
fillet{S}saltire { mkNode( E_ORDINARY, "fillet-saltire"); return ORDINARY; }
flau?nche?s? { mkNode( E_ORDINARY, "flaunch"); return ORDINARY; }
flau?nche?{S}sinister { mkNode( E_ORDINARY, "flaunch-sinister"); return ORDINARY; }
sinister{S}flau?nche? { mkNode( E_ORDINARY, "flaunch-sinister"); return ORDINARY; }
(voider|flank|flanque|flasque)s? { mkNode( E_ORDINARY, "flaunch"); return ORDINARY; }
grafts? { mkNode( E_ORDINARY, "graft"); return ORDINARY; }
gussets? { mkNode( E_ORDINARY, "gusset"); return ORDINARY; }
gyrons? { mkNode( E_ORDINARY, "gyron"); return ORDINARY; }
(based{S})?e?s?quie?r?res? { mkNode( E_ORDINARY, "gyron"); return ORDINARY; }
inescut?cheon { mkNode( E_ORDINARY, "inescutcheon"); return ORDINARY; }
orle { mkNode( E_ORDINARY, "orle"); return ORDINARY; }
pall { mkNode( E_ORDINARY, "pall"); return ORDINARY; }
pale{S}furche { mkNode( E_ORDINARY, "shakefork"); return ORDINARY; }
square{S}flau?nche?s? { mkNode( E_ORDINARY, "square-flaunch"); return ORDINARY; }
square{S}(flanks?|flanques?|flasques?) { mkNode( E_ORDINARY, "square-flaunch"); return ORDINARY; }
(royal{S})?trea?s?sure { mkNode( E_ORDINARY, "tressure"); return ORDINARY; }
lozenge{S}throughout { mkNode( E_ORDINARY, "vetu"); return ORDINARY; }
lozenge{S}in{S}point { mkNode( E_ORDINARY, "vetu"); return ORDINARY; }
vetu { mkNode( E_ORDINARY, "vetu"); return ORDINARY; }
ent[ey]({S}[ie]n)?({S}point)? { mkNode( E_ORDINARY, "enty"); return ORDINARY; }
nordic{S}cross { mkNode( E_ORDINARY, "cross-nordic"); return ORDINARY; }
point({S}in)?{S}(point|pointed|enty) { mkNode( E_ORDINARY, "point-in-point"); return ORDINARY; }
point{S}dexter { mkNode( E_ORDINARY, "point-dexter"); return ORDINARY; }
point{S}sinister { mkNode( E_ORDINARY, "point-sinister"); return ORDINARY; }

salta?ire{S}?double{S}parted{S}(and{S})?fretty { mkNode( E_ORDINARY, "saltire-2fretty" ); return ORDINARY; }
cross{S}(double{S})?parted{S}(and{S})?fretty { mkNode( E_ORDINARY, "cross-2fretty" ); return ORDINARY; }
cross{S}tripartite{S}(and{S})?fretty { mkNode( E_ORDINARY, "cross-3fretty" ); return ORDINARY; }
cross{S}quarter{S}pierced? { mkNode( E_ORDINARY, "cross-pierced" ); return ORDINARY; }
cross{S}quarterpierced? { mkNode( E_ORDINARY, "cross-pierced" ); return ORDINARY; }
fillet{S}cross { mkNode( E_ORDINARY, "fillet-cross" ); return ORDINARY; }
cross{S}fillet { mkNode( E_ORDINARY, "fillet-cross" ); return ORDINARY; }
fret{S}couped { mkNode( E_ORDINARY, "fret-couped" ); return ORDINARY; }

((plain|holy){S})?cross(es)?({S}passant)? { mkNode( E_ORD_OR_CHG, "cross/plain-cross"); return ORD_OR_CHG; }
chevrons? { mkNode( E_ORD_OR_CHG, "geometric/chevron"); return ORD_OR_CHG; }
(shake|hay)forks? { mkNode( E_ORD_OR_CHG, "geometric/shakefork"); return ORD_OR_CHG; }
chevron(el)?s?{S}couched { mkNode( E_ORD_OR_CHG, "geometric/chevron-couched"); return ORD_OR_CHG; }
cross{S}(formee|patt?ee?) { mkNode( E_ORD_OR_CHG, "quadrate/cross-formy"); return ORD_OR_CHG; }
cross{S}(formy|patt?y) { mkNode( E_ORD_OR_CHG, "quadrate/cross-formy"); return ORD_OR_CHG; }
frets? { mkNode( E_ORD_OR_CHG, "geometric/fret"); return ORD_OR_CHG; }
salta?ires? { mkNode( E_ORD_OR_CHG, "saltire"); return ORD_OR_CHG; }