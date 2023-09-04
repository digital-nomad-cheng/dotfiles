#!/usr/bin/sh

NVIM_CONFIG=~/.config/nvm
export NVIM_CONFIG

rm -rf $NVIM_CONFIG

mkdir -p $NVIM_CONFIG/share
mkdir -p $NVIM_CONFIG/nvim

stow --restow --target=$NVIM_CONFIG/nvim .

alias nvm='XDG_DATA_HOME=$NVIM_CONFIG/share XDG_CONFIG_HOME=$NVIM_CONFIG nvim' 

export nvm
