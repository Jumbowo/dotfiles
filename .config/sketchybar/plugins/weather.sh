#!/usr/bin/env sh

# The $NAME variable is passed from sketchybar and holds the name of
# the item invoking this script:
# https://felixkratz.github.io/SketchyBar/config/events#events-and-scripting

LOCATION="Sydney"
TEMP=`curl -s "https://wttr.in/${LOCATION}?format=1" |sed 's|  *| |g'`
echo $TEMP

sketchybar --set $NAME label="${TEMP}"
