#! /bin/bash

set -e

if [ $1 = "up" ]
then
  brightnessctl set 5%+
elif [ $1 = "down" ]
then
  brightnessctl set 5%-
else
  exit 1
fi

brightnessctl info | \
  rg "(\d+)%" -or "\$1" > /tmp/wobpipe
