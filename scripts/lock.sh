#!/bin/sh

notify-send "DUNST_COMMAND_PAUSE"
playerctl pause

i3lock \
	--nofork                 \
    --ignore-empty-password	\
	--show-failed-attempts	\
    --linecolor=00000000        \
    --keyhlcolor=88c0d0ff       \
    --bshlcolor=d8dee9ff	\
    --separatorcolor=00000000   \
    --radius=70			\
    --indpos="1800:1600"		\
    \
    --insidevercolor=00000000	\
    --insidewrongcolor=00000000 \
    --insidecolor=00000000	\
    \
    --ringcolor=5e81acff        \
    --ringvercolor=a3be8cff     \
    --ringwrongcolor=bf616aff   \
    \
    --clock			\
    --timecolor=eceff4ff	\
    --timestr="%H:%M"		\
    --time-font='SauceCodePro Nerd Font'	\
    --timesize=75		\
    --timepos="150:1595"		\
    \
    --datecolor=d8dee9ff	\
    --datestr="%A, %d %B"	\
    --date-font="SauceCodePro Nerd Font"	\
    --datesize=50		\
    --datepos="340:1660"	\
    \
    --veriftext=""		\
    --wrongtext=""		\
    \
	--centered \
    --image=/home/duso/Pictures/wallpapers/lotr1.png; \
	notify-send "DUNST_COMMAND_RESUME" && playerctl play


	#--color=2E3440; \
