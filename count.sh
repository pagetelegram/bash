#!/bin/bash

# Initialize total duration in seconds
total_duration=0

# Loop through all mp3 files in the current directory
for file in *.mp3; do
    if [[ -f "$file" ]]; then
        # Get the duration of the mp3 file in seconds
        duration=$(ffprobe -v error -show_entries format=duration -of csv=p=0 "$file")
        
        # Add the duration to the total
        total_duration=$(echo "$total_duration + $duration" | bc)
    fi
done

# Convert total duration from seconds to hours:minutes:seconds format
hours=$(echo "$total_duration / 3600" | bc)
minutes=$(echo "($total_duration % 3600) / 60" | bc)
seconds=$(echo "$total_duration % 60" | bc)

# Display the total playtime
printf "Total playtime: %02d:%02d:%02d\n" $hours $minutes $seconds
