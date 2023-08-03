#!/bin/bash

dir="$(pwd)"

echo "$dir"

rm ~/.config/alacritty -r
rm ~/.config/eww -r
rm ~/.config/hypr -r
rm ~/.config/ranger -r
rm ~/.config/rofi -r

cp $dir/alacritty ~/.config -r
cp $dir/eww ~/.config -r
cp $dir/hypr ~/.config -r
cp $dir/ranger ~/.config -r
cp $dir/rofi ~/.config -r
cp $dir/.themes ~/ -r

cp $dir/wallpapers ~/ -r

bash ~/.themes/BGChanger.sh ~/wallpapers/6b71e0c74e6b42f53de0cefb7884f704.gif