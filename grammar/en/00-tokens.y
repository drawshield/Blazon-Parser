
/* -------------------------------------------------------------------------- */
/*                          Tokens (terminal symbols)                         */
/* -------------------------------------------------------------------------- */

/* ---------------------- Punctuation, multi-use words ---------------------- */
%token AND SEMI 
%token ON PIECES POINTS FIELD OF IN THE AS SAME WITHIN WITH
%token <s> WORD STRING

/* --------------------------------- Numbers -------------------------------- */
%token <s> NUMBER ONE TWO THREE FOUR FIVE SIX
/* token THE also sometimes means the number "1"

/* -------------------------------- Tinctures ------------------------------- */
%token <n> COLOUR FUR 
%token <n> PROPER COUNTERCHANGED
%token <n> TREATMENT2 TREATMENT1

/* -------------------------------- Divisons -------------------------------- */
%token <n> DIVISION_2 DIVISION_3 PARTED_DIVISION QUARTERLY DIVISION_2_3
%token PARTY
/* Quarterly may also be an ordinary */

/* ------------------------------- Ordinaries ------------------------------- */
%token <n> ORDINARY ORD_OR_CHG ORDMOD ORDMODCOL

/* --------------------------------- Charges -------------------------------- */
%token <n> CHARGE ARRANGEMENT CHGPREFIX CHGMOD

/* -------------------------------- Modifiers ------------------------------- */
%token <n> LINETYPE DECORATION VOIDED COTTICE
%token <n> ORIENTATION CHEVRONMOD BARMOD

/* ------------------------------- Marshalling ------------------------------ */
%token <n> PAIRED QUARTERED 
%token <s>  QUARTERNUM
%token QUARTERMARK QUARTER
