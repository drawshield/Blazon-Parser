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

void mkNodV(char *nodeName, char *keyterm, char * value) {
  xmlNodePtr vmod;
  vmod = xmlNewNode(NULL, BAD_CAST E_MODIFIER);
  setID(mod, NULL);
  xmlNewProp(vmod, A_KEYTERM, "value" );
  xmlNewProp(vmod, A_TYPE, "value" );
  xmlNewProp(vmod, A_VALUE, value );
  xmlNewProp(vmod, A_LINENUMBER, lineNumber );
  xmlNewProp(vmod, A_TOKENS, "");
  yylval.n = xmlNewNode(NULL, BAD_CAST nodeName);
  setID(yylval.n, NULL);
  xmlNewProp(yylval.n, A_KEYTERM, keyterm );
  char lineNumber[12];
  sprintf(lineNumber,"%d", yylineno);
  xmlNewProp(yylval.n, A_LINENUMBER, lineNumber );
  strcat(buffer, yytext);
  xmlNewProp(yylval.n, A_TOKENS, buffer );
  buffer[0] = '\0';
  child(yylval.n, vmod);
}


void val(char *value) {
  stash();
  yylval.n = xmlNewNode(NULL, "string");
  xmlNewProp(yylval.n, "value", value);
  /*yylval.s = (char *)malloc(strlen(value)+1);
  strcpy(yylval.s, value);*/
}

void getQuotedVal(char *buf, int len) {
    char *s, *t;
    s = strchr(yytext,'"');
    t = buf;
    while(t < buf+len) {
        switch(*s) {
            case '\0':
            case '"':
                *t = '\0';
		return;
            case '\\':
                s++;
            default:
                *t++ = *s++;
        }
    }
    /* If too long for the buffer, truncate with ellipsis */
    buf[len-4] = buf[len-3] = buf[len-2] = '.';
    buf[len-1] = '\0';
}

