## Blazon-Parser

This is a Flex/Bison Parser for Blazonry of British heraldry. Blazonry is a formal language developed in the middle ages to describe the appearance of Coats of Arms. Despite not having a background in computational linguistics the heralds of the day developed a structured language that can be represented by a context free grammar and thus successfully parsed with an LR parser using single token look-ahead; thus anticipating the limitations of Flex/Bison 500 years in advance.

Blazon-Parser is a combination of Flex lexer and Bison grammar that can recognise British Heraldic blazons and convert them to an Abstract Syntax Tree (AST) implemented in XML and conforming to the blazonML schema defined \[HERE]. The drawshield suite of heraldry creation programs can use this AST to render an image of the blazon.


## Files

*.l - The lexer files for flex. Given the potentially very large number of terminal symbols (i.e. words in the language) the files have been split into categories. Flex does not support include files<sup>1</sup> so all of these files are concatenated into blazon.l as part of the build process (see the Makefile)

blazon.y - is the Bison Grammar file, heavily commented

blazonML.\[ch] - Routines to construct the XML Abstract Syntax Tree conforming to blazonML.xsd, used in the Bison grammar

spelling.\[ch] - Uses an adaptive Levenstein algorithm to suggest spelling corrections for unrecognised words

errors.\[ch] - error reporting routines

Makefile - Is a standard makefile

test.sh - Is a bash script that allows for interactive testing from the command line

## Notes

(1) I am aware that Re:Flex does support include files, so that is an alternative if you don't like my approach