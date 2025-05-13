#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar
polybar top &
if xrandr -q | grep 'HDMI-A-0 connected'; then
	polybar second &
fi
echo "Bars launched..."

