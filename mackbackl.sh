#!/bin/bash
#MacBacklight
case $1 in
       -d|--display)
           if [ "$2" != "0" ]
               then
                   echo $[(($2 * 82311) / 100) % 82312] > /sys/class/backlight/gmux_backlight/brightness
           fi;;
       -k|--keyboard)
           echo "$[(($2 * 255) / 100) % 256]" > /sys/class/leds/smc\:\:kbd_backlight/brightness;;
       -h|--help)
           echo -e "MacBook 8.1 brightness helper\n\t-d\tset display brightness (0-100%)\n\t-k\tset keyboard brightness (0-100%)\n";;
       *)
           echo -e "Unknown option try -h or --help";;
esac
