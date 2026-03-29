#!/bin/bash

# Script 2: FOSS Package Inspector
# Author: Gaurav
# Reg No: 24BEC10108

PACKAGE="git"

echo "Checking package..."

# Check installation (works on Ubuntu/Debian)
if dpkg -l | grep -w $PACKAGE > /dev/null
then
    echo "$PACKAGE is installed"

    # Show version and details
    git --version

else
    echo "$PACKAGE is NOT installed"
fi

# Case statement description

case $PACKAGE in

git)
echo "Git: Distributed version control system built by Linus Torvalds"
;;

apache2)
echo "Apache: Web server powering open internet"
;;

mysql)
echo "MySQL: Open source database"
;;

firefox)
echo "Firefox: Open web browser"
;;

*)
echo "Unknown package"
;;

esac
