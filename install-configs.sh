#!/bin/bash

cp zshrc      ~/.zshrc
cp dir_colors ~/.dir_colors
cp tmux.conf  ~/.tmux.conf
cp tmux-airline.conf  ~/.tmux-airline.conf
cp shell-prompt.sh  ~/.shell-prompt.sh
cp  ctags  ~/.ctags


CONFIG_MC=~/.config/mc
CONFIG_AWESOME=~/.config/awesome
CONFIG_TERMINATOR=~/.config/terminator

mkdir -p ${CONFIG_MC}
mkdir -p ${CONFIG_AWESOME}
mkdir -p ${CONFIG_TERMINATOR}

cp ./mc/ini        ${CONFIG_MC}/
cp ./mc/panels.ini ${CONFIG_MC}/

cp -r ./awesome/* ${CONFIG_AWESOME}/
cp -r ./terminator/* ${CONFIG_TERMINATOR}/

MC_SKIN_FOLDER=/usr/share/mc/skins
sudo cp ./mc/solarized.ini ${MC_SKIN_FOLDER}/

git config --global alias.co checkout
git config --global push.default simple

cp ts ~/ts

cp -R ./powerline ~/.config/
