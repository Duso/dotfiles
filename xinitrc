#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps
if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs
if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

# autostart
lxpolkit &
autorandr -c
sxhkd &
picom -b --config $XDG_CONFIG_HOME/picom/picom.conf
redshift &
udiskie -qF &
dunst &
#nm-applet &
xss-lock -- lock.sh &
xsetroot -cursor_name left_ptr
unclutter -idle 1 &
perWindowLayoutD
syncthing --no-browser &

# window manager
exec bspwm
