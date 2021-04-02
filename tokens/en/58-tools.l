%%

barnacles?		{ mkNode( E_CHARGE, "tools/barnacle"); return CHARGE; }
br[ae]ys?		{ mkNode( E_CHARGE, "tools/brey"); return CHARGE; }
(fetter|pad)locks?	{ mkNode( E_CHARGE, "tools/padlock"); return CHARGE; }
(flea?g?me?|lancet)s?	{ mkNode( E_CHARGE, "tools/fleam"); return CHARGE; }
(hammer|martell)s?	{ mkNode( E_CHARGE, "tools/hammer"); return CHARGE; }
(set|carpenter|joiner|mason)s?{S}squares? { mkNode( E_CHARGE, "tools/set-square"); return CHARGE; }
(spade|shovel)s?({S}irons?)?	{ mkNode( E_CHARGE, "tools/spade"); return CHARGE; }
digging{S}(iron|spade|shovel)s?	{ mkNode( E_CHARGE, "tools/spade"); return CHARGE; }
(hand{S})?barrows?	{ mkNode( E_CHARGE, "tools/barrow"); return CHARGE; }
(scaling{S})?ladders?	{ mkNode( E_CHARGE, "tools/ladder"); return CHARGE; }
(sets?{S})?(of{S})?(balanc|scal)es? { mkNode( E_CHARGE, "tools/scales"); return CHARGE; }
(smiths{S})?anvils?	{ mkNode( E_CHARGE, "tools/anvil"); return CHARGE; }
mariners?{S}compass(es)? { mkNode( E_CHARGE, "tools/mariners-compass"); return CHARGE; }
(tailors{S})?bodkins?	{ mkNode( E_CHARGE, "tools/bodkin"); return CHARGE; }
(wood{S})?bills?	{ mkNode( E_CHARGE, "tools/billhook"); return CHARGE; }
angles			{ mkNode( E_CHARGE, "tools/angles"); return CHARGE; }
calipers		{ mkNode( E_CHARGE, "tools/calipers"); return CHARGE; }
astrolabes?		{ mkNode( E_CHARGE, "tools/astrolabe"); return CHARGE; }
awls?			{ mkNode( E_CHARGE, "tools/awl"); return CHARGE; }
hoes?			{ mkNode( E_CHARGE, "tools/hoe"); return CHARGE; }
bills?({S}?hooks?)?	{ mkNode( E_CHARGE, "tools/billhook"); return CHARGE; }
brackets?		{ mkNode( E_CHARGE, "tools/bracket"); return CHARGE; }
cables?			{ mkNode( E_CHARGE, "tools/cable"); return CHARGE; }
chains?			{ mkNode( E_CHARGE, "tools/chain"); return CHARGE; }
rakes?			{ mkNode( E_CHARGE, "tools/rake"); return CHARGE; }
compass(es)?		{ mkNode( E_CHARGE, "tools/compass"); return CHARGE; }
flax{S}breakers?	{ mkNode( E_CHARGE, "tools/hempbrake"); return CHARGE; }
flails?			{ mkNode( E_CHARGE, "tools/flail"); return CHARGE; }
flo(at|te)s?		{ mkNode( E_CHARGE, "tools/float"); return CHARGE; }
forge{S}hammers?	{ mkNode( E_CHARGE, "tools/forge-hammer"); return CHARGE; }
sledge{S}?hammers?	{ mkNode( E_CHARGE, "tools/sledge-hammer"); return CHARGE; }
grappling{S}irons?	{ mkNode( E_CHARGE, "tools/grappling-iron"); return CHARGE; }
hemp{S}?(break|brac?ke)s? |
hackles?		{ mkNode( E_CHARGE, "tools/hempbrake"); return CHARGE; }
keys?			{ mkNode( E_CHARGE, "tools/key"); return CHARGE; }
staples?		{ mkNode( E_CHARGE, "tools/staple"); return CHARGE; }
mallets?		{ mkNode( E_CHARGE, "tools/mallet"); return CHARGE; }
(fers?{S}de|ink){S}molines? |
mill{S}?(rind|iron)s?	{ mkNode( E_CHARGE, "tools/millrind"); return CHARGE; }
nails?			{ mkNode( E_CHARGE, "tools/nail"); return CHARGE; }
scythes?		{ mkNode( E_CHARGE, "tools/scythe"); return CHARGE; }
mattocks?		{ mkNode( E_CHARGE, "tools/mattock"); return CHARGE; }
shac?k(le)?{S}?bolts?	{ mkNode( E_CHARGE, "tools/shacklebolt"); return CHARGE; }
soldering{S}irons?	{ mkNode( E_CHARGE, "tools/soldering-iron"); return CHARGE; }
stone{S}bills?		{ mkNode( E_CHARGE, "tools/wedge"); return CHARGE; }
wedges?			{ mkNode( E_CHARGE, "tools/wedge"); return CHARGE; }
woodbills?		{ mkNode( E_CHARGE, "tools/billhook"); return CHARGE; }
cramp(oon|{S}?iron)?s?	{ mkNode( E_CHARGE, "tools/cramp"); return CHARGE; }
wolf{S}?irons?		{ mkNode( E_CHARGE, "tools/wolfiron"); return CHARGE; }
plum(met|bob)s?		{ mkNode( E_CHARGE, "tools/plummet"); return CHARGE; }
trestles?		{ mkNode( E_CHARGE, "tools/trestle"); return CHARGE; }

shepherds{S}crooks?	{ mkNode( E_CHARGE, "farming/shepherds-crook"); return CHARGE; }
crooks?{S}of{S}basel	{ mkNode( E_CHARGE, "farming/crook-basel"); return CHARGE; }
windmills?		{ mkNode( E_CHARGE, "farming/windmill"); return CHARGE; }
eel{S}baskets?		{ mkNode( E_CHARGE, "farming/eel-basket"); return CHARGE; }
wine{S}press(es)?	{ mkNode( E_CHARGE, "farming/wine-press"); return CHARGE; }
wool{S}cards?		{ mkNode( E_CHARGE, "farming/woolcard"); return CHARGE; }
garbs?			{ mkNode( E_CHARGE, "farming/corn-sheaf"); return CHARGE; }
mill{S}?stones?		{ mkNode( E_CHARGE, "farming/millstone"); return CHARGE; }
corn			{ mkNode( E_CHARGE, "farming/corn"); return CHARGE; }
wagons?			{ mkNode( E_CHARGE, "farming/wagon"); return CHARGE; }
shea(f|ves){S}of{S}(wheat|corn) |
(wheat|corn){S}?shea(f|ves) { mkNode( E_CHARGE, "farming/corn-sheaf"); return CHARGE; }
oat{S}?shea(f|ves)	{ mkNode( E_CHARGE, "farming/oat-sheaf"); return CHARGE; }
winnowing{S}fans?	{ mkNode( E_CHARGE, "farming/fan-winnowing"); return CHARGE; }
scruttles?		{ mkNode( E_CHARGE, "farming/fan-winnowing"); return CHARGE; }
((wagon|cart){S})?wheels?({S}of{S}{N}{S}spokes)? |
spoked{S}wheels?	{ mkNode( E_CHARGE, "farming/spoked-wheel"); return CHARGE; }
beehives?		{ mkNode( E_CHARGE, "farming/beehive"); return CHARGE; }
shredding{S}kni[fv]es?	{ mkNode( E_CHARGE, "farming/shredding-knife"); return CHARGE; }
plo(ugh|w)s?		{ mkNode( E_CHARGE, "farming/plough"); return CHARGE; }
plo(ugh|w){S}?shares?	{ mkNode( E_CHARGE, "farming/ploughshare"); return CHARGE; }
wicker{S}fences?	{ mkNode( E_CHARGE, "farming/wicker-fence"); return CHARGE; }
fish{S}?hooks?		{ mkNode( E_CHARGE, "farming/fishhook"); return CHARGE; }
harrows?		{ mkNode( E_CHARGE, "farming/harrow"); return CHARGE; }
sickles?		{ mkNode( E_CHARGE, "farming/sickle"); return CHARGE; }

spindles?({S}of{S}silk)? { mkNode( E_CHARGE, "crafts/spindle"); return CHARGE; }
ribbons?		{ mkNode( E_CHARGE, "crafts/ribbon"); return CHARGE; }
thimbles?		{ mkNode( E_CHARGE, "crafts/thimble"); return CHARGE; }
scissors		{ mkNode( E_CHARGE, "crafts/scissors"); return CHARGE; }
shears			{ mkNode( E_CHARGE, "crafts/shears"); return CHARGE; }
(balls?{S}of{S})?yarn	{ mkNode( E_CHARGE, "crafts/yarn-ball"); return CHARGE; }
yarn{S}balls?		{ mkNode( E_CHARGE, "crafts/yarn-ball"); return CHARGE; }
needles?		{ mkNode( E_CHARGE, "crafts/needle"); return CHARGE; }
threaded{S}needles?	{ mkNode( E_CHARGE, "crafts/needle-threaded"); return CHARGE; }
needles?{S}threaded 	{ mkNode( E_CHARGE, "crafts/needle-threaded"); return CHARGE; }
(weavers?{S})?shuttles?	{ mkNode( E_CHARGE, "crafts/shuttle"); return CHARGE; }
artists{S}brush(es)?	{ mkNode( E_CHARGE, "crafts/artists-brush"); return CHARGE; }
embroiderers?{S}broach(es)? { mkNode( E_CHARGE, "crafts/embroiderers-broach"); return CHARGE; }
quills?({S}pens?)?	{ mkNode( E_CHARGE, "crafts/quill-pen"); return CHARGE; }
spools?({S}of{S}threads?)? |
thread{S}spools?	{ mkNode( E_CHARGE, "crafts/thread-spool"); return CHARGE; }
barbers?{S}poles?	{ mkNode( E_CHARGE, "crafts/barber-pole"); return CHARGE; }

bungs?({S}of{S}a{S}tun)? { mkNode( E_CHARGE, "household/bung"); return CHARGE; }
fire{S}?steels?		{ mkNode( E_CHARGE, "household/fire-steel"); return CHARGE; }
furisons?		{ mkNode( E_CHARGE, "household/fire-steel"); return CHARGE; }
spits?{S}of{S}meat	{ mkNode( E_CHARGE, "household/meat-spit"); return CHARGE; }
meat{S}spits?		{ mkNode( E_CHARGE, "household/meat-spit"); return CHARGE; }
playing{S}tops?		{ mkNode( E_CHARGE, "household/tops"); return CHARGE; }
(arabian{S})?lamps?	{ mkNode( E_CHARGE, "household/lamp"); return CHARGE; }
flasks?			{ mkNode( E_CHARGE, "household/flask"); return CHARGE; }
(bucket|pail)s?		{ mkNode( E_CHARGE, "household/bucket"); return CHARGE; }
cups?{S}of{S}acorns	{ mkNode( E_CHARGE, "household/cup-of-acorns"); return CHARGE; }
hour{S}?glass(es)?	{ mkNode( E_CHARGE, "household/hourglass"); return CHARGE; }
crutch(es)?		{ mkNode( E_CHARGE, "household/crutch"); return CHARGE; }
books?			{ mkNode( E_CHARGE, "household/book"); return CHARGE; }
shel(f|ves){S}of{S}books? |
book{S}?shel(f|ves)	{ mkNode( E_CHARGE, "household/book-shelf"); return CHARGE; }
abac(i|us|uses)		{ mkNode( E_CHARGE, "household/abacus"); return CHARGE; }
combs?			{ mkNode( E_CHARGE, "household/comb"); return CHARGE; }
writing{S}pens?		{ mkNode( E_CHARGE, "household/pen"); return CHARGE; }
pestles?{S}(and{S})?mortars? { mkNode( E_CHARGE, "household/mortar-pestle"); return CHARGE; }
mortars?{S}(and{S})?pestles? { mkNode( E_CHARGE, "household/mortar-pestle"); return CHARGE; }
(hogshead|barrel|tub|tun)s?  { mkNode( E_CHARGE, "household/barrel"); return CHARGE; }
ladies{S}fans?		{ mkNode( E_CHARGE, "household/fan-ladies"); return CHARGE; }
terrestrial{S}(globe|sphere)s? { mkNode( E_CHARGE, "household/globe"); return CHARGE; }
salt{S}?cellars?	{ mkNode( E_CHARGE, "household/saltcellar"); return CHARGE; }
candle{S}?sticks?	{ mkNode( E_CHARGE, "household/candlestick"); return CHARGE; }
candles?		{ mkNode( E_CHARGE, "household/candle"); return CHARGE; }
e?scrolls?		{ mkNode( E_CHARGE, "household/scroll"); return CHARGE; }
(vase|urn)s?		{ mkNode( E_CHARGE, "household/urn"); return CHARGE; }
amphora(e|s)?		{ mkNode( E_CHARGE, "household/amphora"); return CHARGE; }
leather{S}bottles?	{ mkNode( E_CHARGE, "household/bottle-leather"); return CHARGE; }
rubber{S}ducks?		{ mkNode( E_CHARGE, "household/rubber-duck"); return CHARGE; }
butter{S}churns?	{ mkNode( E_CHARGE, "farming/butter-churn"); return CHARGE; }
fleeces?		{ mkNode( E_CHARGE, "farming/fleece"); return CHARGE; }
golden{S}fleeces?	{ mkNode( E_CHARGE, "farming/fleece?P"); return CHARGE; }
bellows?		{ mkNode( E_CHARGE, "household/bellows"); return CHARGE; }
armill?ary{S}spheres?	{ mkNode( E_CHARGE, "household/armillary-sphere"); return CHARGE; }

(water{S})?b(ou|ed)gets? |
dossers?		{ mkNode( E_CHARGE, "utensil/water-bouget"); return CHARGE; }
flesh{S}?pots?		{ mkNode( E_CHARGE, "utensil/fleshpot"); return CHARGE; }
(round{S})?trivets?	{ mkNode( E_CHARGE, "utensil/trivet"); return CHARGE; }
triangular{S}trivets?	{ mkNode( E_CHARGE, "utensil/triangular-trivet"); return CHARGE; }
cauldrons?		{ mkNode( E_CHARGE, "utensil/cauldron"); return CHARGE; }
chargers?		{ mkNode( E_CHARGE, "utensil/charger"); return CHARGE; }
(drinking|college|lily){S}(pot|cup)s? | 
chalices?		{ mkNode( E_CHARGE, "utensil/chalice"); return CHARGE; }
ladles?			{ mkNode( E_CHARGE, "utensil/ladle"); return CHARGE; }
covers?{S}for{S}(a{S})?(pot|cup)s? |
(pot|cup){S}covers?	{ mkNode( E_CHARGE, "utensil/cup-covered"); return CHARGE; }
mugs?			{ mkNode( E_CHARGE, "utensil/mug"); return CHARGE; }
cups?			{ mkNode( E_CHARGE, "utensil/cup"); return CHARGE; }
goblets?		{ mkNode( E_CHARGE, "utensil/goblet"); return CHARGE; }
forks?			{ mkNode( E_CHARGE, "utensil/fork"); return CHARGE; }
spoons?			{ mkNode( E_CHARGE, "utensil/spoon"); return CHARGE; }
(ew|beak|pitch)ers?	{ mkNode( E_CHARGE, "utensil/ewer"); return CHARGE; }
(lav|wat)er{S}pots?	{ mkNode( E_CHARGE, "utensil/ewer"); return CHARGE; }

(spur{S})?(rouelle|rowel|molet)s? { mkNode( E_CHARGE, "tack/rowel"); return CHARGE; }
stirrups?		{ mkNode( E_CHARGE, "tack/stirrup"); return CHARGE; }
spurs?			{ mkNode( E_CHARGE, "tack/spur"); return CHARGE; }
(horseshoe|ferr)s?	{ mkNode( E_CHARGE, "tack/horseshoe"); return CHARGE; }
saddles?		{ mkNode( E_CHARGE, "tack/saddle"); return CHARGE; }

