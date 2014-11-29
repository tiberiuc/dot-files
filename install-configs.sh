#!/bin/bash

cp zshrc              ~/.zshrc
cp dir_colors         ~/.dir_colors
cp Xdefaults          ~/.Xdefaults
cp tmux.conf          ~/.tmux.conf
cp tmux-airline.conf  ~/.tmux-airline.conf
cp shell-prompt.sh    ~/.shell-prompt.sh
cp ctags              ~/.ctags
cp Xmodmap            ~/.Xmodmap
cp set-dwm-status.sh ~/
cp layout.sh ~/
cp xmodmap.sh ~/

sudo cp mackbackl.sh /usr/bin/mackbackl


CONFIG_MC=~/.config/mc
CONFIG_URXVT=~/.urxvt
CONFIG_DWM=~/.dwm
CONFIG_FONTS=~/.fonts
#CONFIG_AWESOME=~/.config/awesome
#CONFIG_TERMINATOR=~/.config/terminator

mkdir -p ${CONFIG_MC}
mkdir -p ${CONFIG_URXVT}
mkdir -p ${CONFIG_DWM}
mkdir -p ${CONFIG_FONTS}
#mkdir -p ${CONFIG_AWESOME}
#mkdir -p ${CONFIG_TERMINATOR}

cp ./mc/ini        ${CONFIG_MC}/
cp ./mc/panels.ini ${CONFIG_MC}/

cp -r ./urxvt/* ${CONFIG_URXVT}/
cp -r ./dwm/* ${CONFIG_DWM}/
cp -r ./fonts/* ${CONFIG_FONTS}/
#cp -r ./awesome/* ${CONFIG_AWESOME}/
#cp -r ./terminator/* ${CONFIG_TERMINATOR}/

MC_SKIN_FOLDER=/usr/share/mc/skins
sudo cp ./mc/solarized.ini ${MC_SKIN_FOLDER}/

crontab ./crontab.txt

git config --global alias.co checkout
git config --global push.default simple

cp ts ~/ts

#cp -R ./powerline ~/.config/
