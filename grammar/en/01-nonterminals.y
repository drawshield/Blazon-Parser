
/* -------------------------------------------------------------------------- */
/*                                Non-Terminals                               */
/* -------------------------------------------------------------------------- */
/* most of these correspond closely to the nodes of the blazonML Schema */
%type <s> number quarterCount twoOrMore
%type <n> blazon shield simple field objects object
%type <n> quartered quarterList quarterNum quarterNums
%type <n> divmod divmods div2type division2 division3 division division23
%type <n> div23Type backref counterchange
%type <n> tincture treat2mod treatment tinctureList andTincture
%type <n> ordType ordprefixes ordinary ordprefix ordsuffixes ordsuffix
%type <n> simpleOrd ordsuffixItem barmodList cottice cotticeItem
%type <n> charge chgNum chgprefixes chgsuffixes
%type <n> numberList 
%type <s> numberListItem
%nterm onfield ofthe

/* ------------------------- Error recovery actions ------------------------- */
%destructor { drop($$); } <n>
%destructor { free($$); } <s>

/* ------------------------------- Precedence ------------------------------- */
%left TREATMENT1 TREATMENT2
%left DIVISION_2 PARTED_DIVISION DIVISION_3 DIVISION_2_3
%left AND

