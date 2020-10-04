#!/bin/bash
where=$1

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bars
echo Launching bars...
if [ $where == "laptop" ]
then
	polybar -r laptop & 
elif [ $where == "home" ] 
then
	polybar -r laptop & 
	polybar -r home &
elif [ $where == "work" ]
then
	polybar -r laptop-alt &
	polybar -r work2 &
	polybar -r work1 &
elif [ $where == "desktop" ]
then
	polybar -r desktop1 &
	polybar -r desktop2 &
fi
echo "Bars launched!"

