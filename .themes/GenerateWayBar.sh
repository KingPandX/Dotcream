. ~/.cache/wal/colors.sh

HyprColor="$HOME/.config/hypr/myColors.conf"

ewwCols="$HOME/.config/eww/colors.scss"

hex_color="${foreground^^}"

echo $hex_color
# Convert the hex color to decimal RGB values
r=$(echo $hex_color | cut -c2-3)
g=$(echo $hex_color | cut -c4-5)
b=$(echo $hex_color | cut -c6-7)

echo $r
echo $g
echo $b

# Convert the decimal RGB values to rgba() format
rgba="rgba($(echo "ibase=16;$r" | bc), $(echo "ibase=16;$g" | bc), $(echo "ibase=16;$b" | bc), 0.6)"

echo $rgba

Copacity="${background^^}"
echo $Copacity

r2=$(echo $Copacity | cut -c2-3)
g2=$(echo $Copacity | cut -c4-5)
b2=$(echo $Copacity | cut -c6-7)



rgba2="rgba($(echo "ibase=16;$r2" | bc), $(echo "ibase=16;$g2" | bc), $(echo "ibase=16;$b2" | bc), 0.6)"

bg=$(echo $background | cut -c2-7)
fg=$(echo $foreground | cut -c2-7)
c0=$(echo $color0 | cut -c2-7)
c1=$(echo $color1 | cut -c2-7)
c2=$(echo $color2 | cut -c2-7)
c3=$(echo $color3 | cut -c2-7)
c2=$(echo $color2 | cut -c2-7)
c3=$(echo $color3 | cut -c2-7)
tm="99"
fo="$bg$tm"
bo="$fg$tm"

echo "\$bg=rgb($bg)
\$fg=rgb($fg)
\$c0=rgb($c0)
\$c1=rgb($c1)
\$c2=rgb($c2)
\$c3=rgb($c3)
\$bo=rgba($bo)
\$fo=rgba($fo)
\$wall='$wallpaper'
" > $HyprColor

echo $fg
echo $c0
echo $c1
echo $c2
echo $c3
echo $bo
echo $fo

echo "\$bg: rgba($background, 1);
\$bgA: rgba($background, 0.3);
\$c1: $color1;
\$c2: $color2;
\$c3: $color3;
\$c4: $color4;
\$c5: $color5;
\$c6: $color6;
\$shadow: rgba($color3, 0.4);
\$border_col: rgba($color3, 1);
\$best_so_far: rgba($color2, 0.1);" > $ewwCols
