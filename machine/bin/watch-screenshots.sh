#!/bin/bash
# Watch screenshots folder and auto-copy new screenshots to clipboard
DIR="$HOME/Desktop/workspace/screenshots"
fswatch -0 "$DIR" | while IFS= read -r -d '' file; do
    if [[ "$file" == *.png ]]; then
        sleep 0.5
        osascript -e "set the clipboard to (read (POSIX file \"$file\") as «class PNGf»)"
    fi
done
