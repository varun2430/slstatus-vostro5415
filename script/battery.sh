#!/bin/sh

case "$(cat /sys/class/power_supply/BAT0/status)" in

	"Full") status="" ;;
	"Discharging") status="" ;;
	"Charging") status="" ;;
	"Not charging") status="" ;;
	"Unknown") status="" ;;
	*) exit 1 ;;

esac

capacity=$(cat /sys/class/power_supply/BAT0/capacity);

echo "$status $capacity%";
