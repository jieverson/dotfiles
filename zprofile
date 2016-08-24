#!/bin/sh

export ZSH=$HOME/.oh-my-zsh
export XDG_CONFIG_HOME=$HOME/.config
export PATH=$PATH:$HOME/.scripts
export PATH=$PATH:$XDG_CONFIG_HOME/bspwm
export PANEL_FIFO=/tmp/panel-fifo

#disable pc speaker beep
xset -b

exec startx
