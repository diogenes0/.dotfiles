#!/bin/bash

# black  (bg3/bg4)
bg0="282828"
bg1="3c3836"
bg2="504945"
bg3="665c54"
bg4="7c6f64"

# red
red1="cc241d"
red2="fb4934"

# green
green1="98971a"
green2="b8bb26"

# yellow
yellow1="d79921"
yellow2="fabd2f"

# blue
blue1="458588"
blue2="83a598"

# purple
purple1="b16286"
purple2="d3869b"

# aqua
aqua1="689d6a"
aqua2="8ec07c"

# gray
gray1="a89984"
gray2="928374"

# white (fg4/fg3)
fg0="fbf1c7"
fg1="ebdbb2"
fg2="d5c4a1"
fg3="bdae93"
fg4="a89984"

bg0_with_alpha="28282880"
yellow1_with_alpha="d7992180"
blue1_with_alpha="45858880"
red1_with_alpha="cc241d80"

echo $bg0_with_alpha

swaylock \
  --daemonize \
  --image ~/backgrounds/3840x2160-dark-archlinux.png \
  --show-keyboard-layout \
  --show-failed-attempts \
  --font "MesloLGL Nerd Font" \
  --font-size 48 \
  --indicator-radius 100 \
  --indicator-thickness 20 \
  --color $bg0 \
  --bs-hl-color $red2 \
  --key-hl-color $green2 \
  --separator-color 000000 \
  --layout-bg-color $bg0_with_alpha \
  --layout-border $bg0 \
  --layout-text $fg1 \
  --inside-color $bg0_with_alpha \
  --inside-clear-color $yellow1_with_alpha \
  --inside-caps-lock-color $bg0_with_alpha \
  --inside-ver-color $blue1_with_alpha \
  --inside-wrong-color $red1_with_alpha \
  --line-color $bg0 \
  --ring-color $green1 \
  --ring-clear-color $yellow1 \
  --ring-caps-lock-color $yellow1 \
  --ring-ver-color $blue1 \
  --ring-wrong-color $red1 \
  --text-color $fg0 \
  --text-clear-color $fg0 \
  --text-caps-lock-color $fg0 \
  --text-ver-color $fg0 \
  --text-wrong-color $fg0 \
