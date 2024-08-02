#!/bin/bash

# List all screen sessions and their PIDs
screen_list=$(screen -ls | grep -oP '\d+\.\w+')

# Check if there are any screen sessions
if [ -n "$screen_list" ]; then
    echo "Deleting all screen sessions..."
    
    # Loop through each screen session and detach and kill it
    for session in $screen_list; do
        screen -S "$session" -X quit
    done
    
    echo "All screen sessions deleted."
else
    echo "No screen sessions found."
fi