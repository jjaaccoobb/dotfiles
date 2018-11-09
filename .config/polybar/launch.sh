#!/usr/bin/env sh

killall -q polybar

while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch
polybar top &
#polybar bottom &
#polybar vgatop &
