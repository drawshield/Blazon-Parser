%%

 /******************************
  * NUMBERS
  ******************************/

  /* In most cases numbers are just numbers, but sometimes we
     do different things based on the lower numbers  */
[1-9][0-9]+ { val( yytext); return NUMBER; }
(one|1) { val( "1" ); return ONE; }
(two|2) { val( "2" ); return TWO; }
(three|3) { val( "3" ); return THREE; }
(four|4) { val( "4" ); return FOUR; }
(five|5) { val( "5" ); return FIVE; }
(six|6) { val( "6"  ); return SIX; }
(seven|7) { val( "7" ); return NUMBER; }
(eight|8) { val( "8" ); return NUMBER; }
(nine|9) { val( "9" ); return NUMBER; }
ten { val( "10" ); return NUMBER; }
eleven { val( "11" ); return NUMBER; }
twelve { val( "12" ); return NUMBER; }
thirteen { val( "13" ); return NUMBER; }
fourteen { val( "14" ); return NUMBER; }
fifteen { val( "15" ); return NUMBER; }
sixteen { val( "16" ); return NUMBER; }
seventeen { val( "17" ); return NUMBER; }
eighteen { val( "18" ); return NUMBER; }
nineteen { val( "19" ); return NUMBER; }
(twen|thir|for|fif|six)ty  		{ snprintf(nbuf,3,"%c0",adigit[yytext[2]&7]); val(nbuf); return NUMBER; }
(twen|thir|for|fif|six)ty{S}one/{E}  	{ snprintf(nbuf,3,"%c1",adigit[yytext[2]&7]); val(nbuf); return NUMBER; }
(twen|thir|for|fif|six)ty{S}two/{E} 	{ snprintf(nbuf,3,"%c2",adigit[yytext[2]&7]); val(nbuf); return NUMBER; }
(twen|thir|for|fif|six)ty{S}three/{E}  	{ snprintf(nbuf,3,"%c3",adigit[yytext[2]&7]); val(nbuf); return NUMBER; }
(twen|thir|for|fif|six)ty{S}four/{E} 	{ snprintf(nbuf,3,"%c4",adigit[yytext[2]&7]); val(nbuf); return NUMBER; }
(twen|thir|for|fif|six)ty{S}five/{E}  	{ snprintf(nbuf,3,"%c5",adigit[yytext[2]&7]); val(nbuf); return NUMBER; }
(twen|thir|for|fif|six)ty{S}six/{E}  	{ snprintf(nbuf,3,"%c6",adigit[yytext[2]&7]); val(nbuf); return NUMBER; }
(twen|thir|for|fif|six)ty{S}seven/{E}	{ snprintf(nbuf,3,"%c7",adigit[yytext[2]&7]); val(nbuf); return NUMBER; }
(twen|thir|for|fif|six)ty{S}eight/{E}	{ snprintf(nbuf,3,"%c8",adigit[yytext[2]&7]); val(nbuf); return NUMBER; }
(twen|thir|for|fif|six)ty{S}nine/{E}  	{ snprintf(nbuf,3,"%c9",adigit[yytext[2]&7]); val(nbuf); return NUMBER; }

(as|so){S}many { val( "asmany" ); return NUMBER; }

 /******************************
  * MARSHALLING NUMBERS
  ******************************/

")" { stash(); return QUARTERMARK; }

 /* Ordinals using Arabic numerals */
[2-6]?1st	{ *strchr(yytext,'s') = '\0'; val(yytext); return QNUM_ARA; }
[2-6]?2nd	{ *strchr(yytext,'n') = '\0'; val(yytext); return QNUM_ARA; }
[2-6]?3rd	{ *strchr(yytext,'r') = '\0'; val(yytext); return QNUM_ARA; }
([2-6]?[04-9]|1[0-9])th	{ *strchr(yytext,'t') = '\0'; val(yytext); return QNUM_ARA; }

 /* Ordinals using Roman numerals */
x{0,3}v?i{0,4}	{{ int n = 0; while(*yytext) { n += (*yytext=='x') ? 10 : (*yytext=='v') ? 5 : 1; yytext++; }
			snprintf(nbuf,3,"%d",n); val(nbuf); return QNUM_ROM; }}
x{0,3}i[vx]	{{ char * s = strchr(yytext, 'i'); snprintf(nbuf,3,"%ld",10*(s-yytext)+((s[1]=='v')?4:9)); val(nbuf); return QNUM_ROM; }}
 /* TODO approaching 50 -- probably not important */
 
 /* Ordinals using full words */
first 		{ stash();  val("1"); return QNUM_WORD; }
second 		{ stash();  val("2"); return QNUM_WORD; }
third  		{ stash();  val("3"); return QNUM_WORD; }
fourth  	{ stash();  val("4"); return QNUM_WORD; }
fifth  		{ stash();  val("5"); return QNUM_WORD; }
sixth  		{ stash();  val("6"); return QNUM_WORD; }
seventh 	{ stash();  val("7"); return QNUM_WORD; }
eighth  	{ stash();  val("8"); return QNUM_WORD; }
ninth  		{ stash();  val("9"); return QNUM_WORD; }
tenth  		{ stash();  val("10"); return QNUM_WORD; }
eleventh 	{ stash();  val("11"); return QNUM_WORD; }
twelth  	{ stash();  val("12"); return QNUM_WORD; }
thirteenth 	{ stash();  val("13"); return QNUM_WORD; }
fourteenth  	{ stash();  val("14"); return QNUM_WORD; }
fifteenth  	{ stash();  val("15"); return QNUM_WORD; }
sixtenth  	{ stash();  val("16"); return QNUM_WORD; }
seventeenth	{ stash();  val("17"); return QNUM_WORD; }
eightheenth	{ stash();  val("18"); return QNUM_WORD; }
nineteenth 	{ stash();  val("19"); return QNUM_WORD; }
(twen|thir|for|fif|six)tieth  		{ snprintf(nbuf,3,"%c0",adigit[yytext[2]&7]); val(nbuf); return QNUM_WORD; }
(twen|thir|for|fif|six)ty{S}first/{E}  	{ snprintf(nbuf,3,"%c1",adigit[yytext[2]&7]); val(nbuf); return QNUM_WORD; }
(twen|thir|for|fif|six)ty{S}second/{E} 	{ snprintf(nbuf,3,"%c2",adigit[yytext[2]&7]); val(nbuf); return QNUM_WORD; }
(twen|thir|for|fif|six)ty{S}third/{E}  	{ snprintf(nbuf,3,"%c3",adigit[yytext[2]&7]); val(nbuf); return QNUM_WORD; }
(twen|thir|for|fif|six)ty{S}fourth/{E} 	{ snprintf(nbuf,3,"%c4",adigit[yytext[2]&7]); val(nbuf); return QNUM_WORD; }
(twen|thir|for|fif|six)ty{S}fifth/{E}  	{ snprintf(nbuf,3,"%c5",adigit[yytext[2]&7]); val(nbuf); return QNUM_WORD; }
(twen|thir|for|fif|six)ty{S}sixth/{E}  	{ snprintf(nbuf,3,"%c6",adigit[yytext[2]&7]); val(nbuf); return QNUM_WORD; }
(twen|thir|for|fif|six)ty{S}seventh/{E} { snprintf(nbuf,3,"%c7",adigit[yytext[2]&7]); val(nbuf); return QNUM_WORD; }
(twen|thir|for|fif|six)ty{S}eighth/{E}	{ snprintf(nbuf,3,"%c8",adigit[yytext[2]&7]); val(nbuf); return QNUM_WORD; }
(twen|thir|for|fif|six)ty{S}ninth/{E}  	{ snprintf(nbuf,3,"%c9",adigit[yytext[2]&7]); val(nbuf); return QNUM_WORD; }

 /* Ordinals using letters */
[a-z]{B} { stash(); snprintf(nbuf, 3, "%d", *yytext & 0x1f); val(nbuf); return QNUM_LTR; }
aa{B} { stash(); val("27"); return QNUM_LTR; }
bb{B} { stash(); val("28"); return QNUM_LTR; }
cc{B} { stash(); val("29"); return QNUM_LTR; }
dd{B} { stash(); val("30"); return QNUM_LTR; }
ee{B} { stash(); val("31"); return QNUM_LTR; }
ff{B} { stash(); val("32"); return QNUM_LTR; }
gg{B} { stash(); val("33"); return QNUM_LTR; }
hh{B} { stash(); val("34"); return QNUM_LTR; }
ii{B} { stash(); val("35"); return QNUM_LTR; }
jj{B} { stash(); val("36"); return QNUM_LTR; }
kk{B} { stash(); val("37"); return QNUM_LTR; }
ll{B} { stash(); val("38"); return QNUM_LTR; }
mm{B} { stash(); val("39"); return QNUM_LTR; }
nn{B} { stash(); val("40"); return QNUM_LTR; }
oo{B} { stash(); val("41"); return QNUM_LTR; }
pp{B} { stash(); val("42"); return QNUM_LTR; }
qq{B} { stash(); val("43"); return QNUM_LTR; }
rr{B} { stash(); val("44"); return QNUM_LTR; }
ss{B} { stash(); val("45"); return QNUM_LTR; }
tt{B} { stash(); val("46"); return QNUM_LTR; }
uu{B} { stash(); val("47"); return QNUM_LTR; }
vv{B} { stash(); val("48"); return QNUM_LTR; }
ww{B} { stash(); val("49"); return QNUM_LTR; }
xl{B} { stash(); val("50"); return QNUM_LTR; }
yy{B} { stash(); val("51"); return QNUM_LTR; }
zz{B} { stash(); val("52"); return QNUM_LTR; }
aaa{B} { stash(); val("53"); return QNUM_LTR; }
bbb{B} { stash(); val("54"); return QNUM_LTR; }
ccc{B} { stash(); val("55"); return QNUM_LTR; }
ddd{B} { stash(); val("56"); return QNUM_LTR; }
eee{B} { stash(); val("57"); return QNUM_LTR; }
fff{B} { stash(); val("58"); return QNUM_LTR; }
ggg{B} { stash(); val("59"); return QNUM_LTR; }
hhh{B} { stash(); val("60"); return QNUM_LTR; }
iii{B} { stash(); val("61"); return QNUM_LTR; }
jjj{B} { stash(); val("62"); return QNUM_LTR; }
kkk{B} { stash(); val("63"); return QNUM_LTR; }
lll{B} { stash(); val("64"); return QNUM_LTR; }

