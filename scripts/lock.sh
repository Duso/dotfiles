#!/bin/sh

notify-send "DUNST_COMMAND_PAUSE"

i3lock \
	--nofork \
	--ignore-empty-password \
	--show-failed-attempts \
	--color=2E3440; \
	notify-send "DUNST_COMMAND_RESUME"

# TODO: stop music player
