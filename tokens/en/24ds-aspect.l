%%

[0-9]+\.[0-9]+ { stash(); val(yytext); return REALNUM; }
[0-9]+:[0-9]+ { stash(); val(yytext); return RATIO; }
