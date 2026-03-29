#!/bin/bash

# Script 1: System Identity Report
# Author: Gaurav
# Reg No: 24BEC10108
# Course: Open Source Software
# Chosen Software: Git

# -------- Variables --------
STUDENT_NAME="Gaurav"
REG_NO="24BEC10108"
SOFTWARE_CHOICE="Git"

# -------- System Information --------

KERNEL=$(uname -r)                 # Kernel version
DISTRO=$(cat /etc/os-release | grep PRETTY_NAME | cut -d= -f2 | tr -d '"')
USER_NAME=$(whoami)                # Current user
HOME_DIR=$HOME                     # Home directory
UPTIME=$(uptime -p)                # System uptime
DATE=$(date)                       # Current date and time

# Git license info
LICENSE="GPL v2 (General Public License)"

# -------- Output --------

echo "===================================="
echo " Open Source Audit Project"
echo " Student: $STUDENT_NAME"
echo " Reg No: $REG_NO"
echo "===================================="

echo "Linux Distribution : $DISTRO"
echo "Kernel Version     : $KERNEL"

echo "Logged User        : $USER_NAME"
echo "Home Directory     : $HOME_DIR"

echo "System Uptime      : $UPTIME"
echo "Current Date/Time  : $DATE"

echo ""
echo "Chosen Software    : $SOFTWARE_CHOICE"
echo "License            : $LICENSE"

echo ""
echo "This system runs on open source software"
echo "covered under GNU General Public License."

echo "===================================="
