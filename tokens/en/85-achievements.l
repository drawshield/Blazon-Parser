%%

(achieve|hatch)ment({S}of)?	{ stash(); return ACHIEVEMENT; }

((a|the){S})?crest({S}of)?	{ mkNode( E_CREST, "crest"); return CREST; }

(the{S})?compartment	{ mkNode( E_COMPARTMENT, "mound"); return COMPARTMENT; }
((a|the){S})?mound	{ mkNode( E_COMPARTMENT, "mound"); return COMPARTMENT; }
((a|the){S})?shelf	{ mkNode( E_COMPARTMENT, "shelf"); return COMPARTMENT; }

((a|the){S})?(roman{S})?(catholic{S})?priest	{ mkNode( E_MANTLING, "priest-catholic"); return ECCLESIASTIC; }
((a|the){S})?(roman{S})?(catholic{S})?canon	{ mkNode( E_MANTLING, "canon-catholic"); return ECCLESIASTIC; }
((a|the){S})?(roman{S})?(catholic{S})?bishop	{ mkNode( E_MANTLING, "bishop-catholic"); return ECCLESIASTIC; }
((a|the){S})?(roman{S})?(catholic{S})?(vicar|dean)	{ mkNode( E_MANTLING, "vicar-catholic"); return ECCLESIASTIC; }
((a|the){S})?(roman{S})?(catholic{S})?chaplain	{ mkNode( E_MANTLING, "chaplain-catholic"); return ECCLESIASTIC; }
((a|the){S})?(roman{S})?(catholic{S})?prelate	{ mkNode( E_MANTLING, "prelate-catholic"); return ECCLESIASTIC; }

supporters?		{ mkNode( E_SUPPORTERS, "supporters" ); return SUPPORTERS; }

(lambrequin|mantling)({S}of)?({S}ribbons)?	{ mkNode( E_MANTLING, "ribbons" ); return MANTLING; }
mantling{S}(of{S})?(a{S})?cloak			{ mkNode( E_MANTLING, "cloak" ); return MANTLING; }
cloak({S}mantling)?				{ mkNode( E_MANTLING, "cloak" ); return MANTLING; }


(the{S})?motto{S}[[:print:]]+		{ mkNode( E_MOTTO, "plain");
					  xmlNewProp(yylval.n, A_TEXT, strchr(yytext,'m') + 6);
					  return MOTTO;
					}
(the{S})?devi[sc]e{S}[[:print:]]+	{ mkNode( E_MOTTO, "plain");
					  xmlNewProp(yylval.n, A_TEXT, strchr(yytext,'d') + 7);
					  return MOTTO;		
					}
(the{S})?(motto|devi[sc]e){S}\"([^"]|\\[\\"])*\"	{{ char *s, *t, buf[64];
							   mkNode( E_MOTTO, "plain");
							   s = strchr(yytext,'"');
							   t = buf;
							   while(t < buf+64) {
								switch(*s) {
								    case '\0':
								    case '"':
									*t = '\0';
					  		   		xmlNewProp(yylval.n, A_TEXT, buf);
									return MOTTO;
								    case '\\':
									*t++ = *(++s)++;
									break;
								    default:
									*t++ = *s++;
								}
							   }
							   buf[60] = buf[61] = buf[62] = '.';
							   buf[63] = '\0';
					  		   xmlNewProp(yylval.n, A_TEXT, buf);
					 		   return MOTTO;		
							}}

(a{S})?fringed?			{ mkNode( E_FRINGE, "fringe"); return FRINGED; }



