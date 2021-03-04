#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

export GTK2_RC_FILES="$HOME/.gtkrc-2.0"
setxkbmap -option caps:escap
setxkbmap us -variant altgr-intl
xmodmap -e "clear lock"
xmodmap -e "keysym Caps_Lock = Escape"
xautolock -detectsleep -time 1 -locker "i3lock-fancy -gp" -notify 30  -notifier "notify-send -u critical -t 10000 -- 'LOCKING screen in 30 seconds'"
export PATH="$PATH:/snap/bin"
exec i3
