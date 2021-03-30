%%

chevaliers?			|	
knights?{S}mounted		|	
mounted{S}knights?		{ mkNode( E_CHARGE, "human/knight-mounted"); return CHARGE; }
triskes?lions?{S}of{S}arms	{ mkNode( E_CHARGE, "human/triskelion-of-arms"); return CHARGE; }
triskes?lions?{S}of{S}legs{S}(armou?red)? |
triskes?lions?{S}of{S}armou?red{S}legs { mkNode( E_CHARGE, "human/triskelion-of-legs-armored"); return CHARGE; }
archers?			{ mkNode( E_CHARGE, "human/archer"); return CHARGE; }
(t(oo|ee)th|molars?)		{ mkNode( E_CHARGE, "human/molar"); return CHARGE; }
bowm[ae]n			{ mkNode( E_CHARGE, "human/archer"); return CHARGE; }
falconers?			{ mkNode( E_CHARGE, "human/falconer"); return CHARGE; }
wildm[ae]n?			{ mkNode( E_CHARGE, "human/savage"); return CHARGE; }
eyes?				{ mkNode( E_CHARGE, "human/eye"); return CHARGE; }
maidens?			{ mkNode( E_CHARGE, "human/maiden"); return CHARGE; }
(english)?m[ae]ns?		{ mkNode( E_CHARGE, "human/man"); return CHARGE; }
egyptians?			{ mkNode( E_CHARGE, "human/egyptian"); return CHARGE; }
(human|body)?{S}hearts?		{ mkNode( E_CHARGE, "human/heart"); return CHARGE; }
(human)?{S}arms?		{ mkNode( E_CHARGE, "human/arm"); return CHARGE; }
boys?				{ mkNode( E_CHARGE, "human/boy"); return CHARGE; }

(blacka)?moors?			{ mkNode( E_CHARGE, "human/moor"); return CHARGE; }
blacksmiths?			{ mkNode( E_CHARGE, "human/blacksmith"); return CHARGE; }
saracens?			{ mkNode( E_CHARGE, "human/saracen"); return CHARGE; }
(wild|wood|savage){S}m[ae]ns?	|	
savages?			{ mkNode( E_CHARGE, "human/savage"); return CHARGE; }
(sh(in|ank){S})?bones?		{ mkNode( E_CHARGE, "human/bone"); return CHARGE; }
(human{S})?(main|hand)s?	{ mkNode( E_CHARGE, "human/hand"); return CHARGE; }
(human{S})?(main|hand)s?{S}clawed { mkNode( E_CHARGE, "human/hand-clawed"); return CHARGE; }
(human{S})?(main|hand)s?{S}of{S}benediction { mkNode( E_CHARGE, "human/hand-benediction"); return CHARGE; }
(human{S})?(mort|skull)s?	{ mkNode( E_CHARGE, "human/skull"); return CHARGE; }
(human{S})?skeletons?		{ mkNode( E_CHARGE, "human/skeleton"); return CHARGE; }
deaths{S}heads?			{ mkNode( E_CHARGE, "human/skull"); return CHARGE; }
(human{S})?(jambe|gambe|leg)s?	{ mkNode( E_CHARGE, "human/leg"); return CHARGE; }
(human{S})?f(oo|ee)t		{ mkNode( E_CHARGE, "human/foot"); return CHARGE; }
(human{S})?foot{S}?prints?	{ mkNode( E_CHARGE, "human/footprint"); return CHARGE; }
askers?				{ mkNode( E_CHARGE, "human/asker"); return CHARGE; }
locks?{S}of{S}hair		{ mkNode( E_CHARGE, "human/hair"); return CHARGE; }
((hu)?mans?{S})?beards?		{ mkNode( E_CHARGE, "human/beard"); return CHARGE; }
monks?				{ mkNode( E_CHARGE, "human/monk"); return CHARGE; }
fois?				{ mkNode( E_CHARGE, "human/hand-pair-2-clasped"); return CHARGE; }

