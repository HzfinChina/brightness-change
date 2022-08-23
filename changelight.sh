#!/bin/bash
currentbright=$(xrandr --verbose | grep -i bright | grep -oP '\d*\.\d+')
if test $1 -ge 0
then
    xrandr --output HDMI-1 --brightness `echo $currentbright'+0.05' | bc`
else 
    xrandr --output HDMI-1 --brightness `echo $currentbright'-0.05' | bc`
fi
