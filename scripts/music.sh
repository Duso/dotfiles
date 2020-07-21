#!/bin/sh

# if spotifyd is already running -> start spt
(pgrep -u $UID -x spotifyd > /dev/null && spt) ||

# else if already logged in to lpass -> start spotifyd -> start spt
(lpass status -q && spotifyd && spt) || 

# else if not logged in to lpass -> login -> start spotifyd -> start spt
(lpass login --trust ciganqkula@gmail.com && spotifyd && spt)
