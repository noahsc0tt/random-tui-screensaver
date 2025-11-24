# Random TUI Screensaver

A simple shell script that launches a random terminal screensaver.

## Requirements

This script relies on multiple existing tui screensaver tools:

- [asciiquarium](https://github.com/cmatsuoka/asciiquarium)
- [cbonsai](https://github.com/mhzawadi/homebrew-cbonsai)
- [cmatrix](https://github.com/abishekvashok/cmatrix)
    - The screensaver command `cmatrix -b -c` is meant to use Japanese characters
    - If you do not have an appropriate font installed, the effect can look like a glitch (which could just be used as another screensaver effect)
- [gh-screensaver](https://github.com/vilmibm/gh-screensaver)
- [go-life](https://github.com/sachaos/go-life)
- [pipes.sh](https://github.com/pipeseroni/pipes.sh)
- [tarts](https://github.com/oiwn/tarts)
- [ttysvr](https://github.com/cxreiff/ttysvr)
    - Unlike the other tools in this list (which all use your terminal background color), ttysvr uses a black background by default
    - To override this, set the `BACKGROUND_COLOR` variable in `random-screensaver.sh`


## Installation

This is just a bash script, so:

1. Make it executable

    ```sh
    chmod +x random-screensaver.sh
    ```

2. Put it somewhere on your path
    - `/usr/local/bin` is a standard location
    - The filename should be the command you would like to invoke it by

## Usage

Run the name of the executable

## Aliases

Here are the aliases I use to launch a specific screensaver:

```bash
alias aqua='asciiquarium'
alias bonsai='cbonsai -S --life=60 -w 1'
alias matrix='cmatrix -b'
alias jmatrix='cmatrix -b -c' # or glitch if Japanese font is not installed
alias fireworks='gh screensaver -s fireworks'
alias space='gh screensaver -s starfield -- --speed 10'
alias life='go-life'
alias pipes='pipes.sh'
alias blank='tarts blank'
alias donut='tarts donut'
alias fire='tarts fire'
alias rain='tarts matrix'
alias bubbles="ttysvr -b $BACKGROUND_COLOR bubbles"
alias dvd="ttysvr -b $BACKGROUND_COLOR logo dvd"
```
