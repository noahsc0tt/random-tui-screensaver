# Random TUI Screensaver

A simple shell script that launches a random terminal screensaver.

## Requirements

Multiple existing tui screensaver tools are randomised:

- [asciiquarium](https://github.com/cmatsuoka/asciiquarium)
- [cbonsai](https://github.com/mhzawadi/homebrew-cbonsai)
- [cmatrix](https://github.com/abishekvashok/cmatrix)
    - The screensaver command `cmatrix -b -c` is meant to use Japanese characters
    - If you do not have an appropriate font installed, the effect can look like a glitch (which could just be used as another screensaver effect)
- [gh-screensaver](https://github.com/vilmibm/gh-screensaver)
- [pipes.sh](https://github.com/pipeseroni/pipes.sh)
- [tarts](https://github.com/oiwn/tarts)
- [ttysvr](https://github.com/cxreiff/ttysvr)
    - Unlike the other tools in this list (which all use your terminal background color), ttysvr uses a black background by default 
    - To override this, an explicit background colour can be passed with the -b flag
    - In `random-screensaver.sh`, replace `1a1b26` (I use [tokyonight](https://github.com/folke/tokyonight.nvim/tree/main/extras)) with the hex of your terminal background colour
 
## Installation

This is just a bash script, so:
1. Make it executable 
   - `chmod +x random-screensaver.sh`
2. Put it somewhere on your path
    - `/usr/local/bin` is a standard location
    - The filename should be the command you would like to invoke it by

## Usage

Run the name of the executable, such as `screensaver`
