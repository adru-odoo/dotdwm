#!/bin/bash

# Display different wallpapers for each monitor

cmd='xwallpaper '
if xrandr --listactivemonitors
then
    # xrandr is available: get output names from xrandr
    for output in $(xrandr --listactivemonitors | cut -d ' ' -f6 )
    do
       cmd="$cmd --output $output --stretch /home/adam/.dwm/hashtags2.png"
    done
else
    # fallback: xrandr not available
    cmd="$cmd --no-randr --stretch  /home/adam/.dwm/hashtags2.png"
fi
$cmd


