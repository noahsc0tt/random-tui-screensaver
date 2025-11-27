# Random TTY Screensaver

A simple shell script that launches a random terminal screensaver.

## Requirements

This script relies on multiple existing screensavers:

- [arttime](https://github.com/poetaman/arttime)
- [asciiquarium](https://github.com/cmatsuoka/asciiquarium)
- [astroterm](https://github.com/da-luce/astroterm)
- [cava](https://github.com/karlstav/cava)
- [cbonsai](https://github.com/mhzawadi/homebrew-cbonsai)
- [cmatrix](https://github.com/abishekvashok/cmatrix)
    - The screensaver command `cmatrix -b -c` is meant to use Japanese characters
    - If you do not have an appropriate font installed, the effect can look like a glitch (which could just be used as another screensaver effect)
- [gh-screensaver](https://github.com/vilmibm/gh-screensaver)
- [go-life](https://github.com/sachaos/go-life)
- [pipes.sh](https://github.com/pipeseroni/pipes.sh)
- [sssnake](https://github.com/AngelJumbo/sssnake)
- [tarts](https://github.com/oiwn/tarts)
- [termsaver](https://github.com/brunobraga/termsaver)
- [ttysvr](https://github.com/cxreiff/ttysvr)


## Installation

This is just a bash script, so:

1. Clone this repository
   ```sh
   git clone https://github.com/noahsc0tt/random-tui-screensaver
   cd random-tui-screensaver
   ```

2. Make the script executable

    ```sh
    chmod +x random-screensaver.sh
    ```

3. Put it somewhere on your path
   ```sh
    cp random-screensaver.sh /usr/local/bin/screensaver
    ```
    The filename should be the command you would like to start a screensaver with

## Usage

  Run the name of the executable
  ```sh
  screensaver
  ```

- The `$BACKGROUND_COLOR`, `$CITY`, and `$MESSAGE` variables in `random-screensaver.sh` can be customised to your liking
  
- If you don't like any of the screensavers, simply `# comment` them out of `random-screensaver.sh`

- If you want to add a screensaver, make a PR for it!
  


## Screensavers

Here are all the screensaver commands, along with the aliases I use for each of them:

```bash
alias asciiart="arttime -t '$MESSAGE' -a $ARTTIME_ART --ac 4 --tc 2 --nolearn"
alias aqua='asciiquarium'
alias space="astroterm -c -u -m -s 1000 -f 60 --city=$CITY"
alias sound='cava'
alias bonsai='cbonsai -S --life=60 -w 1'
alias matrix='cmatrix -b'
alias jmatrix='cmatrix -b -c' # or glitch if Japanese font is not installed
alias fireworks='gh screensaver -s fireworks'
alias message="gh screensaver -s marquee -- --message=$MESSAGE"
alias stars='gh screensaver -s starfield -- --speed 10'
alias life='go-life'
alias pipes='pipes.sh'
alias snake='sssnake -m screensaver'
alias blank='tarts blank'
alias donut='tarts donut'
alias fire='tarts fire'
alias rain='tarts matrix'
alias clock='termsaver clock'
alias text="termsaver randtxt -w '$MESSAGE'"
alias starwars='termsaver starwars'
alias bubbles="ttysvr -b $BACKGROUND_COLOR bubbles"
alias dvd="ttysvr -b $BACKGROUND_COLOR logo dvd"
alias weather="clear && curl wttr.in/$CITY\?F"
```
