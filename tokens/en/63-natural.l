%%

snails?			{ mkNode( E_CHARGE, "insect/snail"); return CHARGE; }
(gad)?fl(ies|y)		{ mkNode( E_CHARGE, "insect/fly"); return CHARGE; }
silkworm{S}fl(y|ies)	{ mkNode( E_CHARGE, "insect/silkworm-fly"); return CHARGE; }
gadbees?		{ mkNode( E_CHARGE, "insect/gadbee"); return CHARGE; }
grasshoppers?		{ mkNode( E_CHARGE, "insect/grasshopper"); return CHARGE; }
ants?			{ mkNode( E_CHARGE, "insect/ant"); return CHARGE; }
moths?			{ mkNode( E_CHARGE, "insect/moth"); return CHARGE; }
bees?			{ mkNode( E_CHARGE, "insect/bee"); return CHARGE; }
butterfl(y|ies)		{ mkNode( E_CHARGE, "insect/butterfly"); return CHARGE; }
crickets?		{ mkNode( E_CHARGE, "insect/cricket"); return CHARGE; }
dragonfl(y|ie)s?	{ mkNode( E_CHARGE, "insect/dragonfly"); return CHARGE; }
hornets?		{ mkNode( E_CHARGE, "insect/hornet"); return CHARGE; }
wasps?			{ mkNode( E_CHARGE, "insect/wasp"); return CHARGE; }
spiders?		{ mkNode( E_CHARGE, "insect/spider"); return CHARGE; }
spider[-s ]?webs?	{ mkNode( E_CHARGE, "insect/spiderweb"); return CHARGE; }
beetles?		{ mkNode( E_CHARGE, "insect/beetle"); return CHARGE; }
stag{S}?beetles?	{ mkNode( E_CHARGE, "insect/stag-beetle"); return CHARGE; }


(hill|hillock|mound|mount)s?	{ mkNode( E_CHARGE, "natural/hillock"); return CHARGE; }
mole{S}?hills?		{ mkNode( E_CHARGE, "natural/mole-hill"); return CHARGE; }
water{S}bubbles?	{ mkNode( E_CHARGE, "natural/bubble"); return CHARGE; }
clouds?			{ mkNode( E_CHARGE, "natural/cloud"); return CHARGE; }
winds?			{ mkNode( E_CHARGE, "natural/wind"); return CHARGE; }
mistrals?		{ mkNode( E_CHARGE, "natural/wind"); return CHARGE; }
stones?			{ mkNode( E_CHARGE, "natural/stone"); return CHARGE; }
rocks?			{ mkNode( E_CHARGE, "natural/rock"); return CHARGE; }
(grass{S})?sods?	{ mkNode( E_CHARGE, "natural/sod"); return CHARGE; }
flint{S}?stones?	{ mkNode( E_CHARGE, "natural/stone-flint"); return CHARGE; }
lightning{S}bolts?	{ mkNode( E_CHARGE, "natural/lightning-bolt"); return CHARGE; }
bolts?{S}of{S}lightning	{ mkNode( E_CHARGE, "natural/lightning-bolt"); return CHARGE; }
snow{S}?flakes?		{ mkNode( E_CHARGE, "natural/snowflake"); return CHARGE; }
waves?{S}of{S}the{S}sea	{ mkNode( E_CHARGE, "natural/sea-waves"); return CHARGE; }
(hurst|grove|wood|forest)s?({S}of{S}trees)?	{ mkNode( E_CHARGE, "natural/forest"); return CHARGE; }
teardrop		{ mkNode( E_CHARGE, "natural/teardrop"); return CHARGE; }

(full{S})?moons?	{ mkNode( E_CHARGE, "celestial/moon"); return CHARGE; }
increscents?		{ mkNode( E_CHARGE, "celestial/moon-todexter"); return CHARGE; }
decrescents?		{ mkNode( E_CHARGE, "celestial/moon-tosinister"); return CHARGE; }
es?toill?e?s?		{ mkNode( E_CHARGE, "celestial/star"); return CHARGE; }
suns?			{ mkNode( E_CHARGE, "celestial/sun"); return CHARGE; }
suns?{S}rays?		{ mkNode( E_CHARGE, "celestial/sun-rays"); return CHARGE; }
(blazing{S})?comets?({S}stars?)?  { mkNode( E_CHARGE, "celestial/comet"); return CHARGE; }
sunbursts?		{ mkNode( E_CHARGE, "celestial/sunburst"); return CHARGE; }
rainbows?		{ mkNode( E_CHARGE, "celestial/rainbow"); return CHARGE; }
(jupiters?{S})?thunderbolts?	{ mkNode( E_CHARGE, "celestial/thunderbolt"); return CHARGE; }


