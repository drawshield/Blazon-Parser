%%

covered { mkMod(T_CHGMOD, "covered"); return CHGPREFIX; }
standing { mkMod(T_CHGMOD, "standing"); return CHGPREFIX; }
open { mkMod(T_CHGMOD, "open"); return CHGPREFIX; }
heraldic { mkMod(T_CHGMOD, "heraldic"); return CHGPREFIX; }
dexter { mkMod(T_CHGMOD, "dexter"); return CHGPREFIX; }
sinister { mkMod(T_CHGMOD, "sinister"); return CHGPREFIX; }
double { mkMod(T_CHGMOD, "double"); return CHGPREFIX; }
branched { mkMod(T_CHGMOD, "branched"); return CHGPREFIX; }
staved { mkMod(T_CHGMOD, "staved"); return CHGPREFIX; }
single { mkMod(T_CHGMOD, "single"); return CHGPREFIX; }
modern  { mkMod(T_CHGMOD, "modern"); return CHGPREFIX; }
winged { mkMod(T_CHGMOD, "winged"); return CHGPREFIX; }
natural { mkMod(T_CHGMOD, "natural"); return CHGPREFIX; }
nude { mkMod(T_CHGMOD, "nude"); return CHGPREFIX; }
spread { mkMod(T_CHGMOD, "displayed"); return CHGPREFIX; }
heads?{S}of({S}(a|an|the))? {mkMod(T_CHGMOD, "head"); return CHGPREFIX; }
closed? {mkMod(T_CHGMOD, "closed"); return CHGPREFIX; }
(dem[yi]|half) {mkMod(T_CHGMOD, "demi"); return CHGPREFIX; }
like {mkMod(T_CHGMOD, "like"); return CHGPREFIX; } // not sure whether this has any real meaning, but added as mod just in case
(tuft|stalk|limb|sprig|bough|scrog|branche?)s?({S}of)? {mkMod(T_CHGMOD, "portion"); return CHGPREFIX; }
double{S}headed {mkMod(T_CHGMOD, "double-headed"); return CHGPREFIX; }
french({S}shaped) {mkMod(T_CHGMOD, "shape-french"); return CHGPREFIX; }
swiss({S}shaped) {mkMod(T_CHGMOD, "shape-swiss"); return CHGPREFIX; }
oval{S}shaped? {mkMod(T_CHGMOD, "shape-oval"); return CHGPREFIX; }
lozenge{S}shaped? {mkMod(T_CHGMOD, "shape-lozenge"); return CHGPREFIX; }
square{S}shaped? {mkMod(T_CHGMOD, "shape-square"); return CHGPREFIX; }
english({S}shaped?)? {mkMod(T_CHGMOD, "shape-english"); return CHGPREFIX; }
italian({S}shaped?)? {mkMod(T_CHGMOD, "shape-italian"); return CHGPREFIX; }
polish({S}shaped?)? {mkMod(T_CHGMOD, "shape-polish"); return CHGPREFIX; }
spanish({S}shaped?)? {mkMod(T_CHGMOD, "shape-spanish"); return CHGPREFIX; }
german({S}shaped?)? {mkMod(T_CHGMOD, "shape-german"); return CHGPREFIX; }
heater({S}shaped?)? {mkMod(T_CHGMOD, "shape-heater"); return CHGPREFIX; }
equal{S}armed {mkMod(T_CHGMOD, "equal-armed"); return CHGPREFIX; }
