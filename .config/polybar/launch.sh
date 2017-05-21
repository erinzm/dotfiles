#!/usr/bin/env sh

killall -q polybar
while pgrep -x polybar >/dev/null; do sleep 1; done

#displays="$(xrandr --query | grep -e '\<connected\>' | cut -d' ' -f1)"
#for display in $displays; do
#	MONITOR=$display polybar bottom &
#done

polybar top &
