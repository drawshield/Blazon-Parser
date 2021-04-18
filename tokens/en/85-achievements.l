%%
 /* Copyright (C) 2021 Duncan Lowther
  *
  * This program is free software; you can redistribute it and/or modify
  * it under the terms of the GNU General Public License as published by
  * the Free Software Foundation; either version 3 of the License, or
  * (at your option) any later version.
  *
  * This program is distributed in the hope that it will be useful,
  *  but WITHOUT ANY WARRANTY; without even the implied warranty of
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
  *
  * You should have received a copy of the GNU General Public License
  * along with this program.  If not, see <http://www.gnu.org/licenses/>.
  *
  */

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


(the{S})?motto{S}[a-z0-9]+		{ mkNode( E_MOTTO, "plain");
					  xmlNewProp(yylval.n, A_TEXT, strchr(yytext,'m') + 6);
					  return MOTTO;
					}
(the{S})?devi[sc]e{S}[a-z0-9]+		{ mkNode( E_MOTTO, "plain");
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
									s++;
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



