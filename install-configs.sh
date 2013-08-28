#!/bin/bash

cp zshrc      ~/.zshrc
cp dir-colors ~/.dir-colors


CONFIG_MC=~/.config/mc

mkdir -p ${CONFIG_MC}

cp ./mc/ini        ${CONFIG_MC}/ 
cp ./mc/panels.ini ${CONFIG_MC}/

MC_SKIN_FOLDER=/usr/share/mc/skins
sudo cp ./mc/solarized.ini ${MC_SKIN_FOLDER}/

git config --global alias.co checkout
git config --global push.default simple
