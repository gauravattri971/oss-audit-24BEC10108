#!/bin/bash

# Script 5: Open Source Manifesto Generator
# Author: Gaurav
# Reg No: 24BEC10108

echo "Open Source Manifesto Generator"
echo "--------------------------------"

# User input

read -p "Name one open source tool you use: " TOOL

read -p "Freedom means (one word): " FREEDOM

read -p "What would you build and share: " BUILD

DATE=$(date '+%d %B %Y')

OUTPUT="manifesto_gaurav.txt"

# Manifesto creation

echo "Open Source Manifesto" > $OUTPUT

echo "Generated on: $DATE" >> $OUTPUT

echo "" >> $OUTPUT

echo "I use $TOOL as part of my daily work." >> $OUTPUT

echo "To me freedom means $FREEDOM." >> $OUTPUT

echo "I want to build $BUILD and share it with the community." >> $OUTPUT

echo "I believe open source enables innovation and learning." >> $OUTPUT

echo "" >> $OUTPUT

echo "Name: Gaurav" >> $OUTPUT

echo "Reg No: 24BEC10108" >> $OUTPUT

# Alias concept example
# alias gitlog="git log --oneline"

echo ""
echo "Manifesto saved to $OUTPUT"

cat $OUTPUT
