#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

# add fonts
xset +fp /usr/share/fonts/local
xset fp rehash

# merge for urxtv, other settings
xrdb -merge ~/.Xresources

# unmute sound
amixer sset Master unmute

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

# exec gnome-session
# exec startkde
# exec startxfce4
exec awesome

