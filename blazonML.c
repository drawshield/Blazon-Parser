
#include <stdio.h>
#include <libxml/parser.h>
#include <libxml/tree.h>
#include "blazonML.h"
#include <stdarg.h>
#include <string.h>

/* Set the ID attribute to a unique value */
void setID(xmlNodePtr node, char *prefix) {
    static int idNum = 0;
    char numString[12];
    char idString[64];

    if (node == (xmlNodePtr)0 ) return;

    if (prefix != NULL && strlen(prefix) > 0) {
        strncat(idString, prefix, 48);
    } else {
        strcat(idString,"id");
    }
    sprintf(numString, "%05d", idNum++);
    strcat(idString, numString);
    xmlNewProp(node, A_ID, idString);
}

xmlNodePtr createParentNode(char *nodeName, xmlNodePtr node1, char *keyterm) {
    xmlNodePtr node;

    node = xmlNewNode(NULL, BAD_CAST nodeName);
    setID(node,NULL);
    if (node1 != NULL) xmlAddChild(node,node1);
    if (keyterm != NULL) {
        xmlNewProp(node, A_KEYTERM, keyterm);
    }
    return node;
}

xmlNodePtr attr(xmlNodePtr node, char *name, char *value) {
    xmlNewProp(node, name, value);
    return node;
}

void addChildNode(xmlNodePtr parent, xmlNodePtr child) {
    if (parent != (xmlNodePtr)0 && child != (xmlNodePtr)0) {
        xmlAddChild(parent,child);
    }
}

xmlNodePtr createModifierNode(char *modType, char *keyterm) {
    xmlNodePtr node;
    node = xmlNewNode(NULL, BAD_CAST E_MODIFIER);
    setID(node, "mod");
    xmlNewProp(node, A_KEYTERM, keyterm);
    xmlNewProp(node, A_TYPE, modType);
    return node;
}

xmlNodePtr dupQuarters(xmlNodePtr shield, xmlNodePtr quarterNums) {
    xmlNodePtr list;
    list = xmlNewNode(NULL, BAD_CAST E_LIST);  
    char *targetID;
    targetID = getID(shield);
    xmlNodePtr cur;
    cur = quarterNums->children;
    xmlNewProp(shield, A_INDEX, xmlGetProp(cur, A_KEYTERM));
    addChildNode(list, shield);
    for (cur = cur->next; cur; cur = cur->next) {
        xmlNodePtr sameShield = xmlNewNode(NULL, BAD_CAST E_SHIELD);
        setID(sameShield,"copy");
        xmlNewProp(sameShield, A_IDREF, targetID);
        xmlNewProp(sameShield, A_INDEX, xmlGetProp(cur, A_KEYTERM));
        addChildNode(list,sameShield);
    }

    return list;
}

xmlNodePtr changeNodeName(xmlNodePtr old, char *name) {
    xmlNodePtr node;

    node = xmlNewNode(NULL, BAD_CAST name);
    xmlCopyPropList(node, old->properties);
    xmlFreeNode(old);
}

void drop(xmlNodePtr node) {
    if (node = (xmlNodePtr)0) {
        puts("Null ptr in drop");
    } else {
        xmlFreeNode(node);
    }
}

// void ignore(char *value1 __attribute__((unused))) {
//     ; /* This is make explicit that a value is not used  */
// }
