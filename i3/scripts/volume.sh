#!/bin/bash

# Get the current volume level using pactl
current_volume=$(pactl get-sink-volume @DEFAULT_SINK@ | grep -o -E '[0-9]+%' | head -n 1 | sed 's/%//')

# Increase the volume by 2
if [ "$1" = "-" ]; then
  new_volume=$((current_volume - 2))
elif [ "$1" = "+" ]; then
  new_volume=$((current_volume + 2))
else
  echo "Usage: $0 [ - | + ]"
  exit 1
fi

# Ensure the new volume is within the valid range (0-100%)
if [ $new_volume -lt 0 ]; then
    new_volume=0
elif [ $new_volume -gt 200 ]; then
    new_volume=200
fi
# Set the new volume using pactl
pactl set-sink-volume @DEFAULT_SINK@ ${new_volume}%

# Set the total number of steps for the progress bar
total_steps=100

# Initialize the progress
current_step=$((new_volume * total_steps / 200))

# Display the completion message
dunstify -a "Volume Control" -t 500 -h int:value:$current_step -h int:max:$total_steps ""
