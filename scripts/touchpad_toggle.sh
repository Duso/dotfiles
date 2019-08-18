#!/bin/bash

toggle=$1

if [ $toggle = "enable" ] || [ $toggle = "on" ]
then
	xinput --enable "ELAN1010:00 04F3:3012 Touchpad"
elif [ $toggle = "disable" ] || [ $toggle = "off" ]
then
	xinput --disable "ELAN1010:00 04F3:3012 Touchpad"
fi
