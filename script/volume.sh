#!/bin/sh

[ $(pamixer --get-mute) = true ] && echo 婢 && exit

vol="$(pamixer --get-volume)"

if [ "$vol" -gt "70" ]; then
	icon=""
elif [ "$vol" -gt "30" ]; then
	icon="墳"
elif [ "$vol" -gt "0" ]; then
	icon=""
else
        echo 婢 && exit
fi

echo "$icon $vol%"

