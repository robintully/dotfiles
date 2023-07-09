#!/usr/bin/env bash

source "$HOME"/.local/bin/environment.sh

catppuccin_mocha="Catppuccin Mocha"
catppuccin_latte="Catppuccin Latte"
gruvbox_light="Gruvbox Light"
gruvbox_dark="Gruvbox Dark"
rose_pine="Rose Pine"
kanagawa="Kanagawa"
dracula="Dracula"
nord="Nord"

available_themes="$catppuccin_mocha\n$catppuccin_latte\n$gruvbox_light\n$gruvbox_dark\n$rose_pine\n$kanagawa\n$dracula\n$nord"
chosen="$(echo -e "$available_themes" | rofi -show -dmenu -selected-row 0 -theme "$rofi_theme_themes")"

files=".config/rofi/launchers/clipboard/launch.sh
       .config/rofi/launchers/tools/launch.sh
       .config/rofi/launchers/apps/launch.sh
       .config/alacritty/alacritty.yml
       .config/hypr/autostart.conf
       .config/zathura/zathurarc
       .config/qt?ct/qt?ct.conf"

hypr_autostart="$HOME/.config/hypr/autostart.conf"
hypr_conf="$HOME/.config/hypr/hyprland.conf"
nvim="$HOME/.config/nvim/lua/options.lua"

case "$chosen" in

    "$rose_pine")

        if [ "$current_theme" = "rose-pine" ]; then
            notify-send -r 999 -i "$icon_alert" "This theme is already in use!"
            return 1
        elif [ "$current_theme" = "catppuccin-mocha" ]; then
            for change in $files; do
                sed -i '/catppuccin-mocha/s/catppuccin-mocha/rose-pine/g' "$change"
                sed -i '/Catppuccin/s/Catppuccin/RosePine/'               "$hypr_autostart"
				sed -i '/catppuccin-mocha/s/catppuccin-mocha/rose-pine/'  "$nvim"
            done
        elif [ "$current_theme" = "catppuccin-latte" ]; then
            for change in $files; do
                sed -i '/catppuccin-latte/s/catppuccin-latte/rose-pine/g' "$change"
                sed -i '/CatppuccinLatte/s/CatppuccinLatte/RosePine/'     "$hypr_autostart"
                sed -i '/1E66F5/s/1E66F5/c4a7e7/'                         "$hypr_conf"
				sed -i '/catppuccin-latte/s/catppuccin-latte/rose-pine/'  "$nvim"
            done
        elif [ "$current_theme" = "gruvbox-dark" ]; then
            for change in $files; do
                sed -i '/gruvbox-dark/s/gruvbox-dark/rose-pine/g' "$change"
                sed -i '/Gruvbox/s/Gruvbox/RosePine/'             "$hypr_autostart"
                sed -i '/b57614/s/b57614/c4a7e7/'                 "$hypr_conf"
				sed -i '/gruvbox/s/gruvbox/rose-pine/'					  "$nvim"
            done
        elif [ "$current_theme" = "gruvbox-light" ]; then
            for change in $files; do
                sed -i '/gruvbox-light/s/gruvbox-light/rose-pine/g' "$change"
                sed -i '/GruvboxLight/s/GruvboxLight/RosePine/'     "$hypr_autostart"
                sed -i '/b57614/s/b57614/c4a7e7/'                   "$hypr_conf"
				sed -i '/gruvbox/s/gruvbox/rose-pine/'					  "$nvim"
            done
        elif [ "$current_theme" = "nord" ]; then
            for change in $files; do
                sed -i '/nord/s/nord/rose-pine/g' "$change"
                sed -i '/Nord/s/Nord/RosePine/'   "$hypr_autostart"
                sed -i '/88C0D0/s/88C0D0/c4a7e7/' "$hypr_conf"
				sed -i '/nord/s/nord/rose-pine/'  "$nvim"
            done
        elif [ "$current_theme" = "dracula" ]; then
            for change in $files; do
                sed -i 'dracula/s/dracula/rose-pine/g' "$change"
                sed -i '/Dracula/s/Dracula/RosePine/'  "$hypr_autostart"
                sed -i '/bd93f9/s/bd93f9/c4a7e7/'      "$hypr_conf"
				sed -i '/dracula/s/dracula/rose-pine/' "$nvim"
            done
        elif [ "$current_theme" = "kanagawa" ]; then
            for change in $files; do
                sed -i '/kanagawa/s/kanagawa/rose-pine/g'  "$change"
                sed -i '/Kanagawa/s/Kanagawa/rose-pine/'   "$hypr_autostart"
                sed -i '/957FB8/s/957FB8/c4a7e7/'		   "$hypr_conf"
				sed -i '/kanagawa/s/kanagawa/rose-pine/'   "$nvim"
            done
        fi

        spicetify config current_theme rose-pine color_scheme rose-pine-moon
        spicetify -l -n apply &

        echo 'rose-pine' > "$HOME"/.config/.current_theme
        hyprctl reload; sleep 0.5; ~/.config/hypr/scripts/lid-open-close.sh
        icon_succes="$HOME/.local/bin/notifications/icons/RosePine/succes.png"
        notify-send -r 999 -i "$icon_succes" "Done"

        ;;

    "$catppuccin_mocha")

        if [ "$current_theme" = "catppuccin-mocha" ]; then
            notify-send -r 999 -i "$icon_alert" "This theme is already in use!"
            return 1
        elif [ "$current_theme" = "catppuccin-latte" ]; then
            for change in $files; do
                sed -i '/catppuccin-latte/s/catppuccin-latte/catppuccin-mocha/g'  "$change"
                sed -i '/CatppuccinLatte/s/CatppuccinLatte/Catppuccin/'           "$hypr_autostart"
                sed -i '/1E66F5/s/1E66F5/c4a7e7/'                                 "$hypr_conf"
				sed -i '/catppuccin-latte/s/catppuccin-latte/catppuccin-mocha/'	  "$nvim"
            done
        elif [ "$current_theme" = "rose-pine" ]; then
            for change in $files; do
                sed -i '/rose-pine/s/rose-pine/catppuccin-mocha/g' "$change"
                sed -i '/RosePine/s/RosePine/Catppuccin/'          "$hypr_autostart"
				sed -i '/rose-pine/s/rose-pine/catppuccin-mocha/'  "$nvim"
            done
        elif [ "$current_theme" = "gruvbox-dark" ]; then
            for change in $files; do
                sed -i '/gruvbox-dark/s/gruvbox-dark/catppuccin-mocha/g' "$change"
                sed -i '/Gruvbox/s/Gruvbox/Catppuccin/'                  "$hypr_autostart"
                sed -i '/b57614/s/b57614/c4a7e7/'                        "$hypr_conf"
				sed -i '/gruvbox/s/gruvbox/catppuccin-mocha/'		     "$nvim"
            done
        elif [ "$current_theme" = "gruvbox-light" ]; then
            for change in $files; do
                sed -i '/gruvbox-light/s/gruvbox-light/catppuccin-mocha/g' "$change"
                sed -i '/GruvboxLight/s/GruvboxLight/Catppuccin/'          "$hypr_autostart"
                sed -i '/b57614/s/b57614/c4a7e7/'                          "$hypr_conf"
				sed -i '/gruvbox/s/gruvbox/catppuccin-mocha/'			   "$nvim"
            done
        elif [ "$current_theme" = "nord" ]; then
            for change in $files; do
                sed -i '/nord/s/nord/catppuccin-mocha/g' "$change"
                sed -i '/Nord/s/Nord/Catppuccin/'        "$hypr_autostart"
                sed -i '/88C0D0/s/88C0D0/c4a7e7/'        "$hypr_conf"
				sed -i '/nord/s/nord/catppuccin-mocha/'	 "$nvim"
            done
        elif [ "$current_theme" = "dracula" ]; then
            for change in $files; do
                sed -i '/dracula/s/dracula/catppuccin-mocha/g' "$change"
                sed -i '/Dracula/s/Dracula/Catppuccin/'        "$hypr_autostart"
                sed -i '/bd93f9/s/bd93f9/c4a7e7/'              "$hypr_conf"
				sed -i '/dracula/s/dracula/catppuccin-mocha/'  "$nvim"
            done
        elif [ "$current_theme" = "kanagawa" ]; then
            for change in $files; do
                sed -i '/kanagawa/s/kanagawa/catppuccin-mocha/g' "$change"
                sed -i '/Kanagawa/s/Kanagawa/Catppuccin/'		 "$hypr_autostart"
                sed -i '/957FB8/s/957FB8/c4a7e7/'			   	 "$hypr_conf"
				sed -i '/kanagawa/s/kanagawa/catppuccin-mocha/'  "$nvim"
            done
        fi

        spicetify config current_theme catppuccin-mocha color_scheme lavender
        spicetify -l -n apply &

        echo 'catppuccin-mocha' > "$HOME"/.config/.current_theme

        hyprctl reload; sleep 0.5; ~/.config/hypr/scripts/lid-open-close.sh
        icon_succes="$HOME/.local/bin/notifications/icons/Catppuccin/succes.png"
        notify-send -r 999 -i "$icon_succes" "Done"
        ;;

    "$catppuccin_latte")
        if [ "$current_theme" = "catppuccin-latte" ]; then
            notify-send -r 999 -i "$icon_alert" "This theme is already in use!"
            return 1
        elif [ "$current_theme" = "catppuccin-mocha" ]; then
            for change in $files; do
                sed -i '/catppuccin-mocha/s/catppuccin-mocha/catppuccin-latte/g'  "$change"
                sed -i '/Catppuccin/s/Catppuccin/CatppuccinLatte/'                "$hypr_autostart"
                sed -i '/c4a7e7/s/c4a7e7/1E66F5/'                                 "$hypr_conf"
				sed -i '/catppuccin-mocha/s/catppuccin-mocha/catppuccin-latte/'   "$nvim"
            done
        elif [ "$current_theme" = "rose-pine" ]; then
            for change in $files; do
                sed -i '/rose-pine/s/rose-pine/catppuccin-latte/g' "$change"
                sed -i '/RosePine/s/RosePine/CatppuccinLatte/'      "$hypr_autostart"
				sed -i '/rose-pine/s/rose-pine/catppuccin-latte/'   "$nvim"
            done
        elif [ "$current_theme" = "gruvbox-dark" ]; then
            for change in $files; do
                sed -i '/gruvbox-dark/s/gruvbox-dark/catppuccin-latte/g' "$change"
                sed -i '/Gruvbox/s/Gruvbox/CatppuccinLatte/'             "$hypr_autostart"
                sed -i '/b57614/s/b57614/1E66F5/'                        "$hypr_conf"
				sed -i '/gruvbox/s/gruvbox/catppuccin-latte/'			 "$nvim"
            done
        elif [ "$current_theme" = "gruvbox-light" ]; then
            for change in $files; do
                sed -i '/gruvbox-light/s/gruvbox-light/catppuccin-latte/g' "$change"
                sed -i '/GruvboxLight/s/GruvboxLight/CatppuccinLatte/'     "$hypr_autostart"
                sed -i '/b57614/s/b57614/1E66F5/'                          "$hypr_conf"
				sed -i '/gruvbox/s/gruvbox/catppuccin-latte/'			 "$nvim"
            done
        elif [ "$current_theme" = "nord" ]; then
            for change in $files; do
                sed -i '/nord/s/nord/catppuccin-latte/g' "$change"
                sed -i '/Nord/s/Nord/CatppuccinLatte/'   "$hypr_autostart"
                sed -i '/88C0D0/s/88C0D0/1E66F5/'        "$hypr_conf"
				sed -i '/nord/s/nord/catppuccin-latte/'	 "$nvim"
            done
        elif [ "$current_theme" = "dracula" ]; then

            for change in $files; do
                sed -i '/dracula/s/dracula/catppuccin-latte/g' "$change"
                sed -i '/Dracula/s/Dracula/CatppuccinLatte/'   "$hypr_autostart"
                sed -i '/bd93f9/s/bd93f9/1E66F5/'              "$hypr_conf"
				sed -i '/dracula/s/dracula/catppuccin-latte/'  "$nvim"
            done
        elif [ "$current_theme" = "kanagawa" ]; then
            for change in $files; do
                sed -i '/kanagawa/s/kanagawa/catppuccin-latte/g' "$change"
                sed -i '/Kanagawa/s/Kanagawa/CatppuccinLatte/'   "$hypr_autostart"
                sed -i '/957FB8/s/957FB8/1E66F5/'			   	 "$hypr_conf"
				sed -i '/kanagawa/s/kanagawa/catppuccin-latte/'  "$nvim"
            done
        fi

        spicetify config current_theme catppuccin-latte color_scheme blue
        spicetify -l -n apply &

        echo 'catppuccin-latte' > "$HOME"/.config/.current_theme

        hyprctl reload; sleep 0.5; ~/.config/hypr/scripts/lid-open-close.sh
        icon_succes="$HOME/.local/bin/notifications/icons/Catppuccin/succes.png"
        notify-send -r 999 -i "$icon_succes" "Done"
        ;;

    "$gruvbox_dark")

        if [ "$current_theme" = "gruvbox-dark" ]; then
            notify-send -r 999 -i "$icon_alert" "This theme is already in use!"
            return 1
        elif [ "$current_theme" = "catppuccin-latte" ]; then
            for change in $files; do
                sed -i '/catppuccin-latte/s/catppuccin-latte/gruvbox-dark/g'  "$change"
                sed -i '/CatppuccinLatte/s/CatppuccinLatte/Gruvbox/'          "$hypr_autostart"
                sed -i '/1E66F5/s/1E66F5/b57614/'                             "$hypr_conf"
				sed -i '/catppuccin-latte/s/catppuccin-latte/gruvbox/'		  "$nvim"
            done
        elif [ "$current_theme" = "rose-pine" ]; then
            for change in $files; do
                sed -i '/rose-pine/s/rose-pine/gruvbox-dark/g' "$change"
                sed -i '/RosePine/s/RosePine/Gruvbox/'         "$hypr_autostart"
                sed -i '/c4a7e7/s/c4a7e7/b57614/'              "$hypr_conf"
				sed -i '/rose-pine/s/rose-pine/gruvbox/'	   "$nvim"
            done
        elif [ "$current_theme" = "catppuccin-mocha" ]; then
            for change in $files; do
                sed -i '/catppuccin-mocha/s/catppuccin-mocha/gruvbox-dark/g' "$change"
                sed -i '/Catppuccin/s/Catppuccin/Gruvbox/'                   "$hypr_autostart"
                sed -i '/c4a7e7/s/c4a7e7/b57614/'                            "$hypr_conf"
				sed -i '/catppuccin-mocha/s/catppuccin-mocha/gruvbox/'	     "$nvim"
            done
        elif [ "$current_theme" = "gruvbox-light" ]; then
            for change in $files; do
                sed -i '/gruvbox-light/s/gruvbox-light/gruvbox-dark/g' "$change"
                sed -i '/GruvboxLight/s/GruvboxLight/Gruvbox/'         "$hypr_autostart"
				sed -i '/vim.opt/s/light/dark/'	~/.config/nvim/lua/plugins/configs/themes/gruvbox.lua
            done
        elif [ "$current_theme" = "nord" ]; then
            for change in $files; do
                sed -i '/nord/s/nord/gruvbox-dark/g' "$change"
                sed -i '/Nord/s/Nord/Gruvbox/'       "$hypr_autostart"
                sed -i '/88C0D0/s/88C0D0/b57614/'    "$hypr_conf"
				sed -i '/nord/s/nord/gruvbox/'	     "$nvim"
            done
        elif [ "$current_theme" = "dracula" ]; then
            for change in $files; do
                sed -i '/dracula/s/dracula/gruvbox-dark/g' "$change"
                sed -i '/Dracula/s/Dracula/Gruvbox/'       "$hypr_autostart"
                sed -i '/bd93f9/s/bd93f9/b57614/'          "$hypr_conf"
				sed -i '/dracula/s/dracula/gruvbox/'	   "$nvim"
            done
        elif [ "$current_theme" = "kanagawa" ]; then
            for change in $files; do
                sed -i '/kanagawa/s/kanagawa/gruvbox-dark/g' "$change"
                sed -i '/Kanagawa/s/Kanagawa/GruvboxDark/'  "$hypr_autostart"
                sed -i '/957FB8/s/957FB8/b57614/'			"$hypr_conf"
				sed -i '/kanagawa/s/kanagawa/gruvbox/'	    "$nvim"
            done
        fi

        spicetify config current_theme gruvbox-dark color_scheme dark
        spicetify -l -n apply &

        echo 'gruvbox-dark' > "$HOME"/.config/.current_theme

        hyprctl reload; sleep 0.5; ~/.config/hypr/scripts/lid-open-close.sh
        icon_succes="$HOME/.local/bin/notifications/icons/GruvboxDark/succes.png"
        notify-send -r 999 -i "$icon_succes" "Done"
        ;;

    "$gruvbox_light")

        if [ "$current_theme" = "gruvbox-light" ]; then
            notify-send -r 999 -i "$icon_alert" "This theme is already in use!"
            return 1
        elif [ "$current_theme" = "rose-pine" ]; then
            for change in $files; do
                sed -i '/rose-pine/s/rose-pine/gruvbox-light/g' "$change"
                sed -i '/RosePine/s/RosePine/GruvboxLight/'     "$hypr_autostart"
                sed -i '/c4a7e7/s/c4a7e7/b57614/'               "$hypr_conf"
				sed -i '/rose-pine/s/rose-pine/gruvbox/'		"$nvim"
            done
        elif [ "$current_theme" = "catppuccin-latte" ]; then
            for change in $files; do
                sed -i '/catppuccin-latte/s/catppuccin-latte/gruvbox-light/g' "$change"
                sed -i '/CatppuccinLatte/s/CatppuccinLatte/GruvboxLight/'     "$hypr_autostart"
                sed -i '/1E66F5/s/1E66F5/b57614/'                             "$hypr_conf"
				sed -i '/catppuccin-latte/s/catppuccin-latte/gruvbox/'		"$nvim"
            done
        elif [ "$current_theme" = "catppuccin-mocha" ]; then
            for change in $files; do
                sed -i '/catppuccin-mocha/s/catppuccin-mocha/gruvbox-light/g' "$change"
                sed -i '/Catppuccin/s/Catppuccin/GruvboxLight/'               "$hypr_autostart"
                sed -i '/c4a7e7/s/c4a7e7/b57614/'                             "$hypr_conf"
				sed -i '/catppuccin-mocha/s/catppuccin-mocha/gruvbox/'		  "$nvim"
            done
        elif [ "$current_theme" = "gruvbox-dark" ]; then
            for change in $files; do
                sed -i '/gruvbox-dark/s/gruvbox-dark/gruvbox-light/g' "$change"
                sed -i '/GruvboxDark/s/GruvboxDark/GruvboxLight/'     "$hypr_autostart"
				sed -i '/vim.opt/s/dark/light/'	~/.config/nvim/lua/plugins/configs/themes/gruvbox.lua
            done
        elif [ "$current_theme" = "nord" ]; then
            for change in $files; do
                sed -i '/nord/s/nord/gruvbox-light/g' "$change"
                sed -i '/Nord/s/Nord/GruvboxLight/'   "$hypr_autostart"
                sed -i '/88C0D0/s/88C0D0/b57614/'     "$hypr_conf"
				sed -i '/nord/s/nord/gruvbox/'		  "$nvim"
            done
        elif [ "$current_theme" = "dracula" ]; then
            for change in $files; do
                sed -i '/dracula/s/dracula/gruvbox-light/g' "$change"
                sed -i '/Dracula/s/Dracula/GruvboxLight/'   "$hypr_autostart"
                sed -i '/bd93f9/s/bd93f9/b57614/'           "$hypr_conf"
				sed -i '/dracula/s/dracula/gruvbox/'		 "$nvim"
            done
        elif [ "$current_theme" = "kanagawa" ]; then
            for change in $files; do
                sed -i '/kanagawa/s/kanagawa/gruvbox-light/g' "$change"
                sed -i '/Kanagawa/s/Kanagawa/GruvboxLight/'   "$hypr_autostart"
                sed -i '/957FB8/s/957FB8/b57614/'			  "$hypr_conf"
				sed -i '/kanagawa/s/kanagawa/gruvbox/'		  "$nvim"
            done
        fi

        spicetify config current_theme gruvbox-light color_scheme light
        spicetify -l -n apply &

        echo 'gruvbox-light' > "$HOME"/.config/.current_theme

        hyprctl reload; sleep 0.5; ~/.config/hypr/scripts/lid-open-close.sh
        icon_succes="$HOME/.local/bin/notifications/icons/GruvboxLight/succes.png"
        notify-send -r 999 -i "$icon_succes" "Done"
        ;;

    "$nord")

        if [ "$current_theme" = "nord" ]; then
            notify-send -r 999 -i "$icon_alert" "This theme is already in use"
            return 1
        elif [ "$current_theme" = "rose-pine" ]; then
            for change in $files; do
                sed -i '/rose-pine/s/rose-pine/nord/g' "$change"
                sed -i '/RosePine/s/RosePine/Nord/'    "$hypr_autostart"
                sed -i '/c4a7e7/s/c4a7e7/88C0D0/'      "$hypr_conf"
				sed -i '/rose-pine/s/rose-pine/nord/'	"$nvim"
            done
        elif [ "$current_theme" = "catppuccin-latte" ]; then
            for change in $files; do
                sed -i '/catppuccin-latte/s/catppuccin-latte/nord/g'  "$change"
                sed -i '/CatppuccinLatte/s/CatppuccinLatte/Nord/'     "$hypr_autostart"
                sed -i '/1E66F5/s/1E66F5/88C0D0/'                     "$hypr_conf"
				sed -i '/catppuccin-latte/s/catppuccin-latte/nord/'	  "$nvim"
            done
        elif [ "$current_theme" = "catppuccin-mocha" ]; then
            for change in $files; do
                sed -i '/catppuccin-mocha/s/catppuccin-mocha/nord/g' "$change"
                sed -i '/Catppuccin/s/Catppuccin/Nord/'              "$hypr_autostart"
                sed -i '/c4a7e7/s/c4a7e7/88C0D0/'                    "$hypr_conf"
				sed -i '/catppuccin-mocha/s/catppuccin-mocha/nord/'	  "$nvim"
            done
        elif [ "$current_theme" = "gruvbox-dark" ]; then
            for change in $files; do
                sed -i '/gruvbox-dark/s/gruvbox-dark/nord/g' "$change"
                sed -i '/Gruvbox/s/Gruvbox/Nord/'            "$hypr_autostart"
                sed -i '/b57614/s/b57614/88C0D0/'            "$hypr_conf"
				sed -i '/gruvbox/s/gruvbox/nord/'			 "$nvim"
            done
        elif [ "$current_theme" = "gruvbox-light" ]; then
            for change in $files; do
                sed -i '/gruvbox-light/s/gruvbox-light/nord/g' "$change"
                sed -i '/GruvboxLight/s/GruvboxLight/Nord/'    "$hypr_autostart"
                sed -i '/b57614/s/b57614/88C0D0/'              "$hypr_conf"
				sed -i '/gruvbox/s/gruvbox/nord/'			 "$nvim"
            done
        elif [ "$current_theme" = "dracula" ]; then
            for change in $files; do
                sed -i '/dracula/s/dracula/nord/g' "$change"
                sed -i '/Dracula/s/Dracula/Nord/'  "$hypr_autostart"
                sed -i '/bd93f9/s/bd93f9/88C0D0/'  "$hypr_conf"
				sed -i '/dracula/s/dracula/nord/'	"$nvim"
            done
        elif [ "$current_theme" = "kanagawa" ]; then
            for change in $files; do
                sed -i '/kanagawa/s/kanagawa/nord/g' "$change"
                sed -i '/Kanagawa/s/Kanagawa/Nord/'  "$hypr_autostart"
                sed -i '/957FB8/s/957FB8/88C0D0/'    "$hypr_conf"
				sed -i '/kanagawa/s/kanagawa/nord/'  "$nvim"
            done
        fi

        spicetify config current_theme nord color_scheme main
        spicetify -l -n apply &

        echo 'nord' > "$HOME"/.config/.current_theme

        hyprctl reload; sleep 0.5; ~/.config/hypr/scripts/lid-open-close.sh
        icon_succes="$HOME/.local/bin/notifications/icons/Nord/succes.png"
        notify-send -r 999 -i "$icon_succes" "Done"

        ;;

    "$dracula")

        if [ "$current_theme" = "dracula" ]; then
            notify-send -r 999 -i "$icon_alert" "This theme is already in use"
            return 1
        elif [ "$current_theme" = "rose-pine" ]; then
            for change in $files; do
                sed -i '/rose-pine/s/rose-pine/dracula/g' "$change"
                sed -i '/RosePine/s/RosePine/Dracula/'    "$hypr_autostart"
                sed -i '/c4a7e7/s/c4a7e7/bd93f9/'         "$hypr_conf"
				sed -i '/rose-pine/s/rose-pine/dracula/'  "$nvim"
            done
        elif [ "$current_theme" = "catppuccin-latte" ]; then
            for change in $files; do
                sed -i '/catppuccin-latte/s/catppuccin-latte/dracula/g'  "$change"
                sed -i '/CatppuccinLatte/s/CatppuccinLatte/Dracula/'     "$hypr_autostart"
                sed -i '/1E66F5/s/1E66F5/bd93f9/'                        "$hypr_conf"
				sed -i '/catppuccin-latte/s/catppuccin-latte/dracula/'   "$nvim"
            done
        elif [ "$current_theme" = "catppuccin-mocha" ]; then
            for change in $files; do
                sed -i '/catppuccin-mocha/s/catppuccin-mocha/dracula/g' "$change"
                sed -i '/Catppuccin/s/Catppuccin/Dracula/'              "$hypr_autostart"
                sed -i '/c4a7e7/s/c4a7e7/bd93f9/'                       "$hypr_conf"
				sed -i '/catppuccin-mocha/s/catppuccin-mocha/dracula/'  "$nvim"
            done
        elif [ "$current_theme" = "gruvbox-dark" ]; then
            for change in $files; do
                sed -i '/gruvbox-dark/s/gruvbox-dark/dracula/g' "$change"
                sed -i '/Gruvbox/s/Gruvbox/Dracula/'            "$hypr_autostart"
                sed -i '/b57614/s/b57614/bd93f9/'               "$hypr_conf"
				sed -i '/gruvbox/s/gruvbox/dracula/'			"$nvim"
            done
        elif [ "$current_theme" = "gruvbox-light" ]; then
            for change in $files; do
                sed -i '/gruvbox-light/s/gruvbox-light/dracula/g' "$change"
                sed -i '/GruvboxLight/s/GruvboxLight/Dracula/'    "$hypr_autostart"
                sed -i '/b57614/s/b57614/bd93f9/'                 "$hypr_conf"
				sed -i '/gruvbox/s/gruvbox/dracula/'			"$nvim"
            done
        elif [ "$current_theme" = "nord" ]; then
            for change in $files; do
                sed -i '/nord/s/nord/dracula/g'   "$change"
                sed -i '/Nord/s/Nord/Dracula/'    "$hypr_autostart"
                sed -i '/88C0D0/s/88C0D0/bd93f9/' "$hypr_conf"
				sed -i '/nord/s/nord/dracula/'	  "$nvim"
            done
        elif [ "$current_theme" = "kanagawa" ]; then
            for change in $files; do
                sed -i '/kanagawa/s/kanagawa/dracula/g' "$change"
                sed -i '/Kanagawa/s/Kanagawa/Dracula/'  "$hypr_autostart"
                sed -i '/FF91A3/s/FF91A3/957FB8/'       "$hypr_conf"
				sed -i '/kanagawa/s/kanagawa/dracula/'  "$nvim"
            done
        fi

        spicetify config current_theme dracula color_scheme Base
        spicetify -l -n apply &

        echo 'dracula' > "$HOME"/.config/.current_theme

        hyprctl reload; sleep 0.5; ~/.config/hypr/scripts/lid-open-close.sh
        icon_succes="$HOME/.local/bin/notifications/icons/Dracula/succes.png"
        notify-send -r 999 -i "$icon_succes" "Done"

        ;;

	"$kanagawa")

        if [ "$current_theme" = "kanagawa" ]; then
            notify-send -r 999 -i "$icon_alert" "This theme is already in use"
            return 1
        elif [ "$current_theme" = "rose-pine" ]; then
            for change in $files; do
                sed -i '/rose-pine/s/rose-pine/kanagawa/g'   "$change"
                sed -i '/RosePine/s/RosePine/Kanagawa/'      "$hypr_autostart"
                sed -i '/c4a7e7/s/c4a7e7/957FB8/'            "$hypr_conf"
				sed -i '/rose-pine/s/rose-pine/kanagawa/'    "$nvim"
            done
        elif [ "$current_theme" = "catppuccin-latte" ]; then
            for change in $files; do
                sed -i '/catppuccin-latte/s/catppuccin-latte/kanagawa/g'  "$change"
                sed -i '/CatppuccinLatte/s/CatppuccinLatte/Kanagawa/'     "$hypr_autostart"
                sed -i '/1E66F5/s/1E66F5/957FB8/'                         "$hypr_conf"
				sed -i '/catppuccin-latte/s/catppuccin-latte/kanagawa/'    "$nvim"
            done
        elif [ "$current_theme" = "catppuccin-mocha" ]; then
            for change in $files; do
                sed -i '/catppuccin-mocha/s/catppuccin-mocha/kanagawa/g' "$change"
                sed -i '/Catppuccin/s/Catppuccin/Kanagawa/'              "$hypr_autostart"
                sed -i '/c4a7e7/s/c4a7e7/957FB8/'                        "$hypr_conf"
				sed -i '/catppuccin-mocha/s/catppuccin-mocha/kanagawa/'    "$nvim"
            done
        elif [ "$current_theme" = "gruvbox-dark" ]; then
            for change in $files; do
                sed -i '/gruvbox-dark/s/gruvbox-dark/kanagawa/g' "$change"
                sed -i '/Gruvbox/s/Gruvbox/Kanagawa/'            "$hypr_autostart"
                sed -i '/b57614/s/b57614/957FB8/'                "$hypr_conf"
				sed -i '/gruvbox/s/gruvbox/kanagawa/'			"$nvim"
            done
        elif [ "$current_theme" = "gruvbox-light" ]; then
            for change in $files; do
                sed -i '/gruvbox-light/s/gruvbox-light/kanagawa/g' "$change"
                sed -i '/GruvboxLight/s/GruvboxLight/Kanagawa/'          "$hypr_autostart"
                sed -i '/b57614/s/b57614/957FB8/'                     "$hypr_conf"
				sed -i '/gruvbox/s/gruvbox/kanagawa/'			"$nvim"
            done
        elif [ "$current_theme" = "nord" ]; then
            for change in $files; do
                sed -i '/nord/s/nord/kanagawa/g'   "$change"
                sed -i '/Nord/s/Nord/Kanagawa/'    "$hypr_autostart"
                sed -i '/88C0D0/s/88C0D0/957FB8/'  "$hypr_conf"
				sed -i '/nord/s/nord/kanagawa/'			"$nvim"
            done
        fi

        spicetify config current_theme kanagawa color_scheme main
        spicetify -l -n apply &

        echo "kanagawa" > "$HOME"/.config/.current_theme

        hyprctl reload; sleep 0.5; ~/.config/hypr/scripts/lid-open-close.sh
        icon_succes="$HOME/.local/bin/notifications/icons/Kanagawa/succes.png"
        notify-send -r 999 -i "$icon_succes" "Done"
		;;
    *)
        notify-send -r 999 -i "$icon_alert" "Invalid theme"
        exit 1
    ;;
esac

