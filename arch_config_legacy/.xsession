#!/bin/sh

#
# ~/.xsession
#
# Executed by xdm/gdm/kdm at login
#
xrdb -merge .Xresources
exec xmonad
