#!/bin/bash

# https://gist.github.com/vratiu/9780109
Color_Off="\033[0m"       # Text Reset
Black="\033[0;30m"        # Black
Red="\033[0;31m"          # Red
Green="\033[0;32m"        # Green
Yellow="\033[0;33m"       # Yellow
Blue="\033[0;34m"         # Blue
Purple="\033[0;35m"       # Purple
Cyan="\033[0;36m"         # Cyan
White="\033[0;37m"        # White

function symlink() {
    ln -sf $1 $2
}

function log_start() {
    echo -e "${Blue}$1${Color_Off}"
}

function log_end() {
    echo -e "${Green}$1${Color_Off}"
}

function eval_brew() {
    eval "$(/opt/homebrew/bin/brew shellenv)"
    eval "$(fnm env --use-on-cd)"
}
