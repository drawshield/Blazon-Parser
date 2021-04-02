%%

well{S}frames?		{ mkNode( E_CHARGE, "architecture/well-frame"); return CHARGE; }
portcullis(es)?		{ mkNode( E_CHARGE, "architecture/portcullis"); return CHARGE; }
(door{S})?arch(es)?	{ mkNode( E_CHARGE, "architecture/arch"); return CHARGE; }
doors?			{ mkNode( E_CHARGE, "architecture/door"); return CHARGE; }
(cog|clock){S}?wheels?	{ mkNode( E_CHARGE, "architecture/cogwheel"); return CHARGE; }
gears?({S}wheels?)?	{ mkNode( E_CHARGE, "architecture/cogwheel"); return CHARGE; }
mill{S}?wheels?		{ mkNode( E_CHARGE, "architecture/millwheel"); return CHARGE; }
towers?			{ mkNode( E_CHARGE, "architecture/tower"); return CHARGE; }
lighthouses?		{ mkNode( E_CHARGE, "architecture/lighthouse"); return CHARGE; }
pharose?s?		{ mkNode( E_CHARGE, "architecture/lighthouse"); return CHARGE; }
water{S}?wheels?	{ mkNode( E_CHARGE, "architecture/waterwheel"); return CHARGE; }
gates?			{ mkNode( E_CHARGE, "architecture/gate"); return CHARGE; }
gate(way|house)s?	{ mkNode( E_CHARGE, "architecture/gatehouse"); return CHARGE; }
fountains?		{ mkNode( E_CHARGE, "architecture/fountain"); return CHARGE; }
wells?			{ mkNode( E_CHARGE, "architecture/well"); return CHARGE; }
bridges?		{ mkNode( E_CHARGE, "architecture/bridge"); return CHARGE; }
castles?		{ mkNode( E_CHARGE, "architecture/castle"); return CHARGE; }
church(es)?({S}with)?({S}a)?({S}spires?)?  { mkNode( E_CHARGE, "architecture/church"); return CHARGE; }
(column|pillar)s?	{ mkNode( E_CHARGE, "architecture/pillar"); return CHARGE; }
pyramids?		{ mkNode( E_CHARGE, "architecture/pyramid"); return CHARGE; }
(quadrate{S})?cornices?	{ mkNode( E_CHARGE, "architecture/cornice"); return CHARGE; }
anilles?		{ mkNode( E_CHARGE, "architecture/anille"); return CHARGE; }
bascules?		{ mkNode( E_CHARGE, "architecture/bascule"); return CHARGE; }
pavill?ions?		{ mkNode( E_CHARGE, "architecture/pavilion"); return CHARGE; }
tents?			{ mkNode( E_CHARGE, "architecture/pavilion"); return CHARGE; }
pen(non|n?ant)s?	{ mkNode( E_CHARGE, "architecture/pennon"); return CHARGE; }
fountain{S}stones?	{ mkNode( E_CHARGE, "architecture/fountain-stone"); return CHARGE; }

(oreiller|cushion)s?	{ mkNode( E_CHARGE, "furnishings/cushion"); return CHARGE; }
pillows?		{ mkNode( E_CHARGE, "furnishings/pillow"); return CHARGE; }
tables?			{ mkNode( E_CHARGE, "furnishings/table"); return CHARGE; }
tassels?		{ mkNode( E_CHARGE, "furnishings/tassel"); return CHARGE; }
(seat|chair)s?		{ mkNode( E_CHARGE, "furnishings/chair"); return CHARGE; }
gonfann?ons?		{ mkNode( E_CHARGE, "furnishings/gonfannon"); return CHARGE; }
(flag|fanion)s?		{ mkNode( E_CHARGE, "furnishings/flag"); return CHARGE; }
flagpoles?		{ mkNode( E_CHARGE, "furnishings/flagpole"); return CHARGE; }
banners?		{ mkNode( E_CHARGE, "furnishings/banner"); return CHARGE; }
bags?{S}of{S}madder	{ mkNode( E_CHARGE, "furnishings/bag-of-madder"); return CHARGE; }
wool{S}?[ps]acks?	{ mkNode( E_CHARGE, "furnishings/wool-pack"); return CHARGE; }
(garlands?|chaplets?|wreaths?)	{ mkNode( E_CHARGE, "furnishings/garland"); return CHARGE; }


