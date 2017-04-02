#!/bin/bash

if [ $# != 2 ]; then
	echo "USAGE: $(basename $0) MODULE_CODE HOURS_SPENT"
	exit 1
fi

TEMPLATE="template.pdf"
NUMBER="YOUR_STUDENT_NUMBER_HERE"
CODE=$1
DATE=$(date -I) # ISO 8601 FTW
HOURS=$2
GROUP=""

if [ ! -f $TEMPLATE ]; then
	TEMPLATE="/usr/share/mkcoversheet/$TEMPLATE"
fi

sed "s/\[NUMBER\]/$NUMBER/;s/\[CODE\]/$CODE/;s/\[DATE\]/$DATE/;s/\[HOURS\]/$HOURS/;s/\[GROUP\]/$GROUP/" $TEMPLATE > "$NUMBER.pdf"

echo "$NUMBER.pdf generated successfully"
