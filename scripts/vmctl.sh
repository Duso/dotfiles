#!/bin/sh
if [ $# -eq 0 ]
  then
    echo "No arguments supplied"
	exit 1
fi

cmd=$1
echo $cmd

if [ $cmd -eq 0 ]; then
	echo stopping...
	VBoxManage controlvm buildbox16.04 poweroff
else
	echo starting...
	VBoxManage startvm buildbox16.04 --type headless
fi

