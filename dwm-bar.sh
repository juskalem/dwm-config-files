#!/bin/sh

# dependencies alsa and acpi

while true; do

date=$(date +" %A,%x    %R")
sound=$(amixer sget Master | awk ' /%/ { gsub(/[\[\]]/,"",$4); /\[/ gsub(/[\[\]]/,"",$6) gsub("on","墳",$6) gsub("off","ﱝ",$6); print $6 " " $4}')
battery=$(acpi -b | awk ' /1/  { gsub(",","",$3); gsub(",","",$4); print $4 " " "(" "Battery" " " $3 ")"} ')

xsetroot -name " $date  $sound  ﴐ $battery "
	
	sleep 5s
done
