#!/bin/bash

floating_desktop_id=$(bspc query -D -d $1)

bspc subscribe node | while read -a msg; do
	desktop_id=${msg[2]}
	node_id=${msg[3]}
	[ "$floating_desktop_id" = "$desktop_id" ] && bspc node "$node_id" -t floating
done
