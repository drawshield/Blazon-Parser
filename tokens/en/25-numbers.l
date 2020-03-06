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
twenty { val( "20" ); return NUMBER; }
twenty{S}one { val( "21" ); return NUMBER; }
twenty{S}two { val( "22" ); return NUMBER; }
twenty{S}three { val( "23" ); return NUMBER; }
twenty{S}four { val( "24" ); return NUMBER; }
twenty{S}five { val( "25" ); return NUMBER; }
twenty{S}six { val( "26" ); return NUMBER; }
twenty{S}seven { val( "27" ); return NUMBER; }
twenty{S}eight { val( "28" ); return NUMBER; }
twenty{S}nine { val( "29" ); return NUMBER; }
thirty { val( "30" ); return NUMBER; }
thirty{S}one { val( "31" ); return NUMBER; }
thirty{S}two { val( "32" ); return NUMBER; }
thirty{S}three { val( "33" ); return NUMBER; }
thirty{S}four { val( "34" ); return NUMBER; }
thirty{S}five { val( "35" ); return NUMBER; }
thirty{S}six { val( "36" ); return NUMBER; }
thirty{S}seven { val( "37" ); return NUMBER; }
thirty{S}eight { val( "38" ); return NUMBER; }
thirty{S}nine { val( "39" ); return NUMBER; }
forty { val( "40" ); return NUMBER; }
forty{S}one { val( "41" ); return NUMBER; }
forty{S}two { val( "42" ); return NUMBER; }
forty{S}three { val( "43" ); return NUMBER; }
forty{S}four { val( "44" ); return NUMBER; }
forty{S}five { val( "45" ); return NUMBER; }
forty{S}six { val( "46" ); return NUMBER; }
forty{S}seven { val( "47" ); return NUMBER; }
forty{S}eight { val( "48" ); return NUMBER; }
forty{S}nine { val( "49" ); return NUMBER; }
fifty { val( "50" ); return NUMBER; }
fifty{S}one { val( "51" ); return NUMBER; }
fifty{S}two { val( "52" ); return NUMBER; }
fifty{S}three { val( "53" ); return NUMBER; }
fifty{S}four { val( "54" ); return NUMBER; }
fifty{S}five { val( "55" ); return NUMBER; }
fifty{S}six { val( "56" ); return NUMBER; }
fifty{S}seven { val( "57" ); return NUMBER; }
fifty{S}eight { val( "58" ); return NUMBER; }
fifty{S}nine { val( "59" ); return NUMBER; }
sixty { val( "60" ); return NUMBER; }
sixty{S}one { val( "61" ); return NUMBER; }
sixty{S}two { val( "62" ); return NUMBER; }
sixty{S}three { val( "63" ); return NUMBER; }
sixty{S}four { val( "64" ); return NUMBER; }

(as|so){S}many' { val( "asmany" ); return NUMBER; }
