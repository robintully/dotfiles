#!/bin/sh

pgrep -x alacritty > /dev/null 2>&1 && {
    if [ "$XDG_SESSION_TYPE" = "x11" ]; then 
      nohup alacritty --config-file "$HOME"/.config/alacritty/i3/alacritty.yml msg create-window \
          > /dev/null &
      exit
  else
      nohup alacritty msg create-window > /dev/null &
      exit
    fi
}

if [ "$XDG_SESSION_TYPE" = "x11" ]; then 
    alacritty --config-file "$HOME"/.config/alacritty/i3/alacritty.yml
else
    alacritty
fi
