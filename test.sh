#!/bin/bash

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
