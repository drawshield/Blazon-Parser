
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
        strncpy(idString, prefix, 48);
    } else {
        strcpy(idString,"id");
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

xmlNodePtr note(xmlNodePtr node, char *text) {
    char notes[512];

    // TODO Check for pre-existing property and append
   // strncat(notes, xmlGetProp(node,A_NOTES), 511);
    strncat(notes, text, 511);
    strncat(notes, " ", 511);
    /* xmlUnsetProp(node,A_NOTES); */
    xmlNewProp(node,A_NOTES,notes);

    return node;
}

xmlNodePtr addChildNode(xmlNodePtr parent, xmlNodePtr child) {
    if (parent != (xmlNodePtr)0 && child != (xmlNodePtr)0) {
        xmlAddChild(parent,child);
    }
    return parent;
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
    } // TODO free the quarternums list?

    return list;
}

xmlNodePtr addChildList(xmlNodePtr node, xmlNodePtr list) {
    xmlAddChildList(node, list);
    return node;
}

xmlNodePtr changeNodeName(xmlNodePtr old, char *name) {
    xmlNodePtr node;
    char keyterm[64];

    node = xmlNewNode(NULL, BAD_CAST name);
    xmlNewProp(node,A_ID,xmlGetProp(old,A_ID));
    xmlNewProp(node,A_TOKENS,xmlGetProp(old,A_TOKENS));
    xmlNewProp(node,A_NUMBER,xmlGetProp(old,A_NUMBER));
    xmlNewProp(node,A_LINENUMBER,xmlGetProp(old,A_LINENUMBER));
    strncpy(keyterm, xmlGetProp(old,A_KEYTERM), 63);
    if (strcmp(name,"ordinary") == 0) {
        strcpy(keyterm,strchr(keyterm,'/') + 1);
    }
    xmlNewProp(node,A_KEYTERM,keyterm);
    xmlCopyPropList(node, old->properties);
    xmlFreeNode(old);

    return node;
}

void drop(xmlNodePtr node) {
    if (node == (xmlNodePtr)0) {
        puts("Null ptr in drop");
    } else {
        xmlFreeNode(node);
    }
}

// void ignore(char *value1 __attribute__((unused))) {
//     ; /* This is make explicit that a value is not used  */
// }
