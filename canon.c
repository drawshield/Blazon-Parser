#include <stdio.h>
#include <libxml/parser.h>
#include <libxml/tree.h>
#include "blazonML.h"
#include <string.h>
#include "canon.h"

/*
 * Create a "canonical" (English language) version of the blazon by
 * walking the blazonML abstract syntax tree
 */

int strput(char *buffer, char *string) {
    strcat(buffer, string);
    strcat(buffer, WORD_SEPARATOR);
    return strlen(string) + strlen(WORD_SEPARATOR);
}

int getKeyterm(xmlNodePtr node, char *buffer) {
    if (strcmp(node->name, E_COLOUR) == 0 && xmlHasProp(node, A_KEYTERM)) {
        return strput(buffer, xmlGetProp(node,A_KEYTERM));
    } else {
        return 0;
    }
}

int getTincture(xmlNodePtr tincture, char *buffer, int bufSize) {
    xmlNodePtr cur;
    int bufLeft = bufSize;

    cur = tincture->children;
    while (cur && bufLeft > BUFFER_LIMIT) {
        if ( (strcmp(cur->name, "colour") == 0)
            || (strcmp(cur->name, "fur") ==0)
            ) {
                bufLeft -= getKeyterm(cur, buffer);
        } else if (strcmp(cur->name, "proper") == 0) {
            bufLeft -= strput(buffer, "proper");
        }
        cur = cur->next;        
    }
    return bufLeft;
}


int getTinctures(xmlNodePtr node, char *buffer, int bufSize) {
    xmlNodePtr cur, tincture;

    int bufLeft = bufSize;

    cur = node->children;
    while (cur) {
        bufLeft -= getTincture(cur, buffer, bufLeft);
        cur = cur->next;
    }
    return bufLeft;
}


int getSimple(xmlNodePtr simple, char *buffer, int bufSize) {
    xmlNodePtr cur, objects;
    int bufLeft = bufSize;

    cur = simple->children;
    while (cur) {
        if (strcmp(cur->name, "field") == 0) {
            bufLeft -= strput(buffer, "On a field of");
            bufLeft -= getTinctures(cur, buffer, bufLeft);
        } else if (strcmp(cur->name, "objects") ==0) {
            objects = cur;
        }
        cur = cur->next;        
    }
    return bufLeft;
}


int getShield(xmlNodePtr shield, char *buffer, int bufSize) {
    xmlNodePtr cur, type, overall;
    int bufLeft = bufSize;

    cur = shield->children;
    while (cur) {
        if (strcmp(cur->name, "simple") == 0) {
            bufLeft -= getSimple(cur, buffer, bufLeft);
        } else if (strcmp(cur->name, "overall") ==0) {
            overall = cur;
        }
        cur = cur->next;        
    }
    return bufLeft;
}

int canonical(xmlNodePtr root, char *buffer, int bufSize) {
    int bufLeft = bufSize -1;

    xmlNodePtr cur, shield, instructions; /* achievement etc. */

    cur = root->children;
    while (cur) {
        if (strcmp(cur->name, "shield") == 0) {
            shield = cur;
        } else if (strcmp(cur->name, "instructions") ==0) {
            instructions = cur;
        } /* else */
                /* not handled (yet) */
        cur = cur->next;
    }

    bufLeft -= getShield(shield, buffer, bufLeft);
    return 0;
}