/* Defines for BlazonML */

/*
E_* - Element names
A_* - Attribute names
V_* - Pre-defined attribute values
T_* - Types for modifiers

*/

#define E_BLAZON "blazon"
#define E_INPUT "input"
#define E_TOKEN "token"
#define E_SHIELD "shield"
#define E_SIMPLE "simple"
#define E_COMPLEX "complex"
#define E_INSTRUCTIONS "instructions"
#define E_SHAPE "shape"
#define E_PALETTE "palette"
#define E_EFFECT "effect"
#define E_ACHIEVEMENT "achievement"
#define E_CREST "crest"
#define E_TORSE "torse"
#define E_MANTLING "mantling"
#define E_HELMET "helmet"
#define E_SUPPORTERS "supporters"
#define E_MOTTO "motto"
#define A_TEXT "text"
#define E_LOCATION "location"
#define E_ASPECT "aspect"
#define A_INDEX "index"
#define A_TOKENS "tokens"
#define A_LINENUMBER "linenumber"
#define A_LINERANGE "linerange"
#define A_ID "ID"
#define A_IDREF "IDREF"
#define A_CONTEXT "context"
#define V_DIMIDIATED "dimidiated"
#define V_IMPALED "impaled"
#define V_QUARTERED "quartered"
#define E_MISSING "missing"
#define E_BACKREF "backReference"
#define E_MESSAGE "message"
#define E_MESSAGES "messages"
#define E_OVERALL "overall"
#define E_TINCTURE "tincture"
#define A_ORIGIN "origin"
#define A_CATEGORY "category"
#define E_PROPER "proper"
#define E_PENDING "pending"
#define A_NAME "name"
#define E_FUR "fur"
#define E_TREATMENT "treatment"
#define E_SEMYDE "semyde"
#define E_FIELD "field"
#define E_COUNTERCHANGED "counterchanged"
#define E_COLOUR "colour"
#define E_DIVISION "division"
#define E_OBJECTS "objects"
#define E_ORDINARY "ordinary"
#define E_CHARGE "charge"
#define A_TYPE "type"
#define A_NUMBER "number"
#define E_MODIFIER "modifier"
#define A_PARAM "value"
#define E_FEATURE "feature"
#define V_FEATURE "feature"
#define A_KEYTERM "keyterm"
#define V_IMPLIED "implied"
#define V_OFNUM "ofnum"
#define A_NOTES "annotation"

#define T_ORIENTATION "orientation"
#define T_LINETYPE "linetype"
#define T_NUMMOD "number"
#define T_DECORATION "decoration"
#define T_CHEVRONMOD "chevronmod"

/* "Dummy" elements for temporary storage */
#define E_LIST "list"  /* gather nodes for use later */
#define E_ORD_OR_CHG "ordorchg" /* can't tell whether this is ordinary or charge (yet) */
#define E_VALUE "dummyval"

xmlNodePtr createParentNode(char *nodeName, xmlNodePtr, char *keyterm); 
void addChildNode(xmlNodePtr, xmlNodePtr); 
xmlNodePtr attr(xmlNodePtr node, char *name, char *value);
xmlNodePtr createModifierNode(char *modType, char *keyterm);
xmlNodePtr dupQuarters(xmlNodePtr, xmlNodePtr);
xmlNodePtr changeNodeName(xmlNodePtr, char *);
void setID(xmlNodePtr, char *);
void drop(xmlNodePtr);
char *getID(char *prefix);
xmlNodePtr note(xmlNodePtr, char *);

/* Some shorthand macros */
#define parent(a,b,c) createParentNode(a,b,c)
#define child(a,b) addChildNode(a,b)
#define addList(a,b) xmlAddChildList(a,b->children)
#define newMod(a,b) createModifierNode(a,b)
#define getID(a) xmlGetProp(a,A_ID)
#define change(a,b) changeNodeName(a,b)


