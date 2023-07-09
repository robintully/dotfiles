#!/usr/bin/env bash

source "$HOME"/.local/bin/environment.sh

case "$1" in
	show)
		cliphist list | rofi -dmenu -display-columns 2 -theme "$rofi_theme_clipboard" | cliphist decode | wl-copy
		;;
	clean)
		cliphist wipe
		notify-send -i "$icon_bell" "Clipboard cleared"
		;;
esac
