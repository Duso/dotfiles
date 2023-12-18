#!/bin/bash

SETUP=$(autorandr --detected)
M1=DisplayPort-0
M2=DisplayPort-1
M3=HDMI-A-0

if [ "$SETUP" = "desktop" ]; then
	bspc monitor $M1 -d 1 2 3 4 5 
	bspc monitor $M2 -d 6 7 8 9 10
elif [ "$SETUP" = "wfh" ]; then
	bspc monitor $M2 -d 1 2 3 4 5 6 7 8 9 10
elif [ "$SETUP" = "proj" ]; then
	bspc monitor $M1 -d 1 2 3 4 5
	bspc monitor $M2 -d 6 7 8 9 10
	bspc monitor $M3 -d 11 12
else
	echo 'unknown monitor setup'
fi
