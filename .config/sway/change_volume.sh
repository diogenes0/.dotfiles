#! /bin/bash

set -e

if [ $1 = "up" ]
then
  pactl set-sink-mute @DEFAULT_SINK@ off
  pactl set-sink-volume @DEFAULT_SINK@ +5%
elif [ $1 = "down" ]
then
  pactl set-sink-mute @DEFAULT_SINK@ off
  pactl set-sink-volume @DEFAULT_SINK@ -5%
elif [ $1 = "mute" ]
then
  pactl set-sink-mute @DEFAULT_SINK@ toggle
else
  exit 1
fi

theme=""
muted=$(pactl get-sink-mute @DEFAULT_SINK@)
if [ "$muted" = "Mute: yes" ]
then
  theme="muted"
fi

pactl get-sink-volume @DEFAULT_SINK@ | \
  rg "(\d+)%" -or "\$1 $theme" > /tmp/wobpipe
