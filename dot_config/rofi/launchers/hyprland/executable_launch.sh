#!/usr/bin/env bash

source "$HOME"/.local/bin/environment.sh

opacity_toggle="Enable / Disable opacity"
rounding_toggle="Enable / Disable rounded corners"
i3_mode_toggle="Enable / Disable i3 mode"

available_options="$opacity_toggle\n$rounding_toggle\n$i3_mode_toggle"
choosen="$(echo -e "$available_options" | rofi -show -dmenu -selected-row 0 -theme "$rofi_theme_hyprland")"

case "$choosen" in
    "$opacity_toggle")
        "$HOME"/.config/hypr/scripts/appearance.sh opacity_toggle
        ;;
    "$rounding_toggle")
        "$HOME"/.config/hypr/scripts/appearance.sh rounding_toggle
        ;;
    "$i3_mode_toggle")
        "$HOME"/.config/hypr/scripts/appearance.sh i3_mode_toggle
        ;;
    *)
        return 1
esac
