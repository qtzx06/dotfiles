#!/bin/bash
STATE_FILE="/tmp/aerospace-layout-state"
CURRENT=$(cat "$STATE_FILE" 2>/dev/null || echo "tiling")

case "$CURRENT" in
    tiling)
        # switch all to floating
        aerospace list-windows --workspace focused --format '%{window-id}' | while read id; do
            aerospace layout floating --window-id "$id" 2>/dev/null
        done
        echo "floating" > "$STATE_FILE"
        ;;
    floating)
        # switch all to accordion (fullscreen stacked)
        aerospace list-windows --workspace focused --format '%{window-id}' | while read id; do
            aerospace layout tiling --window-id "$id" 2>/dev/null
        done
        aerospace layout accordion 2>/dev/null
        echo "accordion" > "$STATE_FILE"
        ;;
    accordion)
        # switch all to tiling
        aerospace list-windows --workspace focused --format '%{window-id}' | while read id; do
            aerospace layout tiling --window-id "$id" 2>/dev/null
        done
        aerospace layout tiles 2>/dev/null
        echo "tiling" > "$STATE_FILE"
        ;;
esac
