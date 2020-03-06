%%

(file|lam?bel)s? { mkNode( E_CHARGE, "label/label"); return CHARGE; }
annulets? { mkNode( E_CHARGE, "annulet/annulet"); return CHARGE; }
bounding{S}box(es)? { mkNode( E_CHARGE, "geometric/bbox"); return CHARGE; }
(stone{S})?billets?({S}carved)? { mkNode( E_CHARGE, "geometric/billet"); return CHARGE; }
cartouches? { mkNode( E_CHARGE, "geometric/cartouche"); return CHARGE; }
crescents? { mkNode( E_CHARGE, "geometric/crescent"); return CHARGE; }
del(f|ves) { mkNode( E_CHARGE, "geometric/delf"); return CHARGE; }
(steel{S})?(block|gad|cube)s? { mkNode( E_CHARGE, "geometric/delf"); return CHARGE; }
fusils? { mkNode( E_CHARGE, "geometric/fusil"); return CHARGE; }
go?uttes? { mkNode( E_CHARGE, "geometric/goutte"); return CHARGE; }
icicles? { mkNode( E_CHARGE, "geometric/icicle"); return CHARGE; }
locks?{S}of{S}hair { mkNode( E_CHARGE, "geometric/icicle"); return CHARGE; }
lozenges? { mkNode( E_CHARGE, "geometric/lozenge"); return CHARGE; }
mascles? { mkNode( E_CHARGE, "geometric/mascle"); return CHARGE; }
m(o|u)ll?ets? { mkNode( E_CHARGE, "mullet/mullet"); return CHARGE; }
astroids? { mkNode( E_CHARGE, "mullet/mullet"); return CHARGE; }
round(el|le)s? { mkNode( E_CHARGE, "geometric/roundel"); return CHARGE; }
rustres? { mkNode( E_CHARGE, "geometric/rustre"); return CHARGE; }
triangles? { mkNode( E_CHARGE, "geometric/triangle"); return CHARGE; }
squares? { mkNode( E_CHARGE, "geometric/square"); return CHARGE; }
hexagons? { mkNode( E_CHARGE, "geometric/hexagon"); return CHARGE; }
pentagons? { mkNode( E_CHARGE, "geometric/pentagon"); return CHARGE; }
penrose{S}triangles? { mkNode( E_CHARGE, "geometric/penrose-triangle"); return CHARGE; }