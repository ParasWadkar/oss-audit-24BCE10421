#!/bin/bash

# Script 2: FOSS Package Inspector
# Purpose: Checks for the presence of a specific open-source package and provides details.

PACKAGE="git"
# Check if the package is installed (compatible with Debian/Ubuntu systems)
if dpkg -l $PACKAGE &>/dev/null; then
echo "$PACKAGE is installed."
# Display version and summary info using grep to filter output
dpkg -s $PACKAGE | grep -E 'Package|Version|Description'
else
echo "$PACKAGE is NOT installed. Please install it to continue the audit."
fi
# Case statement to provide a philosophy note based on the package name
case $PACKAGE in
git)
echo "Git: The distributed version control system that redefined collaboration."
;;
httpd)
echo "Apache: The web server that built the open internet."
;;
mysql)
echo "MySQL: Open source at the heart of millions of applications."
;;
vlc)
echo "VLC: The multimedia player that proves community-driven tools can do anything."
;;
*)
echo "Selected software is a vital part of the FOSS ecosystem."
;;
esac