%%
 
 /******************************
  * COLOURS
  ******************************/

 /* common and additional colours, fixed names */
or | 
murrey |  
sanguine |  
carnation | 
brunatre |  
rose |     
senois |  
buff  { mkNode(E_COLOUR, yytext); return COLOUR; }
 /* colours with abbreviations */
az(ure)? { mkNode(E_COLOUR, "azure"); return COLOUR; }
gui?(les)? { mkNode(E_COLOUR, "gules"); return COLOUR; }
arg(ent)? { mkNode(E_COLOUR, "argent"); return COLOUR; }
sa(ble)? { mkNode(E_COLOUR, "sable"); return COLOUR; }
 /* colours with alternate spelling */
purp(le|ure) { mkNode(E_COLOUR, "purpure"); return COLOUR; }
(vert|sinople) { mkNode(E_COLOUR, "vert"); return COLOUR; }
cei?ndree { mkNode(E_COLOUR, "cendree"); return COLOUR; }
bis(que)? { mkNode(E_COLOUR, "bis"); return COLOUR; }
(tanned|tenne|tawny) { mkNode(E_COLOUR, "tenne"); return COLOUR; }
 /* colours with multi-word names */
(horizon|celestial){S}azure { mkNode(E_COLOUR, "celestial-azure"); return COLOUR; }
bleu{S}celeste { mkNode(E_COLOUR, "celestial-azure"); return COLOUR; }
red{S}ochre { mkNode(E_COLOUR, "red-ochre"); return COLOUR;  }
yellow{S}ochre { mkNode(E_COLOUR, "yellow-ochre"); return COLOUR;  }
 /* "de" names (for gouttes particularly) */
d[-'[:space:]]+or { mkNode(E_COLOUR, "or"); return COLOUR; }
d[-'[:space:]]+eau { mkNode(E_COLOUR, "argent"); return COLOUR; }
de{S}larmes { mkNode(E_COLOUR, "azure"); return COLOUR; }
de{S}sangu?e? { mkNode(E_COLOUR, "gules"); return COLOUR; }
de{S}vin { mkNode(E_COLOUR, "gules"); return COLOUR; }
de{S}poix { mkNode(E_COLOUR, "sable"); return COLOUR; }
d[-'[:space:]]+huile { mkNode(E_COLOUR, "vert"); return COLOUR; }
d[-'[:space:]]+olive { mkNode(E_COLOUR, "vert"); return COLOUR; }
 /* English names */
iron |
bronze |
copper |
crimson |
lead |
steel |
gold |
blue |
green |
red |
silver |
black |
brown |
pink |
white { mkNode(E_COLOUR, yytext); return COLOUR; }
gr[ae]y { mkNode(E_COLOUR, "gray"); return COLOUR; }
    /* obsolete names
    'amethyst', 'diamond', 'dragons head', 'dragons tail', 'emerald',
    'jacinth', 'luna', 'mars', 'pearl', 'ruby', 'sol', 'topaz', 'venus',
    */

