#!/usr/bin/env bash

cmds=(
    'asciiquarium'
    'tarts blank'
    'cbonsai -S --life=60 -w 1'
    'ttysvr -b 1a1b26 bubbles'
    'tarts donut'
    'ttysvr -b 1a1b26 logo dvd'
    'tarts fire'
    'gh screensaver -s fireworks'
    'cmatrix -b -c'
    'cmatrix -b'
    'pipes.sh'
    'tarts matrix'
    'gh screensaver -s starfield -- --speed 10'
)

eval "${cmds[RANDOM % ${#cmds[@]}]}"
