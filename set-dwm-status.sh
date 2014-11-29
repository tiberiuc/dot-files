#!/bin/sh

# icons at  https://www.dropbox.com/s/9iysh2i0gadi4ic/icons.pdf


base03="#002b36"
base02="#073642"
base01="#586e75"
base00="#657b83"
base0="#839496"
base1="#93a1a1"
base2="#eee8d5"
base3="#fdf6e3"
yellow="#b58900"
orange="#cb4b16"
red="#dc322f"
magenta="#d33682"
violet="#6c71c4"
blue="#268bd2"
cyan="#2aa198"
green="#859900"


memory () {
    echo -e '\uf16c ' $(free -m | grep '^Mem' | awk '{$2/=1024;$3/=1024;printf "%.2f / %.2f GB",$3,$2 }')
}

cpu () {
    echo -e '\uf0e4 ' $(top -bn 1 | grep 'Cpu' | tr -d 'usy,' | awk '{print "user " $2 ", sys " $3}')
}

power () {
    echo -e '\uf215 ' $(upower -i `upower -e | grep BAT` | grep --color=never -E "percentage" | cut -d " " -f 15)
}


show_date () {
    echo $(date +"%a %b %d %R")
}

arrow () {
    prevColor=$1
    color=$2
    echo "<span color=\"$color\" bgcolor=\"$prevColor\"></span>"
}


section () {
    prevColor=$1
    color=$2
    text=$3
    echo "$(arrow $prevColor $color)<span color=\"white\" bgcolor=\"$color\"> $text </span>"
}

section_memory () {
    echo "$(section $base02 $base01 "$(memory)")"
}


section_cpu () {
    echo "$(section $base01 $base02 "$(cpu)")"
}

section_power () {
    echo "$(section $base02 $base1 "$(power)")"
}

section_date () {
    echo "$(section $base1 $base00 "$(show_date)")"
}

status="$(section_memory)$(section_cpu)$(section_power)$(section_date)"

export DISPLAY=:0; xsetroot -name "$status" > /dev/null 2>&1


