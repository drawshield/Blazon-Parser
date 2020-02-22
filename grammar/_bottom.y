%%

void main()
{
    xmlDocPtr doc;

    // XML Document
    doc = xmlNewDoc(BAD_CAST "1.0");
    xmlRootNode = xmlNewNode(NULL, BAD_CAST E_BLAZON);
    xmlNewProp(xmlRootNode, "creatorName", "blazonYacc");
    xmlDocSetRootElement(doc,xmlRootNode);

    yyparse();
    xmlAddChild(xmlRootNode, getMessages());

    xmlSaveFormatFileEnc("-", doc, "UTF-8", 1);
    xmlFreeDoc(doc);
}

 void yyerror (char const *s) 
 {
   parserMessage(s);
 }
