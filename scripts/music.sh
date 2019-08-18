# find a smarter thing

nohup mopidy &
while :; do yes $'\n' | nc -lu 127.0.0.1 5555 > /tmp/mpd.fifo; done &
