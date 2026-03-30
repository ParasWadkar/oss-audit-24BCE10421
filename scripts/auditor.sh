#!/bin/bash

# Script 3: Disk and Permission Auditor
# Purpose: Audits critical system directories for permissions and size, simulating a security check.

# List of critical system directories to audit
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")
echo "=========================================="
echo "      Directory Audit Report             "
echo "=========================================="
# Loop through each directory in the list
for DIR in "${DIRS[@]}"; do
# Check if the directory actually exists on the system
if [ -d "$DIR" ]; then
# Extract permissions, owner, and group using awk
PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
# Calculate directory size (suppressing error messages for restricted folders)
SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
echo "DIR: $DIR"
echo " -> Permissions/Owner: $PERMS"
echo " -> Total Size: $SIZE"
echo "------------------------------------------"
else
echo "Warning: $DIR does not exist on this system."
fi
done
# Check if Git's common configuration directory exists (typically /etc/gitconfig or ~/.gitconfig)
echo "Checking Git Configuration Audit..."
if [ -f "/etc/gitconfig" ]; then
ls -l /etc/gitconfig | awk '{print "System Git Config: ", $1, $3, $4}'
else
echo "System-wide Git config not found in /etc."
fi