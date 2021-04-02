%%

(in)?escut?cheon{S}(of|[ei]n){S}(pretence|surtout) { mkNode( E_CHARGE, "special/escutcheon"); return ESC_OF_PRETENCE; }
(escut?|so)cheons?				{ mkNode( E_CHARGE, "special/escutcheon"); return ESC_CHARGE; }

(numeral|number|digit|figure)s?({S}?of)?	{ mkNode( E_CHARGE, "characters/digit"); return NUMERAL_CHARGE; }
(letters?|text)				{ mkNode( E_CHARGE, "characters/letter"); return TEXT_CHARGE; }
roman({S}letter)?			{ mkNode( E_CHARGE, "characters/roman"); return LETTER_CHARGE; }
words? 					{ mkNode( E_CHARGE, "characters/word"); return WORD_CHARGE; }
legend					{ mkNode( E_CHARGE, "characters/word"); return LEGEND_CHARGE; }
(monogram|cypher)s? 			{ mkNode( E_CHARGE, "characters/letter"); return LETTER_CHARGE; }
question{S}marks?			{ mkNode( E_CHARGE, "characters/question"); return CHARGE; }

astronomical{S}(character|symbol)s?({S}(of|for))?({S}the)?({S}planet)?	{ mkNode( E_CHARGE, "astronomical/symbol"); return SYM_CHARGE; }
(zodiac|astrologic)(al)?{S}(character|symbol)s?({S}(of|for))?		{ mkNode( E_CHARGE, "zodiac/symbol"); return SYM_CHARGE; }
alchemical{S}(character|symbol)s?({S}(of|for))?({S}the)?({S}element)?	{ mkNode( E_CHARGE, "alchemical/symbol"); return SYM_CHARGE; }
(character|symbol)s?({S}(of|for))?	{ mkNode( E_CHARGE, "symbol/any"); return SYM_CHARGE; }


(wedges?{S}of{S})?cheeses? |
cheese{S}wedges?	{ mkNode( E_CHARGE, "food/cheese-wedge"); return CHARGE; }
wheels?{S}of{S}cheeses?	|
cheese{S}wheels?	{ mkNode( E_CHARGE, "food/cheese-wheel"); return CHARGE; }
loa(f|ves)({S}of{S}bread)? |
breadloa(f|ves)		{ mkNode( E_CHARGE, "food/breadloaf"); return CHARGE; }
cakes?			{ mkNode( E_CHARGE, "food/cake"); return CHARGE; }
slices?{S}of{S}cakes?	|
cake{S}slices?		{ mkNode( E_CHARGE, "food/cake-slice"); return CHARGE; }

(beacon|bale{S}fire)s?	{ mkNode( E_CHARGE, "fire/beacon"); return CHARGE; }
cressets?		{ mkNode( E_CHARGE, "fire/cresset"); return CHARGE; }
(fire{S}?ball|bomb{S}?shell|bombe?)s? |
(hand{S})?grenado?e?s?	{ mkNode( E_CHARGE, "fire/fireball"); return CHARGE; }
(flambeaux?|torche?s?)	|
fire{S}brands?		{ mkNode( E_CHARGE, "fire/torch"); return CHARGE; }
flames?({S}of{S}fire)?	{ mkNode( E_CHARGE, "fire/flames"); return CHARGE; }

