#!/bin/bash

# Path to the Openbox configuration file
CONFIG_FILE="$HOME/.config/openbox/bl-rc.xml"

# Backup the original configuration file
cp "$CONFIG_FILE" "$CONFIG_FILE.bak"

# Use sed to find and replace font sizes or add a default font size if not present
sed -i -E 's|<font>([^<]*)|<font> \1; 18pt|; t; s|<font></font>|<font> sans-serif; 18pt|g' "$CONFIG_FILE"

# Print a message to indicate completion
echo "Font sizes updated to 18pt in $CONFIG_FILE. Backup created as $CONFIG_FILE.bak."
