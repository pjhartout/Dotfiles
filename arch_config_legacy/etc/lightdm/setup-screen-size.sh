#!/bin/bash

# ... text goes here (see actual file)...

# set variable with the command we need to evaluate
my_laptop_external_monitor=$(xrandr --query | grep 'HDMI-0-1 connected')

# If the VGA1 port connects to a monitor, the output of the variable
# will not be empty.  In which case it is assumed that I am using my
# secondary display, whose resolution I know in advance.  If the
# variable is empty, then no external monitor is connected.
#
# This is a simplistic approach which will not work if the external
# monitor has another resolution.  It will also fail if executed from
# another machine, say, another laptop that uses an HDMI connection
# instead.
if [ -n "$my_laptop_external_monitor" ]; then
 xrandr --output HDMI-1-0 --mode 2560x1440 --auto --output eDP-1 --mode 1920x1080 --rightof HDNI-1-0 --auto
else
 xrandr --output eDP-1 --mode 1920x1080 --auto
fi

