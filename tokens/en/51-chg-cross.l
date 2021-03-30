%%

calvary{S}cross(es)? 		{ mkNode( E_CHARGE, "cross/calvary"); return CHARGE; }
greek{S}cross(es)? 		{ mkNode( E_CHARGE, "cross/greek"); return CHARGE; }
coptic{S}cross(es)? 		{ mkNode( E_CHARGE, "quadrate/cross-coptic"); return CHARGE; }
couped{S}cross(es)? 		{ mkNode( E_CHARGE, "cross/couped"); return CHARGE; }
taus?({S}cross(es)?)? 		{ mkNode( E_CHARGE, "cross/tau"); return CHARGE; }
patriarchal{S}cross(es)? 	{ mkNode( E_CHARGE, "cross/patriarchal"); return CHARGE; }
paternoster{S}cross(es)? 	{ mkNode( E_CHARGE, "cross/paternoster"); return CHARGE; }
rosary{S}cross(es)?	 	{ mkNode( E_CHARGE, "cross/paternoster"); return CHARGE; }
portate{S}cross(es)? 		{ mkNode( E_CHARGE, "cross/portate"); return CHARGE; }
(latin|long|passion|straight){S}cross(es)? { mkNode( E_CHARGE, "cross/long"); return CHARGE; }
couped{S}saltires? 		{ mkNode( E_CHARGE, "cross/saltire"); return CHARGE; }
celtic{S}cross(es)? 		{ mkNode( E_CHARGE, "cross/celtic"); return CHARGE; }
russian{S}cross(es)? 		{ mkNode( E_CHARGE, "cross/russian"); return CHARGE; }
egyptian{S}cross(es)? 		{ mkNode( E_CHARGE, "cross/egyptian"); return CHARGE; }
jerusalem{S}cross(es)? 		{ mkNode( E_CHARGE, "quadrate/cross-jerusalem"); return CHARGE; }

cross(es)?{S}calvary 			{ mkNode( E_CHARGE, "cross/calvary"); return CHARGE; }
cross(es)?{S}(couped|coupee) 		{ mkNode( E_CHARGE, "cross/couped"); return CHARGE; }
cross(es)?{S}(greek|humetty) 		{ mkNode( E_CHARGE, "cross/greek"); return CHARGE; }
cross(es)?{S}patriarchal 		{ mkNode( E_CHARGE, "cross/patriarchal"); return CHARGE; }
cross(es)?{S}(of{S})?(saint|st){S}anthony { mkNode( E_CHARGE, "cross/tau"); return CHARGE; }
cross(es)?{S}(of{S})?lorraine 		{ mkNode( E_CHARGE, "cross/lorraine"); return CHARGE; }
cross(es)?{S}(of{S})?s((ain)?t{S}james|antiago) { mkNode( E_CHARGE, "cross/st-james"); return CHARGE; }
cross(es)?{S}portate 			{ mkNode( E_CHARGE, "cross/portate"); return CHARGE; }
cross(es)?{S}paternoster 		{ mkNode( E_CHARGE, "cross/paternoster"); return CHARGE; }
cross(es)?{S}tau 			{ mkNode( E_CHARGE, "cross/tau"); return CHARGE; }
cross(let|lets|es)?{S}of{S}(four|4){S}fusils? { mkNode( E_CHARGE, "quadrate/cross-of-4-fusils"); return CHARGE; }
cross(let|lets|es)?{S}of{S}(nine|9){S}fusils? { mkNode( E_CHARGE, "quadrate/cross-of-9-fusils"); return CHARGE; }
cross(es)?{S}avellane 			{ mkNode( E_CHARGE, "quadrate/cross-avellane"); return CHARGE; }
cross(es)?{S}coptic 			{ mkNode( E_CHARGE, "quadrate/cross-coptic"); return CHARGE; }
cross(es)?{S}bott?onn?(ee|y) 		{ mkNode( E_CHARGE, "quadrate/cross-botonny"); return CHARGE; }
cross(es)?{S}trefle 			{ mkNode( E_CHARGE, "quadrate/cross-botonny"); return CHARGE; }
cross(let|lets|es)?{S}cercelee?s?	{ mkNode( E_CHARGE, "quadrate/cross-cercele"); return CHARGE; }
cross(let|lets|es)?{S}crescenty 	{ mkNode( E_CHARGE, "quadrate/cross-crescenty"); return CHARGE; }
cross(let|lets|es)?{S}clech(y|e|ee) 	{ mkNode( E_CHARGE, "quadrate/cross-cleche"); return CHARGE; }
cross(let|lets|es)?{S}urd(y|e|ee) 	{ mkNode( E_CHARGE, "quadrate/cross-cleche"); return CHARGE; }
cross(es)?{S}cross?lett?{S}crossed({S}patt(ee|y))? { mkNode( E_CHARGE, "quadrate/cross-crosslet-crossed"); return CHARGE; }
cross(es)?{S}cross?lett?s?({S}recoursy)? { mkNode( E_CHARGE, "quadrate/cross-crosslet"); return CHARGE; }
cross(let|lets|es)?{S}florettys? 	{ mkNode( E_CHARGE, "quadrate/cross-floretty"); return CHARGE; }
cross(let|lets|es)?{S}(flory|fleuronny){S}of{S}(nine|9){S}fusils? { mkNode( E_CHARGE, "quadrate/cross-flory-of-9-fusils"); return CHARGE; }
cross(let|lets|es)?{S}(flory|fleuronny){S}of{S}(one|1){S}lozenge { mkNode( E_CHARGE, "quadrate/cross-flory-lozenge"); return CHARGE; }
cross(let|lets|es)?{S}florys? 		{ mkNode( E_CHARGE, "quadrate/cross-flory"); return CHARGE; }
cross(let|lets|es)?{S}fleuronny? 	{ mkNode( E_CHARGE, "quadrate/cross-flory"); return CHARGE; }
cross(es|lets?){S}(formee|patt?ee?)({S}couped)? { mkNode( E_CHARGE, "quadrate/cross-formy"); return CHARGE; }
cross(es|lets?){S}(formy|patt?y)({S}couped)? { mkNode( E_CHARGE, "quadrate/cross-formy"); return CHARGE; }
cross(let|lets|es)?{S}fourche 		{ mkNode( E_CHARGE, "quadrate/cross-fourche"); return CHARGE; }
cross(let|lets|es)?{S}(molines?|ancre|anchory) { mkNode( E_CHARGE, "quadrate/cross-moline"); return CHARGE; }
cross(let|lets|es)?{S}patonces? 	{ mkNode( E_CHARGE, "quadrate/cross-patonce"); return CHARGE; }
cross(let|lets|es)?{S}pat?t(y|e){S}floretty { mkNode( E_CHARGE, "quadrate/cross-paty-floretty"); return CHARGE; }
cross(let|lets|es)?{S}pat?t(e|y){S}pointed { mkNode( E_CHARGE, "quadrate/cross-paty-pointed"); return CHARGE; }
cross(let|lets|es)?{S}pointed 		{ mkNode( E_CHARGE, "quadrate/cross-pointed"); return CHARGE; }
cross(let|lets|es)?{S}barby 		{ mkNode( E_CHARGE, "quadrate/cross-barby"); return CHARGE; }
cross(let|lets|es)?{S}(ve|u)rd(y|e|ee) 	{ mkNode( E_CHARGE, "quadrate/cross-pointed"); return CHARGE; }
cross(let|lets|es)?{S}champaine		{ mkNode( E_CHARGE, "quadrate/cross-pointed"); return CHARGE; }
cross(let|lets|es)?{S}pom(me|y)s?	{ mkNode( E_CHARGE, "quadrate/cross-pomme"); return CHARGE; } 
cross(es)?{S}potent{S}crossed 		{ mkNode( E_CHARGE, "quadrate/cross-potent-crossed"); return CHARGE; }
cross(es)?{S}poten(t|ce) 		{ mkNode( E_CHARGE, "quadrate/cross-potent"); return CHARGE; }
cross(es)?{S}of{S}jerusalem 		{ mkNode( E_CHARGE, "quadrate/cross-jerusalem"); return CHARGE; }
cross(let|lets|es)?{S}recercell?e?(e|y) { mkNode( E_CHARGE, "quadrate/cross-recercele"); return CHARGE; }
cross(let|lets|es)?{S}moline{S}voided 	{ mkNode( E_CHARGE, "quadrate/cross-recercele"); return CHARGE; }
cross(let|lets|es)?{S}sarcell(ee|y) 	{ mkNode( E_CHARGE, "quadrate/cross-sarcelly"); return CHARGE; }
cross(let|lets|es)?{S}doubl(e|y){S}pommell?ed { mkNode( E_CHARGE, "quadrate/cross-sarcelly"); return CHARGE; }
cross(es)?{S}potent{S}rebated 		{ mkNode( E_CHARGE, "quadrate/fylfot"); return CHARGE; }
cross(es)?{S}gammadions? 		{ mkNode( E_CHARGE, "quadrate/fylfot"); return CHARGE; }
cross(let|lets|es)?{S}of{S}(8|eight|huit){S}points { mkNode( E_CHARGE, "quadrate/maltese-cross"); return CHARGE; }
chevrons?{S}couped 			{ mkNode( E_CHARGE, "geometric/chevron"); return CHARGE; } /* XXX not a cross */
saltires?{S}couped 			{ mkNode( E_CHARGE, "cross/saltire"); return CHARGE; }
cross(es)?{S}fitch(y|ee){S}doubled? 	{ mkNode( E_CHARGE, "quadrate/cross-fitchy-double"); return CHARGE; }
cross(es)?{S}fitch(y|ee) 		{ mkNode( E_CHARGE, "quadrate/cross-fitchy"); return CHARGE; }

cross(es)?{S}of{S}pisa			{ mkNode( E_CHARGE, "quadrate/cross-pisa"); return CHARGE; }
cross(es)?{S}of{S}toulouse		{ mkNode( E_CHARGE, "quadrate/cross-toulouse"); return CHARGE; }
cross(es)?{S}(of{S})?(s(ain)?t{S})?florian |
(s(ain)?t{S})florians?{S}cross(es)?	{ mkNode( E_CHARGE, "quadrate/cross-florian"); return CHARGE; }
cross(es)?{S}(of{S})?(s(ain)?t{S})?peters? |	
(s(ain)?t{S})peters?{S}cross(es)?	{ mkNode( E_CHARGE, "cross/peter"); return CHARGE; }
torakrzy({S}cross)?			   |
cross(es)?{S}and{S}a{S}half		{ mkNode( E_CHARGE, "cross/torakrzy"); return CHARGE; }

fylfots?				{ mkNode( E_CHARGE, "quadrate/fylfot"); return CHARGE; }
fylfots?{S}clubbed			{ mkNode( E_CHARGE, "quadrate/fylfot-clubbed"); return CHARGE; }
maltese{S}cross(let|lets|es)?		{ mkNode( E_CHARGE, "quadrate/maltese-cross"); return CHARGE; }
(compass{S}roses?|novae)		{ mkNode( E_CHARGE, "quadrate/compass-rose"); return CHARGE; }
compass{S}stars?			{ mkNode( E_CHARGE, "quadrate/compass-star"); return CHARGE; }
?plain{S}cross?lett?s?			{ mkNode( E_CHARGE, "quadrate/crosslet"); return CHARGE; }
cross?lett?s?{S}formy			{ mkNode( E_CHARGE, "quadrate/cross-formy"); return CHARGE; }
saltorels?				{ mkNode( E_CHARGE, "quadrate/saltorel"); return CHARGE; }

