#!/bin/bash

# Script 5: Open Source Manifesto Generator
# Purpose: Interactive script to generate a personalized OSS philosophy document.

# --- Interactive Questions ---
# Using the 'read' command to capture user input into variables
echo "===================================================="
echo "      The Open Source Manifesto Generator           "
echo "===================================================="
echo "Answer three questions to define your philosophy:"
echo ""

read -p "1. What open-source tool do you use every day? (e.g., Git): " TOOL
read -p "2. In one word, what does 'freedom' mean to you?: " FREEDOM
read -p "3. What is one thing you would build and share freely?: " BUILD

# --- Data Processing ---
# Capturing the current date for the document header
DATE=$(date '+%d %B %Y')

# Creating a unique filename based on the current system user
OUTPUT="manifesto_$(whoami).txt"

# --- Generating the Content ---
# Using echo and redirection (>) to write the paragraph to a file
echo "OPEN SOURCE MANIFESTO" > "$OUTPUT"
echo "Generated on: $DATE" >> "$OUTPUT"
echo "----------------------------------------------------" >> "$OUTPUT"
echo "As a developer, I believe that software like $TOOL is the foundation of modern innovation." >> "$OUTPUT"
echo "To me, true software freedom means '$FREEDOM'—the right to study, change, and distribute code." >> "$OUTPUT"
echo "In the spirit of collaboration, I commit to building $BUILD and sharing it with the world." >> "$OUTPUT"
echo "----------------------------------------------------" >> "$OUTPUT"

# --- Display Result ---
echo ""
echo "Success! Your manifesto has been saved to: $OUTPUT"
echo "Displaying file content below:"
echo "----------------------------------------------------"
cat "$OUTPUT"

# Note on Aliases: To run this script faster, one could add an alias 
# to their .bashrc file: alias mymanifesto='./manifesto.sh'