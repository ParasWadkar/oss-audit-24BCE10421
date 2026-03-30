#!/bin/bash

# Script 4: Log File Analyzer
# Purpose: Scans a log file for a specific keyword and provides a summary.

# Usage: ./analyzer.sh /var/log/syslog "error"
LOGFILE=$1
KEYWORD=${2:-"error"} # Default keyword is 'error' if none provided
COUNT=0
# Check if a file path was provided as an argument
if [ -z "$LOGFILE" ]; then
    echo "Error: No log file specified."
    echo "Usage: $0 /path/to/log [keyword]"
    exit 1
fi
# Loop to check if the file exists and is not empty
# This simulates a "retry" if the file is currently being created or rotated
while [ ! -s "$LOGFILE" ]; do
    echo "Waiting for log file $LOGFILE to exist or contain data..."
    sleep 2
    if [ ! -f "$LOGFILE" ]; then
        echo "File not found. Exiting."
        exit 1
    fi
done
# Reading the file line-by-line using a while-read loop
while IFS= read -r LINE; do
    # Using if-then with grep to check for the keyword (case-insensitive)
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        # Incrementing the counter variable
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"
echo "----------------------------------------------------"
echo "Analysis Complete for: $LOGFILE"
echo "Keyword '$KEYWORD' was found $COUNT times."
echo "----------------------------------------------------"
# Printing the last 5 matching lines using tail and grep
echo "Last 5 matches found:"
grep -i "$KEYWORD" "$LOGFILE" | tail -n 5