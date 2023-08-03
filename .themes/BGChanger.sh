#$1 ruta del fondo

wayBarOn=false

if [[ $1 != "" ]]; then

    if pgrep -x "waybar" > /dev/null
    then
	    killall waybar
        wayBarOn=true
    else
        echo nada que ver aqui
    fi

    killall hyprpaper

    wal -i $1

    swww img --transition-type=fade $1 &
    bash $HOME/.themes/GenerateWayBar.sh &

    if [[ $wayBarOn == true ]]; then
        waybar -c ~/.config/waybar/config.json &
    fi

else
    echo ingresa una ruta
fi
