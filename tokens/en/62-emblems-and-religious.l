%%

badges?{S}of{S}clan{S}ross	{ mkNode( E_CHARGE, "badges/clan-ross"); return CHARGE; }

odins?{S}ravens?		{ mkNode( E_CHARGE, "norse/raven"); return CHARGE; }
norse{S}ravens?			{ mkNode( E_CHARGE, "norse/raven"); return CHARGE; }
(celtic{S})?ar?wens?		{ mkNode( E_CHARGE, "norse/awen"); return CHARGE; }
((norse|viking){S})?long(ship|boat)s?	{ mkNode( E_CHARGE, "norse/longship"); return CHARGE; }
((norse|viking){S})?vegvisirs?	{ mkNode( E_CHARGE, "norse/vegvisir"); return CHARGE; }

rosar(y|ies)			{ mkNode( E_CHARGE, "christian/rosary"); return CHARGE; }
paternosters?			{ mkNode( E_CHARGE, "christian/rosary"); return CHARGE; }
tombstones?			{ mkNode( E_CHARGE, "christian/tombstone"); return CHARGE; }
cherub(im)?s?			{ mkNode( E_CHARGE, "christian/cherub"); return CHARGE; }
(paschal|holy){S}lambs?		{ mkNode( E_CHARGE, "christian/paschal-lamb"); return CHARGE; }
lambs?{S}of{S}god		{ mkNode( E_CHARGE, "christian/paschal-lamb"); return CHARGE; }
agnus{S}dei			{ mkNode( E_CHARGE, "christian/paschal-lamb"); return CHARGE; }
cro[sz]iers?			{ mkNode( E_CHARGE, "christian/crozier"); return CHARGE; }
virgin({S}mary)?({S}((holding|and){S})?((the{S})?child{S})?jesus({S}in({S}her)?{S}arms)?)? { mkNode( E_CHARGE, "christian/virgin"); return CHARGE; }
madonnas?			{ mkNode( E_CHARGE, "christian/virgin"); return CHARGE; }
mitres?				{ mkNode( E_CHARGE, "christian/mitre"); return CHARGE; }
angels?				{ mkNode( E_CHARGE, "christian/angel"); return CHARGE; }
((church|war){S})?bells?	{ mkNode( E_CHARGE, "christian/church-bell"); return CHARGE; }
pastoral{S}sta(ff|ve)s?		{ mkNode( E_CHARGE, "christian/staff-pastoral"); return CHARGE; }
altars?				{ mkNode( E_CHARGE, "christian/altar"); return CHARGE; }
passion{S}nails?		{ mkNode( E_CHARGE, "christian/passion-nail"); return CHARGE; }
crowns?{S}of{S}thorns?		{ mkNode( E_CHARGE, "christian/crown-of-thorns"); return CHARGE; }

(staff|rod)s?{S}(of{S})?(a|e|ae)scu?l[ae]pi?us	{ mkNode( E_CHARGE, "emblem/rod-of-esclapius"); return CHARGE; }
thyrs(i|us|uses)({S}(of{S})?dionysus)?	{ mkNode( E_CHARGE, "emblem/thyrsus"); return CHARGE; }
chains?{S}of{S}navarre		{ mkNode( E_CHARGE, "emblem/chain-of-navarre"); return CHARGE; }
chains?{S}of{S}navarre{S}square	{ mkNode( E_CHARGE, "emblem/chain-of-navarre-square"); return CHARGE; }
square{S}chains?{S}of{S}navarre	{ mkNode( E_CHARGE, "emblem/chain-of-navarre-square"); return CHARGE; }
ankhs?				{ mkNode( E_CHARGE, "emblem/ankh"); return CHARGE; }
caduce(i|us)			{ mkNode( E_CHARGE, "emblem/caduceus"); return CHARGE; }
laurel{S}wreaths?		{ mkNode( E_CHARGE, "emblem/laurel-wreath"); return CHARGE; }
sta(ff|ve)s?{S}of{S}mercury	{ mkNode( E_CHARGE, "emblem/caduceus"); return CHARGE; }
cornucopias?			{ mkNode( E_CHARGE, "emblem/cornucopia"); return CHARGE; }
ermine{S}spots?			{ mkNode( E_CHARGE, "emblem/ermine-spot"); return CHARGE; }
spots?				{ mkNode( E_CHARGE, "emblem/spot"); return CHARGE; }
fasces				{ mkNode( E_CHARGE, "emblem/fasces"); return CHARGE; }
pentagrams?			{ mkNode( E_CHARGE, "emblem/pentagram"); return CHARGE; }
triskes?lions?			{ mkNode( E_CHARGE, "emblem/triskelion"); return CHARGE; }
pentacles?			{ mkNode( E_CHARGE, "emblem/pentacle"); return CHARGE; }
chi{S}rhos?			{ mkNode( E_CHARGE, "emblem/chi-rho"); return CHARGE; }
menorahs?			{ mkNode( E_CHARGE, "emblem/menorah"); return CHARGE; }
(star|shield)s?{S}of{S}david	{ mkNode( E_CHARGE, "emblem/star-of-david"); return CHARGE; }
fleurs?{S}de{S}l[yi]s		{ mkNode( E_CHARGE, "emblem/fleur-de-lys"); return CHARGE; }
heralds?{S}(staff|stave|baton)s? { mkNode( E_CHARGE, "emblem/heralds-staff"); return CHARGE; }
marshall?s?{S}(staff|stave|baton)s? { mkNode( E_CHARGE, "emblem/baton-marshall"); return CHARGE; }
labyrinths?			{ mkNode( E_CHARGE, "emblem/labyrinth"); return CHARGE; }
nesselblatt(s|er)?s?		{ mkNode( E_CHARGE, "emblem/nesselblatt"); return CHARGE; }

