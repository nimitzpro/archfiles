#!/bin/sh

killall -q flameshot

while pgrep -x flameshot  >/dev/null; do sleep 1; done

flameshot
