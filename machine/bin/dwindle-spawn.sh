#!/bin/bash
# Hyprland-style dwindle: auto-alternate split direction based on focused window dimensions
# If window is wider than tall → split vertical (new window goes right)
# If taller than wide → split horizontal (new window goes below)

# Get focused window bounds: {position, size} → "x, y, w, h"
BOUNDS=$(osascript -e 'tell application "System Events" to tell (first process whose frontmost is true) to get {position, size} of front window' 2>/dev/null)

if [ -n "$BOUNDS" ]; then
    W=$(echo "$BOUNDS" | awk -F', ' '{print $3}')
    H=$(echo "$BOUNDS" | awk -F', ' '{print $4}')

    if [ "$W" -ge "$H" ] 2>/dev/null; then
        aerospace split horizontal
    else
        aerospace split vertical
    fi
fi

# Spawn new Ghostty window
osascript -e 'tell application "System Events" to tell process "Ghostty" to click menu item "New Window" of menu "File" of menu bar 1'
