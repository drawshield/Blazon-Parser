%%

(({N}{S})?masted{S})?galleys? |
lymphads?		{ mkNode( E_CHARGE, "ship/galley"); return CHARGE; }
oars?			{ mkNode( E_CHARGE, "ship/oars"); return CHARGE; }
rudders?		{ mkNode( E_CHARGE, "ship/rudder"); return CHARGE; }
ships?{S}wheels?	{ mkNode( E_CHARGE, "ship/ships-wheel"); return CHARGE; }
(({N}{S})?masted{S})?ships?	{ mkNode( E_CHARGE, "ship/ship"); return CHARGE; }
anchors?		{ mkNode( E_CHARGE, "ship/anchor"); return CHARGE; }
caravels?		{ mkNode( E_CHARGE, "ship/caravel"); return CHARGE; }
coracles?		{ mkNode( E_CHARGE, "ship/coracle"); return CHARGE; }
(lighter{S})?boats?	{ mkNode( E_CHARGE, "ship/boat"); return CHARGE; }
fishing{S}boats?	{ mkNode( E_CHARGE, "ship/fishing-boat"); return CHARGE; }

(turbot|sole|flook|flounder|bret|birt|carter)({S}?fish)?e?s? { mkNode( E_CHARGE, "fish/turbot"); return CHARGE; }
cod({S}?fish(es)?)?	{ mkNode( E_CHARGE, "fish/codfish"); return CHARGE; }
fish(es)?		{ mkNode( E_CHARGE, "fish/fish"); return CHARGE; }
(luc(e|y|ie)|ged)s?	{ mkNode( E_CHARGE, "fish/luce"); return CHARGE; }
pikes?			{ mkNode( E_CHARGE, "fish/luce"); return CHARGE; }
barbels?		{ mkNode( E_CHARGE, "fish/barbel"); return CHARGE; }
sharks?			{ mkNode( E_CHARGE, "fish/shark"); return CHARGE; }
eels?			{ mkNode( E_CHARGE, "fish/eel"); return CHARGE; }
herrings?		{ mkNode( E_CHARGE, "fish/herring"); return CHARGE; }
carps?			{ mkNode( E_CHARGE, "fish/carp"); return CHARGE; }
chabots?		{ mkNode( E_CHARGE, "fish/chabot"); return CHARGE; }
goldfishe?s?		{ mkNode( E_CHARGE, "fish/goldfish"); return CHARGE; }
catfishe?s?		{ mkNode( E_CHARGE, "fish/catfish"); return CHARGE; }
(salmon|trout)		{ mkNode( E_CHARGE, "fish/salmon"); return CHARGE; }
(sea{S})?pyes?		{ mkNode( E_CHARGE, "fish/pye"); return CHARGE; } /* as in ABBENDON */
roache?s?		{ mkNode( E_CHARGE, "fish/roach"); return CHARGE; }
whales?			{ mkNode( E_CHARGE, "fish/whale"); return CHARGE; }
killer{S}whales?	{ mkNode( E_CHARGE, "fish/killer-whale"); return CHARGE; }
orcas?			{ mkNode( E_CHARGE, "fish/killer-whale"); return CHARGE; }
dolphins?		{ mkNode( E_CHARGE, "fish/dolphin"); return CHARGE; } 
(zander|walleye)s?	{ mkNode( E_CHARGE, "fish/walleye"); return CHARGE; }


co(ckle|quel)?({S}shells?)? |
e?scallops?({S}shells?)?    |
clams?({S}shells?)?	{ mkNode( E_CHARGE, "sealife/scallop"); return CHARGE; }
whelks?({S}shells?)?	{ mkNode( E_CHARGE, "sealife/whelk"); return CHARGE; }
(lobster|crevice)s?	{ mkNode( E_CHARGE, "sealife/lobster"); return CHARGE; }
shrimps?		{ mkNode( E_CHARGE, "sealife/shrimp"); return CHARGE; }
hippocamp(i|us)		{ mkNode( E_CHARGE, "sealife/sea-horse-natural"); return CHARGE; }
crabs?			{ mkNode( E_CHARGE, "sealife/crab"); return CHARGE; }
tritons?{S}(shell|trumpet)s?	{ mkNode( E_CHARGE, "sealife/triton-trumpet"); return CHARGE; }
seals?			{ mkNode( E_CHARGE, "sealife/seal"); return CHARGE; }
calamarie?s?		{ mkNode( E_CHARGE, "sealife/calamarie"); return CHARGE; }
manatees?		{ mkNode( E_CHARGE, "sealife/manatee"); return CHARGE; }
narwh?als?		{ mkNode( E_CHARGE, "sealife/narwhal"); return CHARGE; }
polypuse?s?		{ mkNode( E_CHARGE, "sealife/polypus"); return CHARGE; }
sea{S}urchins?		{ mkNode( E_CHARGE, "sealife/urchin-sea"); return CHARGE; }
sea{S}tortoises?	{ mkNode( E_CHARGE, "sealife/sea-tortoise"); return CHARGE; }
turtles?		{ mkNode( E_CHARGE, "sealife/turtle"); return CHARGE; }
sword{S}?fish(es)?	{ mkNode( E_CHARGE, "sealife/swordfish"); return CHARGE; }

sea{S}dogs?		{ mkNode( E_CHARGE, "sealife/sea-dog"); return CHARGE; }
lions?{S}poissons?	{ mkNode( E_CHARGE, "sealife/sea-lion"); return CHARGE; }
sea{S}lions?		{ mkNode( E_CHARGE, "sealife/sea-lion"); return CHARGE; }
sea{S}?horses?		{ mkNode( E_CHARGE, "sealife/sea-horse"); return CHARGE; }
sea{S}goats?		{ mkNode( E_CHARGE, "sealife/sea-goat"); return CHARGE; }
sea{S}dragons?		{ mkNode( E_CHARGE, "sealife/sea-dragon"); return CHARGE; }
sea{S}serpents?		{ mkNode( E_CHARGE, "sealife/sea-serpent"); return CHARGE; }
sea{S}?wol(f|ves)	{ mkNode( E_CHARGE, "sealife/sea-wolf"); return CHARGE; }


