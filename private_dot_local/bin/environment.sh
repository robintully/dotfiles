#!/usr/bin/env bash

current_theme="$(cat "$HOME"/.config/.current_theme)"

if [ "$current_theme" = "rose-pine" ]; then

	background="191724"
	background_hard="16141f"
	background_soft="1f1d2e"
	background_soft_alt="26233a"
	foreground="e0def4"
	foreground_hard="f8f0e7"
	foreground_soft="faf4ed"
	foreground_soft_alt="cecacd"
	gray="524f67"
	blue="31748f"
	green="31748f"
	red="eb6f92"
	yellow="f6c177"
	orange="ea9a97"
	purple="c4a7e7"
	cyan="9ccfd8"

    icon_memory="$HOME/.local/bin/notifications/icons/RosePine/memory.png"
    icon_bell="$HOME/.local/bin/notifications/icons/RosePine/bell-notification.png"
    icon_alert="$HOME/.local/bin/notifications/icons/RosePine/alert.png"
    icon_succes="$HOME/.local/bin/notifications/icons/RosePine/succes.png"
    icon_screenshot="$HOME/.local/bin/notifications/icons/RosePine/screenshot.png"
    icon_usb_drive="$HOME/.local/bin/notifications/icons/RosePine/flash-drive.png"
    icon_palette="$HOME/.local/bin/notifications/icons/RosePine/palette.png"
    icon_archive="$HOME/.local/bin/notifications/icons/RosePine/archive.png"

    icon_wifi="$HOME/.local/bin/notifications/icons/RosePine/wifi.png"
    icon_wifi_alert="$HOME/.local/bin/notifications/icons/RosePine/wifi-alert.png"
    icon_wifi_error="$HOME/.local/bin/notifications/icons/RosePine/wifi-error.png"

    icon_battery="$HOME/.local/bin/notifications/icons/RosePine/battery.png"
    icon_battery_charging="$HOME/.local/bin/notifications/icons/RosePine/battery-charging.png"
    icon_battery_critical="$HOME/.local/bin/notifications/icons/RosePine/battery-critical.png"
    icon_battery_charged="$HOME/.local/bin/notifications/icons/RosePine/battery-charged.png"
    icon_battery_low="$HOME/.local/bin/notifications/icons/RosePine/battery-low.png"

    icon_brightness_full="$HOME/.local/bin/notifications/icons/RosePine/brightness-full.png"
    icon_brightness_half="$HOME/.local/bin/notifications/icons/RosePine/brightness-half.png"
    icon_brightness_low="$HOME/.local/bin/notifications/icons/RosePine/brightness-low.png"

    icon_volume_high="$HOME/.local/bin/notifications/icons/RosePine/volume-high.png"
    icon_volume_half="$HOME/.local/bin/notifications/icons/RosePine/volume-half.png"
    icon_volume_mute="$HOME/.local/bin/notifications/icons/RosePine/volume-mute.png"

    icon_microphone="$HOME/.local/bin/notifications/icons/RosePine/microphone.png"
    icon_microphone_muted="$HOME/.local/bin/notifications/icons/RosePine/microphone-muted.png"

    icon_mtp_desktop="$HOME/.local/bin/notifications/icons/RosePine/mtp-desktop.png"
    icon_mtp_laptop="$HOME/.local/bin/notifications/icons/RosePine/mtp-laptop.png"

    icon_package="$HOME/.local/bin/notifications/icons/RosePine/package-update.png"

    rofi_theme_themes="$HOME/.config/rofi/launchers/themes/rose-pine.rasi"
    rofi_theme_clipboard="$HOME/.config/rofi/launchers/clipboard/rose-pine.rasi"
    rofi_theme_hyprland="$HOME/.config/rofi/launchers/hyprland/rose-pine.rasi"
    rofi_theme_apps="$HOME/.config/rofi/launchers/apps/rose-pine.rasi"
    rofi_theme_tools="$HOME/.config/rofi/launchers/tools/rose-pine.rasi"
    rofi_theme_wifi="$HOME/.config/rofi/launchers/wifi/rose-pine.rasi"

elif [ "$current_theme" = "gruvbox-dark" ]; then

	background="282828"
	background_hard="282828"
	background_soft="11111B"
	background_soft_alt="313244"
	foreground="fbf1c7"
	foreground_hard="f9f5d7"
	foreground_soft="f2e5bc"
	foreground_soft_alt="ebdbb2"
	gray="928374"
	blue="458588"
	green="98971a"
	red="cc241d"
	yellow="d79921"
	orange="d65d0e"
	purple="b16286"
	cyan="689d6a"

    icon_memory="$HOME/.local/bin/notifications/icons/GruvboxDark/memory.png"
    icon_bell="$HOME/.local/bin/notifications/icons/GruvboxDark/bell-notification.png"
    icon_alert="$HOME/.local/bin/notifications/icons/GruvboxDark/alert.png"
    icon_succes="$HOME/.local/bin/notifications/icons/GruvboxDark/succes.png"
    icon_screenshot="$HOME/.local/bin/notifications/icons/GruvboxDark/screenshot.png"
    icon_usb_drive="$HOME/.local/bin/notifications/icons/GruvboxDark/flash-drive.png"
    icon_palette="$HOME/.local/bin/notifications/icons/GruvboxDark/palette.png"
    icon_archive="$HOME/.local/bin/notifications/icons/GruvboxDark/archive.png"

    icon_wifi="$HOME/.local/bin/notifications/icons/GruvboxDark/wifi.png"
    icon_wifi_alert="$HOME/.local/bin/notifications/icons/GruvboxDark/wifi-alert.png"
    icon_wifi_error="$HOME/.local/bin/notifications/icons/GruvboxDark/wifi-error.png"

    icon_battery="$HOME/.local/bin/notifications/icons/GruvboxDark/battery.png"
    icon_battery_charging="$HOME/.local/bin/notifications/icons/GruvboxDark/battery-charging.png"
    icon_battery_critical="$HOME/.local/bin/notifications/icons/GruvboxDark/battery-critical.png"
    icon_battery_charged="$HOME/.local/bin/notifications/icons/GruvboxDark/battery-charged.png"
    icon_battery_low="$HOME/.local/bin/notifications/icons/GruvboxDark/battery-low.png"

    icon_brightness_full="$HOME/.local/bin/notifications/icons/GruvboxDark/brightness-full.png"
    icon_brightness_half="$HOME/.local/bin/notifications/icons/GruvboxDark/brightness-half.png"
    icon_brightness_low="$HOME/.local/bin/notifications/icons/GruvboxDark/brightness-low.png"

    icon_volume_high="$HOME/.local/bin/notifications/icons/GruvboxDark/volume-high.png"
    icon_volume_half="$HOME/.local/bin/notifications/icons/GruvboxDark/volume-half.png"
    icon_volume_mute="$HOME/.local/bin/notifications/icons/GruvboxDark/volume-mute.png"

    icon_microphone="$HOME/.local/bin/notifications/icons/GruvboxDark/microphone.png"
    icon_microphone_muted="$HOME/.local/bin/notifications/icons/GruvboxDark/microphone-muted.png"

    icon_mtp_desktop="$HOME/.local/bin/notifications/icons/GruvboxDark/mtp-desktop.png"
    icon_mtp_laptop="$HOME/.local/bin/notifications/icons/GruvboxDark/mtp-laptop.png"

    icon_package="$HOME/.local/bin/notifications/icons/GruvboxDark/package-update.png"

    rofi_theme_themes="$HOME/.config/rofi/launchers/themes/gruvbox-dark.rasi"
    rofi_theme_clipboard="$HOME/.config/rofi/launchers/clipboard/gruvbox-dark.rasi"
    rofi_theme_hyprland="$HOME/.config/rofi/launchers/hyprland/gruvbox-dark.rasi"
    rofi_theme_apps="$HOME/.config/rofi/launchers/apps/gruvbox-dark.rasi"
    rofi_theme_tools="$HOME/.config/rofi/launchers/tools/gruvbox-dark.rasi"
    rofi_theme_wifi="$HOME/.config/rofi/launchers/wifi/gruvbox-dark.rasi"

elif [ "$current_theme" = "gruvbox-light" ]; then

	background="fbf1c7"
	background_hard="f9f5d7"
	background_soft="f2e5bc"
	background_soft_alt="313244"
	foreground="282828"
	foreground_hard="282828"
	foreground_soft="11111B"
	foreground_soft_alt="313244"
	gray="928374"
	blue="458588"
	green="98971a"
	red="cc241d"
	yellow="d79921"
	orange="d65d0e"
	purple="b16286"
	cyan="689d6a"

    icon_memory="$HOME/.local/bin/notifications/icons/GruvboxLight/memory.png"
    icon_bell="$HOME/.local/bin/notifications/icons/GruvboxLight/bell-notification.png"
    icon_alert="$HOME/.local/bin/notifications/icons/GruvboxLight/alert.png"
    icon_succes="$HOME/.local/bin/notifications/icons/GruvboxLight/succes.png"
    icon_screenshot="$HOME/.local/bin/notifications/icons/GruvboxLight/screenshot.png"
    icon_usb_drive="$HOME/.local/bin/notifications/icons/GruvboxLight/flash-drive.png"
    icon_palette="$HOME/.local/bin/notifications/icons/GruvboxLight/palette.png"
    icon_archive="$HOME/.local/bin/notifications/icons/GruvboxLight/archive.png"

    icon_wifi="$HOME/.local/bin/notifications/icons/GruvboxLight/wifi.png"
    icon_wifi_alert="$HOME/.local/bin/notifications/icons/GruvboxLight/wifi-alert.png"
    icon_wifi_error="$HOME/.local/bin/notifications/icons/GruvboxLight/wifi-error.png"

    icon_battery="$HOME/.local/bin/notifications/icons/GruvboxLight/battery.png"
    icon_battery_charging="$HOME/.local/bin/notifications/icons/GruvboxLight/battery-charging.png"
    icon_battery_critical="$HOME/.local/bin/notifications/icons/GruvboxLight/battery-critical.png"
    icon_battery_charged="$HOME/.local/bin/notifications/icons/GruvboxLight/battery-charged.png"
    icon_battery_low="$HOME/.local/bin/notifications/icons/GruvboxLight/battery-low.png"

    icon_brightness_full="$HOME/.local/bin/notifications/icons/GruvboxLight/brightness-full.png"
    icon_brightness_half="$HOME/.local/bin/notifications/icons/GruvboxLight/brightness-half.png"
    icon_brightness_low="$HOME/.local/bin/notifications/icons/GruvboxLight/brightness-low.png"

    icon_volume_high="$HOME/.local/bin/notifications/icons/GruvboxLight/volume-high.png"
    icon_volume_half="$HOME/.local/bin/notifications/icons/GruvboxLight/volume-half.png"
    icon_volume_mute="$HOME/.local/bin/notifications/icons/GruvboxLight/volume-mute.png"

    icon_microphone="$HOME/.local/bin/notifications/icons/GruvboxLight/microphone.png"
    icon_microphone_muted="$HOME/.local/bin/notifications/icons/GruvboxLight/microphone-muted.png"

    icon_mtp_desktop="$HOME/.local/bin/notifications/icons/GruvboxLight/mtp-desktop.png"
    icon_mtp_laptop="$HOME/.local/bin/notifications/icons/GruvboxLight/mtp-laptop.png"

    icon_package="$HOME/.local/bin/notifications/icons/GruvboxLight/package-update.png"

    rofi_theme_themes="$HOME/.config/rofi/launchers/themes/gruvbox-light.rasi"
    rofi_theme_clipboard="$HOME/.config/rofi/launchers/clipboard/gruvbox-light.rasi"
    rofi_theme_hyprland="$HOME/.config/rofi/launchers/hyprland/gruvbox-light.rasi"
    rofi_theme_apps="$HOME/.config/rofi/launchers/apps/gruvbox-light.rasi"
    rofi_theme_tools="$HOME/.config/rofi/launchers/tools/gruvbox-light.rasi"
    rofi_theme_wifi="$HOME/.config/rofi/launchers/wifi/gruvbox-light.rasi"

elif [ "$current_theme" = "catppuccin-mocha" ]; then

	background="1E1E2E"
	background_hard="11111B"
	background_soft="313244"
	background_soft_alt="45475A"
	foreground="CDD6F4"
	foreground_hard="CDD6F4"
	foreground_soft="BAC2DE"
	foreground_soft_alt="A6ADC8"
	gray="585B70"
	blue="89B4FA"
	green="A6E3A1"
	red="F38BA8"
	yellow="F9E2AF"
	orange="FAB387"
	purple="CBA6F7"
	cyan="89DCEB"

    icon_memory="$HOME/.local/bin/notifications/icons/Catppuccin/memory.png"
    icon_bell="$HOME/.local/bin/notifications/icons/Catppuccin/bell-notification.png"
    icon_alert="$HOME/.local/bin/notifications/icons/Catppuccin/alert.png"
    icon_succes="$HOME/.local/bin/notifications/icons/Catppuccin/succes.png"
    icon_screenshot="$HOME/.local/bin/notifications/icons/Catppuccin/screenshot.png"
    icon_usb_drive="$HOME/.local/bin/notifications/icons/Catppuccin/flash-drive.png"
    icon_palette="$HOME/.local/bin/notifications/icons/Catppuccin/palette.png"
    icon_archive="$HOME/.local/bin/notifications/icons/Catppuccin/archive.png"

    icon_wifi="$HOME/.local/bin/notifications/icons/Catppuccin/wifi.png"
    icon_wifi_alert="$HOME/.local/bin/notifications/icons/Catppuccin/wifi-alert.png"
    icon_wifi_error="$HOME/.local/bin/notifications/icons/Catppuccin/wifi-error.png"

    icon_battery="$HOME/.local/bin/notifications/icons/Catppuccin/battery.png"
    icon_battery_charging="$HOME/.local/bin/notifications/icons/Catppuccin/battery-charging.png"
    icon_battery_critical="$HOME/.local/bin/notifications/icons/Catppuccin/battery-critical.png"
    icon_battery_charged="$HOME/.local/bin/notifications/icons/Catppuccin/battery-charged.png"
    icon_battery_low="$HOME/.local/bin/notifications/icons/Catppuccin/battery-low.png"

    icon_brightness_full="$HOME/.local/bin/notifications/icons/Catppuccin/brightness-full.png"
    icon_brightness_half="$HOME/.local/bin/notifications/icons/Catppuccin/brightness-half.png"
    icon_brightness_low="$HOME/.local/bin/notifications/icons/Catppuccin/brightness-low.png"

    icon_volume_high="$HOME/.local/bin/notifications/icons/Catppuccin/volume-high.png"
    icon_volume_half="$HOME/.local/bin/notifications/icons/Catppuccin/volume-half.png"
    icon_volume_mute="$HOME/.local/bin/notifications/icons/Catppuccin/volume-mute.png"

    icon_microphone="$HOME/.local/bin/notifications/icons/Catppuccin/microphone.png"
    icon_microphone_muted="$HOME/.local/bin/notifications/icons/Catppuccin/microphone-muted.png"

    icon_mtp_desktop="$HOME/.local/bin/notifications/icons/Catppuccin/mtp-desktop.png"
    icon_mtp_laptop="$HOME/.local/bin/notifications/icons/Catppuccin/mtp-laptop.png"

    icon_package="$HOME/.local/bin/notifications/icons/Catppuccin/package-update.png"

    rofi_theme_themes="$HOME/.config/rofi/launchers/themes/catppuccin-mocha.rasi"
    rofi_theme_clipboard="$HOME/.config/rofi/launchers/clipboard/catppuccin-mocha.rasi"
    rofi_theme_hyprland="$HOME/.config/rofi/launchers/hyprland/catppuccin-mocha.rasi"
    rofi_theme_apps="$HOME/.config/rofi/launchers/apps/catppuccin-mocha.rasi"
    rofi_theme_tools="$HOME/.config/rofi/launchers/tools/catppuccin-mocha.rasi"
    rofi_theme_wifi="$HOME/.config/rofi/launchers/wifi/catppuccin-mocha.rasi"

elif [ "$current_theme" = "nord" ]; then

	background="3B4252"
	background_hard="2E3440"
	background_soft="434C5E"
	background_soft_alt="434C5E"
	foreground="ECEFF4"
	foreground_hard="E5E9F0"
	foreground_soft="D8DEE9"
	foreground_soft_alt="D8DEE9"
	gray="434C5E"
	blue="5E81AC"
	green="A3BE8C"
	red="BF616A"
	yellow="EBCB8B"
	orange="D08770"
	purple="B48EAD"
	cyan="88C0D0"

    icon_memory="$HOME/.local/bin/notifications/icons/Nord/memory.png"
    icon_bell="$HOME/.local/bin/notifications/icons/Nord/bell-notification.png"
    icon_alert="$HOME/.local/bin/notifications/icons/Nord/alert.png"
    icon_succes="$HOME/.local/bin/notifications/icons/Nord/succes.png"
    icon_screenshot="$HOME/.local/bin/notifications/icons/Nord/screenshot.png"
    icon_usb_drive="$HOME/.local/bin/notifications/icons/Nord/flash-drive.png"
    icon_palette="$HOME/.local/bin/notifications/icons/Nord/palette.png"
    icon_archive="$HOME/.local/bin/notifications/icons/Nord/archive.png"

    icon_wifi="$HOME/.local/bin/notifications/icons/Nord/wifi.png"
    icon_wifi_alert="$HOME/.local/bin/notifications/icons/Nord/wifi-alert.png"
    icon_wifi_error="$HOME/.local/bin/notifications/icons/Nord/wifi-error.png"

    icon_battery="$HOME/.local/bin/notifications/icons/Nord/battery.png"
    icon_battery_charging="$HOME/.local/bin/notifications/icons/Nord/battery-charging.png"
    icon_battery_critical="$HOME/.local/bin/notifications/icons/Nord/battery-critical.png"
    icon_battery_charged="$HOME/.local/bin/notifications/icons/Nord/battery-charged.png"
    icon_battery_low="$HOME/.local/bin/notifications/icons/Nord/battery-low.png"

    icon_brightness_full="$HOME/.local/bin/notifications/icons/Nord/brightness-full.png"
    icon_brightness_half="$HOME/.local/bin/notifications/icons/Nord/brightness-half.png"
    icon_brightness_low="$HOME/.local/bin/notifications/icons/Nord/brightness-low.png"

    icon_volume_high="$HOME/.local/bin/notifications/icons/Nord/volume-high.png"
    icon_volume_half="$HOME/.local/bin/notifications/icons/Nord/volume-half.png"
    icon_volume_mute="$HOME/.local/bin/notifications/icons/Nord/volume-mute.png"

    icon_microphone="$HOME/.local/bin/notifications/icons/Nord/microphone.png"
    icon_microphone_muted="$HOME/.local/bin/notifications/icons/Nord/microphone-muted.png"

    icon_mtp_desktop="$HOME/.local/bin/notifications/icons/Nord/mtp-desktop.png"
    icon_mtp_laptop="$HOME/.local/bin/notifications/icons/Nord/mtp-laptop.png"

    icon_package="$HOME/.local/bin/notifications/icons/Nord/package-update.png"

    rofi_theme_themes="$HOME/.config/rofi/launchers/themes/nord.rasi"
    rofi_theme_clipboard="$HOME/.config/rofi/launchers/clipboard/nord.rasi"
    rofi_theme_hyprland="$HOME/.config/rofi/launchers/hyprland/nord.rasi"
    rofi_theme_apps="$HOME/.config/rofi/launchers/apps/nord.rasi"
    rofi_theme_tools="$HOME/.config/rofi/launchers/tools/nord.rasi"
    rofi_theme_wifi="$HOME/.config/rofi/launchers/wifi/nord.rasi"

elif [ "$current_theme" = "dracula" ]; then

	background="282A36"
	background_hard="191A21"
	background_soft="21222C"
	background_soft_alt="3E4452"
	foreground="F8F8F2"
	foreground_hard="FFFFFF"
	foreground_soft="F8F8F2"
	foreground_soft_alt="ABB2BF"
	gray="4B5263"
	blue="6272A4"
	green="50fa7b"
	red="FF5555"
	yellow="F1FA8C"
	orange="FFB86C"
	purple="BD93F9"
	cyan="8BE9FD"

    icon_memory="$HOME/.local/bin/notifications/icons/Dracula/memory.png"
    icon_bell="$HOME/.local/bin/notifications/icons/Dracula/bell-notification.png"
    icon_alert="$HOME/.local/bin/notifications/icons/Dracula/alert.png"
    icon_succes="$HOME/.local/bin/notifications/icons/Dracula/succes.png"
    icon_screenshot="$HOME/.local/bin/notifications/icons/Dracula/screenshot.png"
    icon_usb_drive="$HOME/.local/bin/notifications/icons/Dracula/flash-drive.png"
    icon_palette="$HOME/.local/bin/notifications/icons/Dracula/palette.png"
    icon_archive="$HOME/.local/bin/notifications/icons/Dracula/archive.png"

    icon_wifi="$HOME/.local/bin/notifications/icons/Dracula/wifi.png"
    icon_wifi_alert="$HOME/.local/bin/notifications/icons/Dracula/wifi-alert.png"
    icon_wifi_error="$HOME/.local/bin/notifications/icons/Dracula/wifi-error.png"

    icon_battery="$HOME/.local/bin/notifications/icons/Dracula/battery.png"
    icon_battery_charging="$HOME/.local/bin/notifications/icons/Dracula/battery-charging.png"
    icon_battery_critical="$HOME/.local/bin/notifications/icons/Dracula/battery-critical.png"
    icon_battery_charged="$HOME/.local/bin/notifications/icons/Dracula/battery-charged.png"
    icon_battery_low="$HOME/.local/bin/notifications/icons/Dracula/battery-low.png"

    icon_brightness_full="$HOME/.local/bin/notifications/icons/Dracula/brightness-full.png"
    icon_brightness_half="$HOME/.local/bin/notifications/icons/Dracula/brightness-half.png"
    icon_brightness_low="$HOME/.local/bin/notifications/icons/Dracula/brightness-low.png"

    icon_volume_high="$HOME/.local/bin/notifications/icons/Dracula/volume-high.png"
    icon_volume_half="$HOME/.local/bin/notifications/icons/Dracula/volume-half.png"
    icon_volume_mute="$HOME/.local/bin/notifications/icons/Dracula/volume-mute.png"

    icon_microphone="$HOME/.local/bin/notifications/icons/Dracula/microphone.png"
    icon_microphone_muted="$HOME/.local/bin/notifications/icons/Dracula/microphone-muted.png"

    icon_mtp_desktop="$HOME/.local/bin/notifications/icons/Dracula/mtp-desktop.png"
    icon_mtp_laptop="$HOME/.local/bin/notifications/icons/Dracula/mtp-laptop.png"

    icon_package="$HOME/.local/bin/notifications/icons/Dracula/package-update.png"

    rofi_theme_themes="$HOME/.config/rofi/launchers/themes/dracula.rasi"
    rofi_theme_clipboard="$HOME/.config/rofi/launchers/clipboard/dracula.rasi"
    rofi_theme_hyprland="$HOME/.config/rofi/launchers/hyprland/dracula.rasi"
    rofi_theme_apps="$HOME/.config/rofi/launchers/apps/dracula.rasi"
    rofi_theme_tools="$HOME/.config/rofi/launchers/tools/dracula.rasi"
    rofi_theme_wifi="$HOME/.config/rofi/launchers/wifi/dracula.rasi"

elif [ "$current_theme" = "catppuccin-latte" ]; then

	background="EFF1F5"
	background_hard="E6E9EF"
	background_soft="DCE0E8"
	background_soft_alt="CCD0DA"
	foreground="6C6F85"
	foreground_hard="4C4F69"
	foreground_soft="5C5F77"
	foreground_soft_alt="7C7F93"
	gray="9CA0B0"
	blue="1e66f5"
	green="A3BE8C"
	red="40A02B"
	yellow="df8e1d"
	orange="FE640B"
	purple="8839EF"
	cyan="04A5E5"

    icon_memory="$HOME/.local/bin/notifications/icons/CatppuccinLatte/memory.png"
    icon_bell="$HOME/.local/bin/notifications/icons/CatppuccinLatte/bell-notification.png"
    icon_alert="$HOME/.local/bin/notifications/icons/CatppuccinLatte/alert.png"
    icon_succes="$HOME/.local/bin/notifications/icons/CatppuccinLatte/succes.png"
    icon_screenshot="$HOME/.local/bin/notifications/icons/CatppuccinLatte/screenshot.png"
    icon_usb_drive="$HOME/.local/bin/notifications/icons/CatppuccinLatte/flash-drive.png"
    icon_palette="$HOME/.local/bin/notifications/icons/CatppuccinLatte/palette.png"
    icon_archive="$HOME/.local/bin/notifications/icons/CatppuccinLatte/archive.png"

    icon_wifi="$HOME/.local/bin/notifications/icons/CatppuccinLatte/wifi.png"
    icon_wifi_alert="$HOME/.local/bin/notifications/icons/CatppuccinLatte/wifi-alert.png"
    icon_wifi_error="$HOME/.local/bin/notifications/icons/CatppuccinLatte/wifi-error.png"

    icon_battery="$HOME/.local/bin/notifications/icons/CatppuccinLatte/battery.png"
    icon_battery_charging="$HOME/.local/bin/notifications/icons/CatppuccinLatte/battery-charging.png"
    icon_battery_critical="$HOME/.local/bin/notifications/icons/CatppuccinLatte/battery-critical.png"
    icon_battery_charged="$HOME/.local/bin/notifications/icons/CatppuccinLatte/battery-charged.png"
    icon_battery_low="$HOME/.local/bin/notifications/icons/CatppuccinLatte/battery-low.png"

    icon_brightness_full="$HOME/.local/bin/notifications/icons/CatppuccinLatte/brightness-full.png"
    icon_brightness_half="$HOME/.local/bin/notifications/icons/CatppuccinLatte/brightness-half.png"
    icon_brightness_low="$HOME/.local/bin/notifications/icons/CatppuccinLatte/brightness-low.png"

    icon_volume_high="$HOME/.local/bin/notifications/icons/CatppuccinLatte/volume-high.png"
    icon_volume_half="$HOME/.local/bin/notifications/icons/CatppuccinLatte/volume-half.png"
    icon_volume_mute="$HOME/.local/bin/notifications/icons/CatppuccinLatte/volume-mute.png"

    icon_microphone="$HOME/.local/bin/notifications/icons/CatppuccinLatte/microphone.png"
    icon_microphone_muted="$HOME/.local/bin/notifications/icons/CatppuccinLatte/microphone-muted.png"

    icon_mtp_desktop="$HOME/.local/bin/notifications/icons/CatppuccinLatte/mtp-desktop.png"
    icon_mtp_laptop="$HOME/.local/bin/notifications/icons/CatppuccinLatte/mtp-laptop.png"

    icon_package="$HOME/.local/bin/notifications/icons/CatppuccinLatte/package-update.png"

    rofi_theme_themes="$HOME/.config/rofi/launchers/themes/catppuccin-latte.rasi"
    rofi_theme_clipboard="$HOME/.config/rofi/launchers/clipboard/catppuccin-latte.rasi"
    rofi_theme_hyprland="$HOME/.config/rofi/launchers/hyprland/catppuccin-latte.rasi"
    rofi_theme_apps="$HOME/.config/rofi/launchers/apps/catppuccin-latte.rasi"
    rofi_theme_tools="$HOME/.config/rofi/launchers/tools/catppuccin-latte.rasi"
    rofi_theme_wifi="$HOME/.config/rofi/launchers/wifi/catppuccin-latte.rasi"

elif [ "$current_theme" = "kanagawa" ]; then

	background="181820"
	background_hard="16161D"
	background_soft="1F1F28"
	background_soft_alt="2A2A37"
	foreground="C8C093"
	foreground_hard="DCD7BA"
	foreground_soft="C8C093"
	foreground_soft_alt="DCD7BA"
	gray="717C7C"
	blue="4d699b"
	green="6f894e"
	red="E46876"
	yellow="E6C384"
	orange="FFA066"
	purple="624c83"
	cyan="9fb5c9"

    icon_memory="$HOME/.local/bin/notifications/icons/Kanagawa/memory.png"
    icon_bell="$HOME/.local/bin/notifications/icons/Kanagawa/bell-notification.png"
    icon_alert="$HOME/.local/bin/notifications/icons/Kanagawa/alert.png"
    icon_succes="$HOME/.local/bin/notifications/icons/Kanagawa/succes.png"
    icon_screenshot="$HOME/.local/bin/notifications/icons/Kanagawa/screenshot.png"
    icon_usb_drive="$HOME/.local/bin/notifications/icons/Kanagawa/flash-drive.png"
    icon_palette="$HOME/.local/bin/notifications/icons/Kanagawa/palette.png"
    icon_archive="$HOME/.local/bin/notifications/icons/Kanagawa/archive.png"

    icon_wifi="$HOME/.local/bin/notifications/icons/Kanagawa/wifi.png"
    icon_wifi_alert="$HOME/.local/bin/notifications/icons/Kanagawa/wifi-alert.png"
    icon_wifi_error="$HOME/.local/bin/notifications/icons/Kanagawa/wifi-error.png"

    icon_battery="$HOME/.local/bin/notifications/icons/Kanagawa/battery.png"
    icon_battery_charging="$HOME/.local/bin/notifications/icons/Kanagawa/battery-charging.png"
    icon_battery_critical="$HOME/.local/bin/notifications/icons/Kanagawa/battery-critical.png"
    icon_battery_charged="$HOME/.local/bin/notifications/icons/Kanagawa/battery-charged.png"
    icon_battery_low="$HOME/.local/bin/notifications/icons/Kanagawa/battery-low.png"

    icon_brightness_full="$HOME/.local/bin/notifications/icons/Kanagawa/brightness-full.png"
    icon_brightness_half="$HOME/.local/bin/notifications/icons/Kanagawa/brightness-half.png"
    icon_brightness_low="$HOME/.local/bin/notifications/icons/Kanagawa/brightness-low.png"

    icon_volume_high="$HOME/.local/bin/notifications/icons/Kanagawa/volume-high.png"
    icon_volume_half="$HOME/.local/bin/notifications/icons/Kanagawa/volume-half.png"
    icon_volume_mute="$HOME/.local/bin/notifications/icons/Kanagawa/volume-mute.png"

    icon_microphone="$HOME/.local/bin/notifications/icons/Kanagawa/microphone.png"
    icon_microphone_muted="$HOME/.local/bin/notifications/icons/Kanagawa/microphone-muted.png"

    icon_mtp_desktop="$HOME/.local/bin/notifications/icons/Kanagawa/mtp-desktop.png"
    icon_mtp_laptop="$HOME/.local/bin/notifications/icons/Kanagawa/mtp-laptop.png"

    icon_package="$HOME/.local/bin/notifications/icons/Kanagawa/package-update.png"

	rofi_theme_clipboard="$HOME/.config/rofi/launchers/clipboard/kanagawa.rasi"
	rofi_theme_apps="$HOME/.config/rofi/launchers/apps/kanagawa.rasi"
	rofi_theme_hyprland="$HOME/.config/rofi/launchers/hyprland/kanagawa.rasi"
	rofi_theme_themes="$HOME/.config/rofi/launchers/themes/kanagawa.rasi"
	rofi_theme_tools="$HOME/.config/rofi/launchers/tools/kanagawa.rasi"
	rofi_theme_wifi="$HOME/.config/rofi/launchers/wifi/kanagawa.rasi"

fi

