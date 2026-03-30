#!/bin/bash

# Script 1: System Identity Report
# Purpose: Provides a high-level overview of the Linux environment and OS license.

# --- Variables ---
# Storing student and project information for the header
STUDENT_NAME="Paras Pitu Wadkar"
SOFTWARE_CHOICE="Git"

# --- System Information Retrieval ---
# Extracting the Operating System name from the system settings
DISTRO=$(hostnamectl | grep "Operating System" | cut -d: -f2)

# Getting the specific Linux Kernel version currently running
KERNEL=$(uname -r)

# Identifying the current active user and their primary home directory
USER_NAME=$(whoami)
USER_HOME=$HOME

# Calculating how long the system has been running since the last boot
UPTIME=$(uptime -p)

# Capturing the current system date and time
CURRENT_TIME=$(date)

# --- Display Output ---
# Printing the formatted report to the terminal
echo "===================================================="
echo "         Open Source Audit — $STUDENT_NAME          "
echo "===================================================="
echo "Target Software   : $SOFTWARE_CHOICE"
echo "Linux Distribution:$DISTRO"
echo "Kernel Version    : $KERNEL"
echo "Current User      : $USER_NAME"
echo "Home Directory    : $USER_HOME"
echo "System Uptime     : $UPTIME"
echo "Current Date/Time : $CURRENT_TIME"
echo "===================================================="

# Philosophy Note: Mentioning the open-source nature of the OS
echo "Note: This system operates on Open Source foundations,"
echo "primarily governed by the GNU General Public License (GPL)."