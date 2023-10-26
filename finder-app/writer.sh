#!/bin/bash

writefile=$1
writestr=$2

filedir=$( dirname $writefile )

mkdir -p $filedir

if [ $# -eq 2 ]; then
	if [ -d ${filedir} ]; then
		echo "$writestr" > $writefile
		exit 0
	else
		echo "${filesdir} couldn't be created."
		exit 1
	fi
else
	echo "Only two inputs are allowed."
	exit 1
fi

