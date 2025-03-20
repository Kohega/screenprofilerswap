#!/bin/bash

# Path to the log file
SUNSHINE_LOG="$HOME/.config/sunshine/sunshine.log"

# Extract the last value after "mode --" and remove everything after the second "x"
resolution=$(grep "mode --" "$SUNSHINE_LOG" | tail -n 1 | awk -F"mode --" '{print $2}' | awk -F'x' '{print $1 "x" $2}')

# Display the extracted value
echo "Dernière valeur associée à 'mode --' dans $SUNSHINE_LOG : $resolution"

# Launch the program with the resolution as an argument
$HOME/.local/bin/screenprofilercmd load $resolution 0
