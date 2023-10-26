#!/bin/bash

filesdir=$1
searchstr=$2

if [ $# -eq 2 ]; then
	if [ -d ${filesdir} ]; then
		cd ${filesdir}
		x=$( grep -l -r "${searchstr}" * | wc -l )
		y=$( grep -r "${searchstr}" * | wc -l )
		echo "The number of files are $x and the number of matching lines are $y"
		
	else
		echo "${filesdir} DOESN'T EXIST!"
		exit 1
	fi
else
	echo "Only two inputs are allowed."
	exit 1
fi

