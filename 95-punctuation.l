%%

 /******************************
  * PUNCTUATION
  ******************************/

  /* small words, multiple uses */

of { stash(); return OF; }
(on|upon) { stash(); return ON; }
(with)?in { stash(); return IN; }
(a|an|the)  { stash(); return THE; }
(field|court) { stash(); return FIELD; }
quarters? { stash(); return QUARTER; }

 /* Conjunctions */
"&" |
and { stash(); return AND; }

(;)+ { stash(); return SEMI; }


 /* ignore whitespace etc. */
[ \t\n\r,]+  /* ignore */
 /* Without the ; here, "word;" is a longer match than "word" so is */
 /* erroneously matched, same for other punctuation chars */
[^ \t\n\r,;&)("']+ { lexerMessage(yytext); }

