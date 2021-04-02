%%

(file|lam?bel)s? 	{ mkNode( E_CHARGE, "label/label"); return CHARGE; }
annulets? 		{ mkNode( E_CHARGE, "annulet/annulet"); return CHARGE; }
bounding{S}box(es)? 	{ mkNode( E_CHARGE, "geometric/bbox"); return CHARGE; }
(stone{S})?billets?({S}carved)? { mkNode( E_CHARGE, "geometric/billet"); return CHARGE; }
cartouches? 		{ mkNode( E_CHARGE, "geometric/cartouche"); return CHARGE; }
crescents? 		{ mkNode( E_CHARGE, "geometric/crescent"); return CHARGE; }
del(f|ves) 		{ mkNode( E_CHARGE, "geometric/delf"); return CHARGE; }
(steel{S})?(block|gad|cube)s? { mkNode( E_CHARGE, "geometric/delf"); return CHARGE; }
fusils? 		{ mkNode( E_CHARGE, "geometric/fusil"); return CHARGE; }
go?uttes? 		{ mkNode( E_CHARGE, "geometric/goutte"); return CHARGE; }
icicles? 		{ mkNode( E_CHARGE, "geometric/icicle"); return CHARGE; }
lozenges? 		{ mkNode( E_CHARGE, "geometric/lozenge"); return CHARGE; }
mascu?les? 		{ mkNode( E_CHARGE, "geometric/mascle"); return CHARGE; } 
m[ou]ll?ets? 		{ mkNode( E_CHARGE, "mullet/mullet"); return CHARGE; }
astroids? 		{ mkNode( E_CHARGE, "mullet/mullet"); return CHARGE; }
rou?nd(el|le)s? 	{ mkNode( E_CHARGE, "geometric/roundel"); return CHARGE; }
rustres? 		{ mkNode( E_CHARGE, "geometric/rustre"); return CHARGE; }
triangles? 		{ mkNode( E_CHARGE, "geometric/triangle"); return CHARGE; }
squares? 		{ mkNode( E_CHARGE, "geometric/square"); return CHARGE; }
hexagons? 		{ mkNode( E_CHARGE, "geometric/hexagon"); return CHARGE; }
pentagons?		{ mkNode( E_CHARGE, "geometric/pentagon"); return CHARGE; }
penrose{S}triangles? 	{ mkNode( E_CHARGE, "geometric/penrose-triangle"); return CHARGE; }

gastells?		{ mkNode( E_CHARGE, "geometric/torteau?P"); return CHARGE; }
[sc]er[ui]ses?		{ mkNode( E_CHARGE, "geometric/torteau?P"); return CHARGE; }
(tale|beza)nts?		{ mkNode( E_CHARGE, "geometric/bezant?P"); return CHARGE; }
golpes?			{ mkNode( E_CHARGE, "geometric/golpe?P"); return CHARGE; }
wounds?			{ mkNode( E_CHARGE, "geometric/golpe?P"); return CHARGE; }
guzes?			{ mkNode( E_CHARGE, "geometric/guze?P"); return CHARGE; }
hurts?			{ mkNode( E_CHARGE, "geometric/hurt?P"); return CHARGE; }
oranges?		{ mkNode( E_CHARGE, "geometric/orange?P"); return CHARGE; }
pellets?		{ mkNode( E_CHARGE, "geometric/pellet?P"); return CHARGE; }
gunstones?		{ mkNode( E_CHARGE, "geometric/pellet?P"); return CHARGE; }
ogress(es)?		{ mkNode( E_CHARGE, "geometric/pellet?P"); return CHARGE; }
plates?			{ mkNode( E_CHARGE, "geometric/plate?P"); return CHARGE; }
pom[mi]es?		{ mkNode( E_CHARGE, "geometric/pomme?P"); return CHARGE; }
torteaux?		{ mkNode( E_CHARGE, "geometric/torteau?P"); return CHARGE; }

triskeles?		{ mkNode( E_CHARGE, "geometric/triskele"); return CHARGE; }
valknuts?		{ mkNode( E_CHARGE, "geometric/valknut"); return CHARGE; }
octagons?		{ mkNode( E_CHARGE, "geometric/octagon"); return CHARGE; }

knots?			{ mkNode( E_CHARGE, "knot/knot"); return CHARGE; }
bourchier{S}knots?	{ mkNode( E_CHARGE, "knot/bourchier"); return CHARGE; }
harrington{S}knots?	{ mkNode( E_CHARGE, "knot/harrington"); return CHARGE; }
hea?ne?age{S}knots?	{ mkNode( E_CHARGE, "knot/heneage-knot"); return CHARGE; }
ormonde{S}knots?	{ mkNode( E_CHARGE, "knot/ormonde"); return CHARGE; }
stafford{S}knots?	{ mkNode( E_CHARGE, "knot/stafford-knot"); return CHARGE; }
wake{S}knots?		{ mkNode( E_CHARGE, "knot/wake-knot"); return CHARGE; }
cords?			{ mkNode( E_CHARGE, "knot/cord"); return CHARGE; }
celtic{S}knots?		{ mkNode( E_CHARGE, "knot/celtic-knot"); return CHARGE; }
de{S}lacy{S}knots?	{ mkNode( E_CHARGE, "knot/de-lacy-knot"); return CHARGE; }
bowen{S}knots?		{ mkNode( E_CHARGE, "knot/bowen-knot"); return CHARGE; }
lovers?{S}knots?	{ mkNode( E_CHARGE, "knot/lovers-knot"); return CHARGE; }
(trinity|trefoil)?{S}knots? { mkNode( E_CHARGE, "knot/trinity-knot"); return CHARGE; }
triquetras?({S}knots?)?	{ mkNode( E_CHARGE, "knot/trinity-knot"); return CHARGE; }
carolingian{S}(knots?|cross(es)?) { mkNode( E_CHARGE, "knot/carolingian-knot"); return CHARGE; }
quatrefoil?({S}knots?)?	{ mkNode( E_CHARGE, "knot/quatrefoil-knot"); return CHARGE; }

