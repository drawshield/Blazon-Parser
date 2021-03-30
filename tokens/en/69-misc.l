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


