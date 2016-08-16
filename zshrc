#!/bin/sh

export ZSH=$HOME/.oh-my-zsh
export XDG_CONFIG_HOME=$HOME/.config
export PATH=$PATH:$HOME/.scripts
export PATH=$PATH:$XDG_CONFIG_HOME/bspwm
export PANEL_FIFO=/tmp/panel-fifo
 
ZSH_THEME="my_robbyrussell"
plugins=(git zsh-syntax-highlighting archlinux)

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/jieverson/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

source $ZSH/oh-my-zsh.sh