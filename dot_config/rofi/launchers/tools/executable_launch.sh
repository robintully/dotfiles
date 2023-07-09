#!/usr/bin/env bash

source "$HOME"/.local/bin/environment.sh

passgen="Password generator"

print_options="$passgen"
chosen="$(echo -e "$print_options" | rofi -show -dmenu -selection-row 0 -theme "$rofi_theme_tools")"

case "$chosen" in
    "$passgen")
        "$HOME"/.local/bin/password-generator.sh
        ;;
esac
