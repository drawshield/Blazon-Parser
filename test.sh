#!/bin/bash

echo "Enter a blazon, finish with an empty line."
echo "Enter a empty line alone to repeat previous blazon."
echo "Enter q on its own to quit."
echo "enter >output.txt to redirect output to a named file"
echo "enter <blazon.txt to read a blazon from a name file"
echo "===================================================="

prev='vert'
while true
do
	blazon=''
	outfile=''

	echo -n ": "
	while read line
	do
	  echo -n ": "
	  [ -z "$line" ] && break
	  if [ "$line" = "q" ]; then
	  	exit
	  fi
	  if [ ${line:0:1} = '<' ]; then
	    infile=${line:1}
	    blazon=$(<$infile)
	    break
	  fi
	  if [ ${line:0:1} = '>' ]; then
	    outfile=${line:1}
	    continue
	  fi
	  blazon+=$line
	  blazon+='\n'
	done
	[ -z "$blazon" ] && blazon=$prev && echo -e $blazon
	if [ -n "$outfile" ]; then
	  echo -e $blazon | ./blazon > $outfile
	else
	  echo -e $blazon | ./blazon
	fi
	prev=$blazon
done
