%%

void mkNode(char *nodeName, char *keyterm) {

  yylval.n = xmlNewNode(NULL, BAD_CAST nodeName);
  setID(yylval.n, NULL);
  xmlNewProp(yylval.n, A_KEYTERM, keyterm );
  char lineNumber[12];
  sprintf(lineNumber,"%d", yylineno);
  xmlNewProp(yylval.n, A_LINENUMBER, lineNumber );
  strcat(buffer, yytext);
  xmlNewProp(yylval.n, A_TOKENS, buffer );
  buffer[0] = '\0';
}


void mkMod(char *modType, char *keyterm) {

  yylval.n = xmlNewNode(NULL, BAD_CAST E_MODIFIER);
  setID(yylval.n, NULL);
  xmlNewProp(yylval.n, A_KEYTERM, keyterm );
  xmlNewProp(yylval.n, A_TYPE, modType );
  char lineNumber[12];
  sprintf(lineNumber,"%d", yylineno);
  xmlNewProp(yylval.n, A_LINENUMBER, lineNumber );
  strcat(buffer, yytext);
  xmlNewProp(yylval.n, A_TOKENS, buffer );
  buffer[0] = '\0';
}


void val(char *value) {
  yylval.s = (char *)malloc(strlen(value)+1);
  strcpy(yylval.s, value);
}