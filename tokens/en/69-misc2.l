%%
 /* 'flag' defined here rather than in a .tok to auto-apply the shape modifier */
flags?	{{ xmlNodePtr mod;
	   mod = xmlNewNode(NULL, BAD_CAST E_MODIFIER);
	   setID(mod, NULL);
	   xmlNewProp(mod, A_KEYTERM, "shape-flag" );
	   xmlNewProp(mod, A_TYPE, T_CHGMOD );
	   xmlNewProp(mod, A_LINENUMBER, lineNumber );
	   xmlNewProp(mod, A_TOKENS, "");
	   mkNode(E_CHARGE, "special/escutcheon");
	   child(yylval.n, mod)
	   return ESC_CHARGE;
	}}

	/* Charges that take a 'value' */
{N}{S}masted{S}galleys?/{E}	{{ char *s, *t, c;
				   t = strstr(yytext, "mast") - 1;
				   c = *t;
				   *t = '\0';
				   s = strdup(yytext);
				   *t = c;
				   mkNodV(E_CHARGE, "ship/galley", s);
				   return CHARGE;
				}}
{N}{S}masted{S}ships?/{E}	{{ char *s, *t, c;
				   t = strstr(yytext, "mast") - 1;
				   c = *t;
				   *t = '\0';
				   s = strdup(yytext);
				   *t = c;
				   mkNodV(E_CHARGE, "ship/ship", s);
				   return CHARGE;
				}}
((wagon|cart){S})?wheels?{S}of{S}{N}{S}spokes	{{ char *s, *t, c;
						   s = strstr(yytext, "of") + 3;
						   while(!isalnum(*s)) s++;
						   t = strstr(s, "spoke") - 1;
						   c = *t;
						   *t = '\0';
						   s = strdup(s);
						   *t = c;
						   mkNodV(E_CHARGE, "ship/ship", s);
						   return CHARGE;
						}}

locks?{S}of{S}[a-z]+{S}hair/{E}	{{ char c, *s, *t;
				   s = strstr(yytext, "of") + 3;
				   while(isspace(*s)) s++;
				   t = s;
				   while(isalpha(*t)) t++;
				   c = *t;
				   *t = '\0';
				   s = strdup(s);
				   *t = c;
				   mkNodV(E_CHARGE, "human/hair", s);
				   free(s);
				   return CHARGE;
				}}

(numeral|number|digit|figure)s?{S}(of{S})?[0-9]+ {{ char *s = yytext;
						    while(!isdigit(*s)) y++;
						    mkNodV(E_CHARGE, "characters/digit", s);
						    return CHARGE;
					    	 }} 
(monogram|cypher)s?{S}\"([^"]|\\[\\"])*\" |
(letters?|text){S}\"([^"]|\\[\\"])*\"	{{ char buf[64];
					   getQuotedVal(buf, 64);
					   mkNodV(E_CHARGE, "characters/letter", s);
					   return CHARGE;
					}}
roman{S}(letters{S})?\"([^"]|\\[\\"])*\" {{ char buf[64];
					    getQuotedVal(buf, 64);
					    mkNodV(E_CHARGE, "characters/roman", s);
					    return CHARGE;
					 }}
(words?|legend){S}\"([^"]|\\[\\"])*\"	{{ char buf[64];
					   getQuotedVal(buf, 64);
					   mkNodV(E_CHARGE, "characters/word", s);
					   return CHARGE;
					}}

astronomical{S}(character|symbol)s?{S}((of|for){S})?(the{S}planet{S})?[a-z]+ {{
					    char *s = strchr(yytext,'\0');
					    do s--; while(isalpha(*(s-1)));
					    mkNodV(E_CHARGE, "astronomical/symbol", s);
					    return CHARGE;
				    	 }}
astrological(al)?{S}(character|symbol)s?{S}((of|for){S})?[a-z]+	|
zodiac(al)?{S}(character|symbol)s?{S}((of|for){S})?[a-z]+	{{
					    char *s = strchr(yytext,'\0');
					    do s--; while(isalpha(*(s-1)));
					    mkNodV(E_CHARGE, "zodiac/symbol", s);
					    return CHARGE;
				    	 }}
alchemical{S}(character|symbol)s?{S}((of|for){S})?(the{S}element{S})?[a-z]+ {{
					    char *s = strchr(yytext,'\0');
					    do s--; while(isalpha(*(s-1)));
					    mkNodV(E_CHARGE, "alchemical/symbol", s);
					    return CHARGE;
				    	 }}
(character|symbol)s?{S}((of|for){S})?[a-z]+	{{ char *s = strchr(yytext,'\0');
						   do s--; while(isalpha(*(s-1)));
						   mkNodV(E_CHARGE, "symbol/any", s);
						   return CHARGE;
				    		}}


