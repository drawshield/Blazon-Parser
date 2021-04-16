%%

[0-9]+\.[0-9]+ { stash(); val(yytext); return DECIMAL; }
[0-9]+:[0-9]+ { stash(); val(yytext); return RATIO; }

drawn { stash(); return DRAWN; }
(palette|tinctures|colou?rs) { mkNode( E_PALETTE, NULL); return PALETTE; }
shape { mkNode( E_SHAPE, NULL); return SHAPE; }
(appearance|style|effect) { mkNode( E_EFFECT, NULL); return EFFECT; }
aspect({S}ratio)? { mkNode( E_ASPECT, NULL); return ASPECT; }
proportions? { mkNode( E_ASPECT, NULL); return ASPECT; }
 
