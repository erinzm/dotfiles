#!/usr/bin/env sh

killall -q polybar
while pgrep -x polybar >/dev/null; do sleep 1; done

primary_display="$(xrandr --query | grep -e 'primary' | cut -d' ' -f1)"
MONITOR=$primary_display polybar top &

