#!/bin/bash
EXTERNAL_OUTPUT="DP2"
INTERNAL_OUTPUT="LVDS1"

# check for config
if [ ! -f  "/tmp/monitor_mode.dat" ] ; then
	# default to all monitor
	monitor_mode="all"
else
	monitor_mode=`cat /tmp/monitor_mode.dat`
fi

# monitor modes: all, external only, internal only, clone.
# toggle between monitor modes 
if [ $monitor_mode = "all" ]; then
        monitor_mode="EXTERNAL"
        xrandr --output $INTERNAL_OUTPUT --off --output $EXTERNAL_OUTPUT --auto
elif [ $monitor_mode = "EXTERNAL" ]; then
        monitor_mode="INTERNAL"
        xrandr --output $INTERNAL_OUTPUT --auto --output $EXTERNAL_OUTPUT --off
elif [ $monitor_mode = "INTERNAL" ]; then
        monitor_mode="CLONES"
        xrandr --output $INTERNAL_OUTPUT --auto --output $EXTERNAL_OUTPUT --auto --same-as $INTERNAL_OUTPUT
else
        monitor_mode="all"
        xrandr --output $INTERNAL_OUTPUT --auto --output $EXTERNAL_OUTPUT --auto --left-of $INTERNAL_OUTPUT
fi
echo "${monitor_mode}" > /tmp/monitor_mode.dat
