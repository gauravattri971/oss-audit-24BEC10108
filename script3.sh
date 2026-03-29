#!/bin/bash

# Script 3: Disk and Permission Auditor
# Author: Gaurav
# Reg No: 24BEC10108

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "Directory Audit Report"
echo "--------------------------------"

for DIR in "${DIRS[@]}"
do

if [ -d "$DIR" ]
then

PERMS=$(ls -ld $DIR | awk '{print $1,$3,$4}')
SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)

echo "$DIR"
echo "Permissions/Owner : $PERMS"
echo "Size              : $SIZE"

echo "--------------------------------"

else

echo "$DIR not found"

fi

done

# Git config directory check

GIT_CONFIG="$HOME/.gitconfig"

echo "Checking Git config file..."

if [ -f "$GIT_CONFIG" ]
then

ls -l $GIT_CONFIG

else

echo "Git config not found"

fi
