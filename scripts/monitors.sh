#!/bin/sh

# TODO: 3 monitir setup

# TODO: use autorandr output?
if xrandr | grep "DisplayPort-1 connected"; then
	for i in 1 2 3 4 5
	do
		bspc desktop $i -m DisplayPort-1
	done
	for i in 6 7 8 9 10
	do
		bspc desktop $i -m HDMI-A-0
	done
	bspc monitor DisplayPort-1 -o 1 2 3 4 5
	bspc monitor HDMI-A-0 -o 6 7 8 9 10
	bspc desktop 11 -r
	bspc desktop Desktop -r
	bars.sh desktop &
elif xrandr | grep "HDMI2 disconnected"; then
	bspc monitor HDMI2 -a 0
	bspc desktop -f 0
	for i in 1 2 3 4 5 6 7 8 9 10
	do
		bspc desktop $i -m eDP1
	done
	bspc monitor eDP1 -o 1 2 3 4 5 6 7 8 9 10
	bspc desktop -f last
	bspc monitor HDMI2 -r
	bars.sh laptop &
else
	for i in 1 2 3 4 5
	do
		bspc desktop $i -m HDMI2
	done
	for i in 6 7 8 9 10
	do
		bspc desktop $i -m eDP1
	done
	bspc monitor HDMI2 -o 1 2 3 4 5
	bspc monitor eDP1 -o 6 7 8 9 10
	bspc desktop 11 -r
	bspc desktop Desktop -r
	bars.sh home &
fi

# set wallpaper
feh --bg-scale --no-fehbg Pictures/wallpapers/valley-frost.png
