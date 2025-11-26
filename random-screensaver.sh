#!/usr/bin/env bash

BACKGROUND_COLOR='000000'

SCREENSAVERS=(
    "asciiquarium"
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
