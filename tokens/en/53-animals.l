%%

lions? 		{ mkNode( E_CHARGE, "lion/lion"); return CHARGE; }
lioncell?e?s? 	{ mkNode( E_CHARGE, "lion/lion"); return CHARGE; }

tortoises? 	{ mkNode( E_CHARGE, "animal/tortoise"); return CHARGE; }
reindeers? 	{ mkNode( E_CHARGE, "animal/reindeer"); return CHARGE; }
crocodiles? 	{ mkNode( E_CHARGE, "animal/crocodile"); return CHARGE; }
antelopes? 	{ mkNode( E_CHARGE, "animal/antelope"); return CHARGE; }
armadilloe?s? 	{ mkNode( E_CHARGE, "animal/armadillo"); return CHARGE; }
anteaters? 	{ mkNode( E_CHARGE, "animal/anteater"); return CHARGE; }
ant{S}eaters? 	{ mkNode( E_CHARGE, "animal/anteater"); return CHARGE; }
mammoths?	{ mkNode( E_CHARGE, "animal/mammoth"); return CHARGE; }
ibex(es)? 	{ mkNode( E_CHARGE, "animal/antelope"); return CHARGE; }
lynxe?s? 	{ mkNode( E_CHARGE, "animal/lynx"); return CHARGE; }
elephants? 	{ mkNode( E_CHARGE, "animal/elephant"); return CHARGE; }
leopards? 	{ mkNode( E_CHARGE, "animal/leopard"); return CHARGE; }
leopards?{S}heads? { mkNode( E_CHARGE, "animal/leopard-head"); return CHARGE; }
leopards?{S}heads?{S}jessant({S}de)?({S}l[iy]s)? { mkNode( E_CHARGE, "animal/leopard-jessant"); return CHARGE; }
spotted{S}leopards? { mkNode( E_CHARGE, "animal/leopard-natural"); return CHARGE; }
lions?{S}leoparde?s? { mkNode( E_CHARGE, "lion/lion-passant-guardant"); return CHARGE; }
bengal{S}t(i|y)gers? { mkNode( E_CHARGE, "animal/tiger-natural"); return CHARGE; }
(scaly{S})?lizards? { mkNode( E_CHARGE, "animal/lizard"); return CHARGE; }
springboks? 	{ mkNode( E_CHARGE, "animal/springbok"); return CHARGE; }
scorpions? 	{ mkNode( E_CHARGE, "animal/scorpion"); return CHARGE; }
camels? 	{ mkNode( E_CHARGE, "animal/camel"); return CHARGE; }
bisons?		{ mkNode( E_CHARGE, "animal/bison"); return CHARGE; }
frogs? 		{ mkNode( E_CHARGE, "animal/frog"); return CHARGE; }
toads? 		{ mkNode( E_CHARGE, "animal/toad"); return CHARGE; }
apes? 		{ mkNode( E_CHARGE, "animal/monkey"); return CHARGE; }
monk(ey|ie)s? 	{ mkNode( E_CHARGE, "animal/monkey"); return CHARGE; }
kangaroos? 	{ mkNode( E_CHARGE, "animal/kangaroo"); return CHARGE; }
gorillas? 	{ mkNode( E_CHARGE, "animal/gorilla"); return CHARGE; }
rhino(cerose?)?s? { mkNode( E_CHARGE, "animal/rhinoceros"); return CHARGE; }
zebras? 	{ mkNode( E_CHARGE, "animal/zebra"); return CHARGE; }
porcupines? 	{ mkNode( E_CHARGE, "animal/porcupine"); return CHARGE; }
camele?opards? 	{ mkNode( E_CHARGE, "animal/camelopard"); return CHARGE; }

(sanglier|boar|grice)s?	{ mkNode(E_CHARGE, "game/boar"); return CHARGE; }
(roe)?bucks?	{ mkNode(E_CHARGE, "game/buck"); return CHARGE; }
fawns?		{ mkNode(E_CHARGE, "game/fawn"); return CHARGE; }
deers?		{ mkNode(E_CHARGE, "game/deer"); return CHARGE; }
hinds?		{ mkNode(E_CHARGE, "game/hind"); return CHARGE; }
(rabbit|con(ey|ie))s? { mkNode(E_CHARGE, "game/rabbit"); return CHARGE; }
(hare|leveret)s? { mkNode(E_CHARGE, "game/hare"); return CHARGE; }
harts?		{ mkNode(E_CHARGE, "game/stag"); return CHARGE; }
does?		{ mkNode(E_CHARGE, "game/doe"); return CHARGE; }
antlers?	|	
stags?{S}horns?	{ mkNode(E_CHARGE, "game/stag-horn"); return CHARGE; }
stags?		{ mkNode(E_CHARGE, "game/stag"); return CHARGE; }
elks?		{ mkNode(E_CHARGE, "game/elk"); return CHARGE; }

(asse?|mule)s?	{ mkNode(E_CHARGE, "livestock/ass"); return CHARGE; }
cows?		{ mkNode(E_CHARGE, "livestock/cow"); return CHARGE; }
pigs?		{ mkNode(E_CHARGE, "livestock/pig"); return CHARGE; }
cal(f|ves)	{ mkNode(E_CHARGE, "livestock/calf"); return CHARGE; }
goats?		{ mkNode(E_CHARGE, "livestock/goat"); return CHARGE; }
ox(en)?		{ mkNode(E_CHARGE, "livestock/ox"); return CHARGE; }
rams?		{ mkNode(E_CHARGE, "livestock/ram"); return CHARGE; }
rams?{S}horns?	{ mkNode(E_CHARGE, "livestock/rams-horn"); return CHARGE; }
lambs?		{ mkNode(E_CHARGE, "livestock/lamb"); return CHARGE; }
sheep?		{ mkNode(E_CHARGE, "livestock/sheep"); return CHARGE; }
bulls?		{ mkNode(E_CHARGE, "livestock/bull"); return CHARGE; }
apree?s?	{ mkNode(E_CHARGE, "livestock/ox"); return CHARGE; }
(nag|horse)s?	{ mkNode(E_CHARGE, "livestock/horse"); return CHARGE; }
hens?		{ mkNode(E_CHARGE, "livestock/hen"); return CHARGE; }
(dunghill{S}|moor|heath|game)?cocks?	{ mkNode(E_CHARGE, "livestock/cock"); return CHARGE; /* XXX 'moorcock' shadows bird/moorcock */ }
testicules?	{ mkNode(E_CHARGE, "livestock/testicules"); return CHARGE; }
turkeycocks?	{ mkNode(E_CHARGE, "livestock/turkeycock"); return CHARGE; }
eggs?		{ mkNode(E_CHARGE, "livestock/egg"); return CHARGE; }

greyhounds?	{ mkNode(E_CHARGE, "dog/greyhound"); return CHARGE; }
talbots?	{ mkNode(E_CHARGE, "dog/talbot"); return CHARGE; }
hounds?		{ mkNode(E_CHARGE, "dog/hound"); return CHARGE; }
dogs?		{ mkNode(E_CHARGE, "dog/dog"); return CHARGE; }
alan[dt]s	{ mkNode(E_CHARGE, "dog/mastiff"); return CHARGE; }

(badger|brock|gray)s?	{ mkNode(E_CHARGE, "wildlife/badger"); return CHARGE; }
cats?{S}a{S}mountains?  |	
catamounts?		|	
wildcats?		|	
mountain{S}cats?	{ mkNode(E_CHARGE, "wildlife/wildcat"); return CHARGE; }
cats?			{ mkNode(E_CHARGE, "wildlife/cat"); return CHARGE; }
foxe?s?			{ mkNode(E_CHARGE, "wildlife/fox"); return CHARGE; } 
(hedgehog|urcheon|urchin)s? { mkNode(E_CHARGE, "wildlife/hedgehog"); return CHARGE; }
(weasel|mart[ie]n|foine|stoat|ermine|genet)s? { mkNode(E_CHARGE, "wildlife/weasel"); return CHARGE; }
squirrels?		{ mkNode(E_CHARGE, "wildlife/squirrel"); return CHARGE; }
wol(f|ve)s?		{ mkNode(E_CHARGE, "wildlife/wolf"); return CHARGE; }
moles?			{ mkNode(E_CHARGE, "wildlife/mole"); return CHARGE; }
m(ouse|ice)		{ mkNode(E_CHARGE, "wildlife/mouse"); return CHARGE; }
rats?			{ mkNode(E_CHARGE, "wildlife/rat"); return CHARGE; }
beavers?		{ mkNode(E_CHARGE, "wildlife/beaver"); return CHARGE; }
bears?			{ mkNode(E_CHARGE, "bear/bear"); return CHARGE; }
(polar|ice){S}bears?	{ mkNode(E_CHARGE, "bear/polar-bear"); return CHARGE; }
mol(diwarp|e)s?		{ mkNode(E_CHARGE, "wildlife/mole"); return CHARGE; }
bears?{S}and{S}ragged{S}sta(ff|ve)s? { mkNode(E_CHARGE, "bear/bear-ragged-staff"); return CHARGE; }
otters?			{ mkNode(E_CHARGE, "wildlife/otter"); return CHARGE; }

dinosaurs?		{ mkNode(E_CHARGE, "animal/dinosaur"); return CHARGE; }
paws?({S}prints?)?	{ mkNode(E_CHARGE, "animal/paw-print"); return CHARGE; }
(asp|serpent)s?		{ mkNode(E_CHARGE, "serpent/serpent"); return CHARGE; }
snakes?			{ mkNode(E_CHARGE, "serpent/snake"); return CHARGE; }
p[iy]thons?		{ mkNode(E_CHARGE, "serpent/pithon"); return CHARGE; }
bisciones?		{ mkNode(E_CHARGE, "serpent/serpent-vorant-a-child"); return CHARGE; }

((magellan|barnacle){S})?g(oo|ee)se { mkNode(E_CHARGE, "bird/goose"); return CHARGE; }
(white{S})?(smew|nun)s?	{ mkNode(E_CHARGE, "bird/smew"); return CHARGE; }
sheldrakes?		{ mkNode(E_CHARGE, "bird/sheldrake"); return CHARGE; }
shovell?ers?		{ mkNode(E_CHARGE, "bird/shoveller"); return CHARGE; }
cygnets?		{ mkNode(E_CHARGE, "bird/cygnet"); return CHARGE; }
herons?			{ mkNode(E_CHARGE, "bird/crane"); return CHARGE; }
swans?			{ mkNode(E_CHARGE, "bird/swan"); return CHARGE; }
ducks?			{ mkNode(E_CHARGE, "bird/duck"); return CHARGE; }


(all?erion|erne|eaglet)?s?	{ mkNode(E_CHARGE, "hawking/alerion"); return CHARGE; }
(marlion|falcon|hawk|goshawk)s?	{ mkNode(E_CHARGE, "hawking/falcon"); return CHARGE; }
sparrow{S}hawks?	{ mkNode(E_CHARGE, "hawking/falcon"); return CHARGE; }
imperial{S}eagles?	{ mkNode(E_CHARGE, "hawking/imperial-eagle"); return CHARGE; }
eagles?			{ mkNode(E_CHARGE, "hawking/eagle"); return CHARGE; }
(hawks?{S}lures?)	{ mkNode(E_CHARGE, "hawking/hawk-lure"); return CHARGE; }
hawk(s|{S})?bells?	{ mkNode(E_CHARGE, "hawking/hawkbell"); return CHARGE; }

bitterns?		{ mkNode(E_CHARGE, "seabird/bittern"); return CHARGE; }
(sea{S})(cormorant|aylet|gannapie)s?	|	
liver{S}birds?		{ mkNode(E_CHARGE, "seabird/cormorant"); return CHARGE; }
(sea|tern){S}?(mew|gull|fowl|pewit)s?	|	
gulls?			{ mkNode(E_CHARGE, "seabird/seagull"); return CHARGE; }
penguins?		{ mkNode(E_CHARGE, "seabird/penguin"); return CHARGE; }

(birds{S})?nests?	{ mkNode(E_CHARGE, "bird/bird-nest"); return CHARGE; }
wings?			{ mkNode(E_CHARGE, "bird/wing"); return CHARGE; }
vols?			{ mkNode(E_CHARGE, "bird/wing-pair-2"); return CHARGE; }
feathers?		{ mkNode(E_CHARGE, "bird/feather"); return CHARGE; }
starlings?		{ mkNode(E_CHARGE, "bird/starling"); return CHARGE; }
(sky)?larks?		{ mkNode(E_CHARGE, "bird/lark"); return CHARGE; }
quails?			{ mkNode(E_CHARGE, "bird/quail"); return CHARGE; }
(rere|flitter){S}?(mouse|mice) |	
bats?			{ mkNode(E_CHARGE, "bird/bat"); return CHARGE; }
(great{S})?auks?	{ mkNode(E_CHARGE, "bird/auk"); return CHARGE; }
robins?({S}redbreasts?)? { mkNode(E_CHARGE, "bird/robin"); return CHARGE; }
owls?			{ mkNode(E_CHARGE, "bird/owl"); return CHARGE; }
vultures?		{ mkNode(E_CHARGE, "bird/vulture"); return CHARGE; }
(cornish{S})?choughs?	{ mkNode(E_CHARGE, "bird/chough"); return CHARGE; }
sea{S}swallows?		{ mkNode(E_CHARGE, "bird/chough"); return CHARGE; }
swallows?		{ mkNode(E_CHARGE, "bird/swallow"); return CHARGE; }
cranes?			{ mkNode(E_CHARGE, "bird/crane"); return CHARGE; }
(crow|corbie|daw|rook)s? { mkNode(E_CHARGE, "bird/crow"); return CHARGE; }
ravens?			{ mkNode(E_CHARGE, "bird/raven"); return CHARGE; }
(colomb|dove)s? 	|	
stock{S}doves?		{ mkNode(E_CHARGE, "bird/dove"); return CHARGE; }
moorcocks?		{ mkNode(E_CHARGE, "bird/moorcock"); return CHARGE; /* XXX shadowed by livestock/cock */ }

m[ea]rtlett?e?s?	|	
merlions?		{ mkNode(E_CHARGE, "bird/martlett"); return CHARGE; }
(peacock|pawne)s?	{ mkNode(E_CHARGE, "bird/peacock"); return CHARGE; }
pelicans?		{ mkNode(E_CHARGE, "bird/pelican"); return CHARGE; }
(papegay|popp?injay)s?	{ mkNode(E_CHARGE, "bird/popinjay"); return CHARGE; }
ostriche?s?		{ mkNode(E_CHARGE, "bird/ostrich"); return CHARGE; }
ostriche?s?{S}feathers?({S}in)?({S}plume)?({S}issuant)?	{ mkNode(E_CHARGE, "bird/ostrich-feather"); return CHARGE; }
swallows?		{ mkNode(E_CHARGE, "bird/swallow"); return CHARGE; }
storks?			{ mkNode(E_CHARGE, "bird/stork"); return CHARGE; }
rocs?			{ mkNode(E_CHARGE, "bird/roc"); return CHARGE; }
parrots?		{ mkNode(E_CHARGE, "bird/parrot"); return CHARGE; }
nightingales?		{ mkNode(E_CHARGE, "bird/nightingale"); return CHARGE; }
magpies?		{ mkNode(E_CHARGE, "bird/magpie"); return CHARGE; }
(chaffinche?|pinson)s?	{ mkNode(E_CHARGE, "bird/chaffinch"); return CHARGE; }
bull?finche?s?		{ mkNode(E_CHARGE, "bird/bullfinch"); return CHARGE; }
(black{S}?)?birds?	{ mkNode(E_CHARGE, "bird/blackbird"); return CHARGE; }
(snipe|curlew|avocetta)s? { mkNode(E_CHARGE, "bird/snipe"); return CHARGE; }


