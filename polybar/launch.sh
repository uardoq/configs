#!/usr/bin/env sh

# polybar name
pname=example

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u edqu -x polybar >/dev/null; do sleep 1; done

if type "xrandr"; then
	for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do 
		MONITOR=$m polybar --reload $pname &
	done
else
	polybar --reload pname &
fi

# Launch bar1 and bar2
# polybar $pname  &

echo "Bars launched..."
