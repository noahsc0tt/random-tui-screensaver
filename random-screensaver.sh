#!/usr/bin/env bash

ARTTIME_ART='castle3'
BACKGROUND_COLOR='000000'
CITY='london'
MESSAGE='"The name of the LORD is a strong tower; the righteous run to it and are safe." - Proverbs 18:10'

SCREENSAVERS=(
    "arttime -t '$MESSAGE' -a $ARTTIME_ART --ac 4 --tc 2"
    "astroterm -c -u -m -s 1000 -f 60 --city=$CITY"
    "asciiquarium"
    "cava"
    "cbonsai -S --life=60 -w 1"
    "cmatrix -b"
    "cmatrix -b -c"
    "gh screensaver -s fireworks"
    "gh screensaver -s starfield -- --speed 10"
    "go-life"
    "pipes.sh"
    "sssnake -m screensaver"
    "tarts blank"
    "tarts donut"
    "tarts fire"
    "tarts matrix"
    "ttysvr -b $BACKGROUND_COLOR bubbles"
    "ttysvr -b $BACKGROUND_COLOR logo dvd"
)

index=$(( RANDOM % ${#SCREENSAVERS[@]} ))
exec bash -c "${SCREENSAVERS[$index]}"
