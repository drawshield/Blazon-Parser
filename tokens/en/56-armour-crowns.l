%%

(royal|monarchs?){S}helm(et)?s?		{ mkNode( E_HELMET, "royal"); return HELMET; }
(peer|lord)s?{S}helm(et)?s?		{ mkNode( E_HELMET, "peer"); return HELMET; }
(knight|baronet)s?{S}helm(et)?s?	{ mkNode( E_HELMET, "baronet"); return HELMET; }
((esquire|gentlem[ea]n)s?{S})?helm(et)?s? { mkNode( E_HELMET, "esquire"); return HELMET; }

(torse|bourlet)s?	{ mkNode( E_CHARGE, "armour/torse"); return TORSE; }

morions?		{ mkNode( E_CHARGE, "armour/morion"); return CHARGE; }
shirts?{S}of{S}mail(le)? | 
mail(le)?{S}shirts?	{ mkNode( E_CHARGE, "armour/mail-shirt"); return CHARGE; }
(cam|avent)ails?	{ mkNode( E_CHARGE, "armour/camail"); return CHARGE; }
steel{S}caps?		|
caps?{S}of{S}steel	{ mkNode( E_CHARGE, "armour/morion"); return CHARGE; }
bas([sc]i)?nets?	{ mkNode( E_CHARGE, "armour/morion"); return CHARGE; }
heaumes?		{ mkNode( E_CHARGE, "armour/helmet-knight"); return CHARGE; }
coif{S}de{S}mailles?	{ mkNode( E_CHARGE, "armour/hood"); return CHARGE; }
burgonett?e?s?		{ mkNode( E_CHARGE, "armour/burgonet"); return CHARGE; }

cou(te|diere)s?		{ mkNode( E_CHARGE, "armour/coute"); return CHARGE; }
garde{S}bras		{ mkNode( E_CHARGE, "armour/coute"); return CHARGE; }
(armour|maill?)ed{S}fists? { mkNode( E_CHARGE, "armour/mailed-fist"); return CHARGE; }
chamfrons?		{ mkNode( E_CHARGE, "armour/chamfron"); return CHARGE; }
(cuirass|breastplat)e?s? { mkNode( E_CHARGE, "armour/cuirass"); return CHARGE; }
cuisses			{ mkNode( E_CHARGE, "armour/cuisses"); return CHARGE; }
epaulieres?		{ mkNode( E_CHARGE, "armour/epaulieres"); return CHARGE; }
genouillieres		{ mkNode( E_CHARGE, "armour/genouillieres"); return CHARGE; }
gorgets?		{ mkNode( E_CHARGE, "armour/gorget"); return CHARGE; }
guiges?			{ mkNode( E_CHARGE, "armour/guige"); return CHARGE; }
ha(u|w)berks?		{ mkNode( E_CHARGE, "armour/hawberk"); return CHARGE; }
gauntlets?		{ mkNode( E_CHARGE, "armour/gauntlet"); return CHARGE; }
(es)?carbuncles?	{ mkNode( E_CHARGE, "armour/carbuncle"); return CHARGE; }
charbocles?		{ mkNode( E_CHARGE, "armour/carbuncle"); return CHARGE; }
(bou?teroll|scabbard)s?	{ mkNode( E_CHARGE, "armour/scabbard"); return CHARGE; }

(open{S})?(crown|coronet)s?	{ mkNode( E_CHARGE, "crown/open-crown"); return CHARGE; /* default crown */ }
antique{S}crowns?		{ mkNode( E_CHARGE, "crown/antique"); return CHARGE; }
triumphal{S}crowns?		{ mkNode( E_CHARGE, "crown/triumphal"); return CHARGE; }
papal{S}crowns?			{ mkNode( E_CHARGE, "crown/papal"); return CHARGE; }
obsidional{S}crowns?		{ mkNode( E_CHARGE, "crown/obsidional"); return CHARGE; }
(astral|celestial){S}(crown|coronet)s?	{ mkNode( E_CHARGE, "crown/astral"); return CHARGE; }
baron(ial|s)?{S}(crown|coronet)s?	{ mkNode( E_CHARGE, "crown/baron"); return CHARGE; }
civil{S}crowns?			{ mkNode( E_CHARGE, "crown/civil"); return CHARGE; }
ducal{S}(crown|coronet)s?	{ mkNode( E_CHARGE, "crown/ducal"); return CHARGE; }
dukes?{S}(crown|coronet)s?	{ mkNode( E_CHARGE, "crown/duke"); return CHARGE; }
earls?{S}(crown|coronet)s?	{ mkNode( E_CHARGE, "crown/earl"); return CHARGE; }
eastern{S}(crown|coronet)s?	{ mkNode( E_CHARGE, "crown/eastern"); return CHARGE; }
imperial{S}crowns?		{ mkNode( E_CHARGE, "crown/imperial"); return CHARGE; }
(crown|coronet)s?{S}of{S}(the{S})?king{S}of{S}arms |
kings?{S}of{S}arms{S}(crown|coronet)s?	{ mkNode( E_CHARGE, "crown/king-of-arms"); return CHARGE; }
marquise?s?{S}(crown|coronet)s?	{ mkNode( E_CHARGE, "crown/marquis"); return CHARGE; }
mural{S}(crown|coronet)s?	{ mkNode( E_CHARGE, "crown/mural"); return CHARGE; }
naval{S}(crown|coronet)s?	{ mkNode( E_CHARGE, "crown/naval"); return CHARGE; }
palisado{S}(crown|coronet)s?	|
(crown|coronet)s?{S}palisados?	{ mkNode( E_CHARGE, "crown/palisado"); return CHARGE; }
(royal|regal){S}crowns?		{ mkNode( E_CHARGE, "crown/royal"); return CHARGE; }
saxon{S}(crown|coronet)s?	{ mkNode( E_CHARGE, "crown/saxon"); return CHARGE; }
vallary?{S}(crown|coronet)s?	|	
(crown|coronet)s?{S}vallary?	{ mkNode( E_CHARGE, "crown/vallary"); return CHARGE; }
viscounts?{S}(crown|coronet)s?	{ mkNode( E_CHARGE, "crown/viscount"); return CHARGE; }

