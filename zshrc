#!/bin/sh

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

ZSH_THEME="my_robbyrussell"
plugins=(git nyan zsh-syntax-highlighting archlinux)
source $ZSH/oh-my-zsh.sh
