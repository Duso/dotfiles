#!/bin/bash

id=$(xdo id -n scratchpad)
if [ -z $id ]; then
	urxvt -name scratchpad &
else 
	bspc node $id -m focused
	bspc node $id --flag hidden -f
fi
