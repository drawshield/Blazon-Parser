#include <string.h>
#include <libxml/parser.h>
#include <libxml/tree.h>
#include "errors.h"
#include "blazonML.h"
#include "spelling.h"

extern xmlNodePtr yylval;
extern int yylineno;

xmlNodePtr messages[100];

char *errorStrings[] = {
    /*   0 */ "",
    /*   1 */"Treatment needs two tinctures"

    };

void addMessage(xmlNodePtr message) {
  static int messageNum = 0;
  // if (messageNum < sizeof(messages)) {
    messages[messageNum++] = message;
  // }
}

void lexerMessage(char *text) {

  xmlNodePtr message = xmlNewNode(NULL, BAD_CAST E_MESSAGE);
  char lineNumber[12];
  sprintf(lineNumber,"%d", yylineno);
  xmlNewProp(message,"linerange",lineNumber);
  xmlNewProp(message,"category","parser");
   /* TODO encode XML entities in the text */
  char messageText[512] = "Unrecognised word: ";
  strcat(messageText,text);
  char suggestions[512];
  if (getPossibles(suggestions,text)) {
      strcat(messageText, " - did you mean? ");
      strcat(messageText, suggestions);
  }
  xmlAddChild(message,xmlNewText(messageText)); 
  addMessage(message);
}

xmlNodePtr getMessages() {
  xmlNodePtr msgNode = xmlNewNode(NULL, BAD_CAST E_MESSAGES);
  int i;
  for (i = 0; messages[i] != (xmlNodePtr)0; i++) {
    xmlAddChild(msgNode,messages[i]);
  }
  return msgNode;
}


void parserMessage(char const *errorMessage) {
  xmlNodePtr message = xmlNewNode(NULL, BAD_CAST E_MESSAGE);
  char messageText[512];
  messageText[0] = '\0';
  strcat(messageText, errorMessage);
  char lineNumber[12];
  sprintf(lineNumber,"%d", yylineno);
  xmlNewProp(message,"linerange",lineNumber);
  xmlNewProp(message,"category","parser");
  xmlAddChild(message,xmlNewText(messageText)); 
  addMessage(message);
}