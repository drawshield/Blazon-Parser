#include <string.h>
#include <stdio.h>
/* For INT_MAX */
#include <limits.h>
#include "spelling.h"

char *possibles[] = {
"and",
"annuletty",
"annulo",
"aquilated",
"argent",
"arrondi",
"asmany",
"azure",
"ball",
"bar",
"barrulet",
"barruly",
"barry",
"base",
"basket",
"baton",
"bend",
"bendlet",
"bendsin",
"bendwise",
"bendy",
"between",
"bezanty",
"billetty",
"bis",
"black",
"blue",
"bordure",
"bronze",
"brown",
"brunatre",
"buff",
"canadian",
"cantell",
"canton",
"carnation",
"celestial",
"cendree",
"chape",
"chausse",
"checky",
"chevron",
"chevronel",
"chevronny",
"chevrons",
"chevronwise",
"chief",
"close",
"closet",
"copper",
"counter",
"counterchanged",
"countercoloured",
"couple",
"crancelin",
"crimson",
"cross",
"crusilly",
"dance",
"dexter",
"double",
"ecclesiastical",
"eight",
"eighteen",
"eleven",
"endorse",
"enty",
"ermine",
"ermined",
"ermines",
"erminites",
"erminois",
"estencely",
"estoilly",
"ferrated",
"fess",
"fifteen",
"fifty",
"fillet",
"five",
"flaunch",
"ford",
"forty",
"four",
"fourteen",
"fretty",
"fusily",
"gold",
"gore",
"gorge",
"goutty",
"graded",
"grady",
"graft",
"gray",
"green",
"grid",
"grillage",
"gules",
"gurges",
"gusset",
"guzy",
"gyron",
"gyronny",
"honeycombed",
"humet",
"hurty",
"indented",
"inescutcheon",
"iron",
"latticed",
"lead",
"lozengy",
"maily",
"masculy",
"masoned",
"mountain",
"mulletty",
"murrey",
"nine",
"nineteen",
"nordic",
"ochre",
"one",
"or",
"orle",
"pale",
"palet",
"palewise",
"pall",
"pallium",
"paly",
"papelonny",
"party",
"pean",
"per",
"piebald",
"pied",
"pile",
"pilewise",
"pily",
"pink",
"platy",
"plumetty",
"point",
"pommy",
"potent",
"potenty",
"ppr",
"proper",
"purple",
"purpure",
"quarter",
"quarterly",
"red",
"riband",
"rose",
"roundelly",
"sable",
"saltire",
"saltirewise",
"sanguine",
"scaly",
"scarpe",
"seme",
"senois",
"seven",
"seventeen",
"shakefork",
"silver",
"sinister",
"sinople",
"six",
"sixteen",
"sixty",
"some",
"square",
"steel",
"tanned",
"tapisse",
"tawny",
"ten",
"tenne",
"thirteen",
"thirty",
"three",
"tierce",
"tierced",
"torty",
"transmuted",
"treille",
"tressure",
"trimount",
"twelve",
"twenty",
"two",
"vair",
"vaire",
"vairy",
"verde",
"verdy",
"vert",
"vetu",
"wavy",
"whirlpool",
"white",
"yellow",
".", /* MUST BE LAST */
};

static int distance (const char * word1,
              int len1,
              const char * word2,
              int len2,
              int max)
{
    int matrix[2][len2 + 1];
    int i;
    int j;

    /*
      Initialize the 0 row of "matrix".

        0  
        1  
        2  
        3  

     */

    for (j = 0; j <= len2; j++) {
        matrix[0][j] = j;
    }

    /* Loop over column. */
    for (i = 1; i <= len1; i++) {
        char c1;
        /* The first value to consider of the ith column. */
        int min_j;
        /* The last value to consider of the ith column. */
        int max_j;
        /* The smallest value of the matrix in the ith column. */
        int col_min;
        /* The next column of the matrix to fill in. */
        int next;
        /* The previously-filled-in column of the matrix. */
        int prev;

        c1 = word1[i-1];
        min_j = 1;
        if (i > max) {
            min_j = i - max;
        }
        max_j = len2;
        if (len2 > max + i) {
            max_j = max + i;
        }
        col_min = INT_MAX;
        next = i % 2;
        if (next == 1) {
            prev = 0;
        }
        else {
            prev = 1;
        }
        matrix[next][0] = i;
        /* Loop over rows. */
        for (j = 1; j <= len2; j++) {
            if (j < min_j || j > max_j) {
                /* Put a large value in there. */
                matrix[next][j] = max + 1;
            }
            else {
                char c2;

                c2 = word2[j-1];
                if (c1 == c2) {
                    /* The character at position i in word1 is the same as
                       the character at position j in word2. */
                    matrix[next][j] = matrix[prev][j-1];
                }
                else {
                    /* The character at position i in word1 is not the
                       same as the character at position j in word2, so
                       work out what the minimum cost for getting to cell
                       i, j is. */
                    int delete;
                    int insert;
                    int substitute;
                    int minimum;

                    delete = matrix[prev][j] + 1;
                    insert = matrix[next][j-1] + 1;
                    substitute = matrix[prev][j-1] + 1;
                    minimum = delete;
                    if (insert < minimum) {
                        minimum = insert;
                    }
                    if (substitute < minimum) {
                        minimum = substitute;
                    }
                    matrix[next][j] = minimum;
                }
            }
            /* Find the minimum value in the ith column. */
            if (matrix[next][j] < col_min) {
                col_min = matrix[next][j];
            }
        }
        if (col_min > max) {
            /* All the elements of the ith column are greater than the
               maximum, so no match less than or equal to max can be
               found by looking at succeeding columns. */
            return max + 1;
        }
    }
    return matrix[len1 % 2][len2];
}

int getPossibles(char *buffer, char *badWord) {
    int i = 0, count = 0, levenLimit;
    
    buffer[0] = '\0';
    int badLen = strlen(badWord);
    if (badLen <= 2) return 0;
    switch (badLen) {
        case 3:
            levenLimit = 1;
            break;
        case 4:
            levenLimit = 2;
            break;
        case 5:
        case 6:
            levenLimit = 3;
            break;
        case 7:
            levenLimit = 4;
            break;
        default:
            levenLimit = 5;
            break;
    }

    while (possibles[i][0] != '.' ) {
        if (distance(badWord, badLen, possibles[i], strlen(possibles[i]), levenLimit) < levenLimit) {
            count++;
            strcat(buffer,possibles[i]);
            strcat(buffer,", ");
        }
        i++;
    }
    return count;
}
