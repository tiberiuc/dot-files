#!/bin/sh

export DISPLAY=:0; xsetroot -name "Mem $(free -m | grep '^Mem' | awk '{$2/=1024;$3/=1024;printf "%.2f GB / %.2f GB",$3,$2 }') | CPU $(top -bn 1 | grep 'Cpu' | tr -d 'usy,' | awk '{print "user " $2 ", sys " $3}') | Bat $(upower -i `upower -e | grep BAT` | grep --color=never -E "percentage" | cut -d " " -f 15) | $( date +"%a %b %R")" > /dev/null 2>&1

