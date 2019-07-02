#!/bin/sh

if xrandr | grep "HDMI1 disconnected"; then
	xrandr --output HDMI1 --off --output VIRTUAL1 --off --output eDP1 --primary --mode 1920x1080 --pos 0x0 --rotate normal
	bspc monitor HDMI1 -a 0
	bspc desktop -f 0
	for i in 1 2 3 4 5 6 7 8
	do
		bspc desktop $i -m eDP1
	done
	bspc monitor eDP1 -o 1 2 3 4 5 6 7 8
	bspc desktop -f last
	bspc monitor HDMI1 -r
	$HOME/.scripts/bars.sh laptop &
else
	xrandr --output HDMI1 --mode 1920x1080 --pos 1920x0 --rotate normal --output VIRTUAL1 --off --output eDP1 --primary --mode 1920x1080 --pos 0x0 --rotate normal
	for i in 1 2 3 4
	do
		bspc desktop $i -m HDMI1
	done
	for i in 5 6 7 8
	do
		bspc desktop $i -m eDP1
	done
	bspc monitor HDMI1 -o 1 2 3 4
	bspc monitor eDP1 -o 5 6 7 8
	bspc desktop 9 -r
	bspc desktop Desktop -r
	$HOME/.scripts/bars.sh home &
fi

# set wallpaper
$HOME/.fehbg &
