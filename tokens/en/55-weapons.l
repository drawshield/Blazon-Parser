%%

kni[fv]es?		{ mkNode( E_CHARGE, "sword/knife"); return CHARGE; }
misericordes?		{ mkNode( E_CHARGE, "sword/knife"); return CHARGE; }
claymores?		{ mkNode( E_CHARGE, "sword/claymore"); return CHARGE; }
katanas?		{ mkNode( E_CHARGE, "sword/katana"); return CHARGE; }
(rondel{S})?daggers?	{ mkNode( E_CHARGE, "sword/dagger"); return CHARGE; }
dirks?			{ mkNode( E_CHARGE, "sword/dagger"); return CHARGE; }
ske[ia]ne?s?		{ mkNode( E_CHARGE, "sword/dagger"); return CHARGE; }
falchions?		{ mkNode( E_CHARGE, "sword/falchion"); return CHARGE; }
rapiers?		{ mkNode( E_CHARGE, "sword/rapier"); return CHARGE; }
sabres?			{ mkNode( E_CHARGE, "sword/sabre"); return CHARGE; }
crooked{S}swords?	{ mkNode( E_CHARGE, "sword/sabre"); return CHARGE; }
scim(i|e)tars?		{ mkNode( E_CHARGE, "sword/sabre"); return CHARGE; }
cutlasse?s?		{ mkNode( E_CHARGE, "sword/sabre"); return CHARGE; }
seaxe?s?		{ mkNode( E_CHARGE, "sword/seax"); return CHARGE; }
hilts?			{ mkNode( E_CHARGE, "sword/hilt"); return CHARGE; }
swords?{S}of{S}(s(ain)?t){S}paul { mkNode( E_CHARGE, "sword/swordstpaul"); return CHARGE; }
(2|two){S}handed{S}swords? { mkNode( E_CHARGE, "sword/arming-sword"); return CHARGE; /* XXX weapon type */ }
(arming{S})?swords?	{ mkNode( E_CHARGE, "sword/arming-sword"); return CHARGE; } 

(musket|pistol|pot{S}?gun)s? { mkNode( E_CHARGE, "projectile/musket"); return CHARGE; }
darts?			{ mkNode( E_CHARGE, "projectile/dart"); return CHARGE; }
chaine?{S}shots?	{ mkNode( E_CHARGE, "projectile/chaine-shot"); return CHARGE; }
tridents?		{ mkNode( E_CHARGE, "projectile/trident"); return CHARGE; }
sling{S}?shots?		{ mkNode( E_CHARGE, "projectile/slingshot"); return CHARGE; }
javelins?		{ mkNode( E_CHARGE, "projectile/javelin"); return CHARGE; }
(quarrel|arrow)s?	{ mkNode( E_CHARGE, "projectile/arrow"); return CHARGE; }
b(e|o)sons?		{ mkNode( E_CHARGE, "projectile/boson"); return CHARGE; }
bird{S}bolts?		{ mkNode( E_CHARGE, "projectile/boson"); return CHARGE; }
(f|ph)eons?		{ mkNode( E_CHARGE, "projectile/pheon"); return CHARGE; }
(lance|spear)s?		{ mkNode( E_CHARGE, "projectile/spear"); return CHARGE; }
broad{S}arrows?		{ mkNode( E_CHARGE, "projectile/arrow-broad"); return CHARGE; }
salmon{S}spears?	{ mkNode( E_CHARGE, "projectile/salmon-spear"); return CHARGE; }

(culverin|gun|chamber|cannon)s? |
(field|chamber){S}pieces? 	{ mkNode( E_CHARGE, "weapon/cannon"); return CHARGE; }
(swee?pe?|ball?istae?|mangonel)s?	{ mkNode( E_CHARGE, "weapon/balista"); return CHARGE; }
battering{S}rams?		{ mkNode( E_CHARGE, "weapon/battering-ram"); return CHARGE; }
tilting{S}(lance|spear)s?	{ mkNode( E_CHARGE, "weapon/tilting-spear"); return CHARGE; }

truncheons?		{ mkNode( E_CHARGE, "weapon/truncheon"); return CHARGE; }
(ukrainian{S})?trident{S}heads?	{ mkNode( E_CHARGE, "weapon/trident-head-ukrainian"); return CHARGE; }
maces?			{ mkNode( E_CHARGE, "weapon/mace"); return CHARGE; }
((long|string){S})?bows? { mkNode( E_CHARGE, "weapon/bow"); return CHARGE; }
(g|c)altraps?		{ mkNode( E_CHARGE, "weapon/caltrap"); return CHARGE; }
cheval{S}traps?		{ mkNode( E_CHARGE, "weapon/caltrap"); return CHARGE; }
(spiked{S})?clubs?	{ mkNode( E_CHARGE, "weapon/club"); return CHARGE; }
cronels?		{ mkNode( E_CHARGE, "weapon/cronel"); return CHARGE; }
cross{S}?bows?		{ mkNode( E_CHARGE, "weapon/crossbow"); return CHARGE; }
(staff|stave)s?		{ mkNode( E_CHARGE, "weapon/staff"); return CHARGE; }
ragged{S}sta(ff|ve)s?	{ mkNode( E_CHARGE, "weapon/staff-ragged"); return CHARGE; }
wreathed{S}sta(ff|ve)s?	{ mkNode( E_CHARGE, "weapon/staff-wreathed"); return CHARGE; }
arba?l[ea]sts?		{ mkNode( E_CHARGE, "weapon/crossbow"); return CHARGE; }
p(ilgrim|almer)s?{S}sta(ff|ve)s? |
bourdons?		{ mkNode( E_CHARGE, "weapon/staff-palmer"); return CHARGE; }
[ck]atherine{S}wheels?	{ mkNode( E_CHARGE, "weapon/catherine-wheel"); return CHARGE; }
sword{S}chapes?		{ mkNode( E_CHARGE, "weapon/sword-chape"); return CHARGE; }
thors{S}hammers?	|	
mjolnirs?		{ mkNode( E_CHARGE, "weapon/thors-hammer"); return CHARGE; }
shackles?		{ mkNode( E_CHARGE, "weapon/shackle"); return CHARGE; }

lochaber{S}axe?s?	{ mkNode( E_CHARGE, "axe/lochaber-axe"); return CHARGE; }
halber[td]s?		|
pole{S}?axe?s?		{ mkNode( E_CHARGE, "axe/pole-axe"); return CHARGE; }
addices?		|
carpenters?{S}axe?s?	{ mkNode( E_CHARGE, "axe/addice"); return CHARGE; }
battle{S}?axe?s?	{ mkNode( E_CHARGE, "axe/battle-axe"); return CHARGE; }
hatchets?		|
(common{S})?axe?s?	{ mkNode( E_CHARGE, "axe/common-axe"); return CHARGE; }
hews?			|
miners{S}axe?s?		|
pick{S}?axe?s?		{ mkNode( E_CHARGE, "axe/pick-axe"); return CHARGE; }
turners?{S}axe?s?	{ mkNode( E_CHARGE, "axe/turner-axe"); return CHARGE; }
slaughter{S}axe?s?	{ mkNode( E_CHARGE, "axe/slaughter-axe"); return CHARGE; }
broad{S}?axe?s?		{ mkNode( E_CHARGE, "axe/broad-axe"); return CHARGE; }
throwing{S}axe?s?	{ mkNode( E_CHARGE, "axe/throwing-axe"); return CHARGE; }

