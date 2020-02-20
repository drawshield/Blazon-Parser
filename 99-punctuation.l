%%

 /******************************
  * PUNCTUATION
  ******************************/

 /* Conjunctions */
"&" |
and { stash(); return AND; }

(;)+ { stash(); return SEMI; }


 /* ignore whitespace etc. */
[ \t\n\r,]+  /* ignore */
 /* Without the ; here, "word;" is a longer match than "word" so is */
 /* erroneously matched, same for other punctuation chars */
[^ \t\n\r,;&)("']+ { lexerMessage(yytext); }

