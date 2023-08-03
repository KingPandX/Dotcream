#!/bin/zsh

selectec=$(echo "󰚦 - Shut Down
󰦛 - Reboot
󰿅 - Close Session
Change Theme
Cancel" | rofi -dmenu -p "Power Settings")

if [[ "$selectec" == "󰚦 - Shut Down" ]]; then
    shutdown -h now
else
    if [[ "$selectec" == "󰦛 - Reboot" ]]; then
        reboot  
    else
        if [[ "$selectec" == "󰿅 - Close Session" ]]; then
            bspc quit & hyprctl dispatch exit
        else
            if [[ "$selectec" == "Change Theme" ]]; then
                Theme=$(echo "Cyber Girl
Miles Morales
Retro car
Lofi Camp
Cancel" | rofi -dmenu -p "Menu")

if [[ "$Theme" == "Cyber Girl" ]]; then
    bash $HOME/Themes/cyberGirl.sh
else
    if [[ "$Theme" == "Miles Morales" ]]; then
        bash $HOME/Themes/MilesMorales.sh
    else
        if [[ "$Theme" == "Retro car" ]]; then
            bash $HOME/Themes/RetroCar.sh
        else
            if [[ "$Theme" == "Lofi Camp" ]]; then
                bash $HOME/Themes/LofiCamp.sh
            fi
        fi
    fi
fi
            else
                if [[ "$selectec" == "Cancel" ]]; then
                    echo Void
                fi
            fi
        fi
    fi
fi