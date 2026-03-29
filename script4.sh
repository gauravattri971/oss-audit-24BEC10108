#!/bin/bash

# Script 4: Log File Analyzer
# Author: Gaurav
# Reg No: 24BEC10108

LOGFILE=$1
KEYWORD=${2:-error}

COUNT=0

if [ ! -f "$LOGFILE" ]
then

echo "File not found"
exit 1

fi

# Check empty file retry (do-while style)

while [ ! -s "$LOGFILE" ]
do

echo "File is empty. Waiting..."
sleep 3

done

# Read file line by line

while IFS= read -r LINE
do

if echo "$LINE" | grep -iq "$KEYWORD"
then

COUNT=$((COUNT+1))

fi

done < "$LOGFILE"

echo "Total occurrences of $KEYWORD : $COUNT"

echo ""
echo "Last 5 matching lines:"

grep -i "$KEYWORD" "$LOGFILE" | tail -5
