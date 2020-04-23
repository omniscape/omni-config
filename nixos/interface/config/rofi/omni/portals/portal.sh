#!/bin/sh

WS[1]="SENSE"
WS[2]="DASH"
WS[3]="MECHA"
WS[4]="LABS"
WS[5]="ATLAS"
WS[6]="STUDIO"
WS[7]="COMMS"
WS[8]="EDGE"
WS[9]="VISION"

for WS in ${WS[@]}
  do
    echo $WS
  done

portal=$1

case $portal in
   "${WS[1]}")
     i3-msg workspace "SENSE" >/dev/null & xdotool key --clearmodifiers Escape
     ;;
   "${WS[2]}")
     i3-msg workspace "DASH" >/dev/null & xdotool key --clearmodifiers Escape
     ;;
   "${WS[3]}")
     i3-msg workspace "MECHA" >/dev/null & xdotool key --clearmodifiers Escape
     ;;
   "${WS[4]}")
     i3-msg workspace "LABS" >/dev/null & xdotool key --clearmodifiers Escape
     ;;
   "${WS[5]}")
     i3-msg workspace "ATLAS" >/dev/null & xdotool key --clearmodifiers Escape
     ;;
   "${WS[6]}")
     i3-msg workspace "STUDIO" >/dev/null & xdotool key --clearmodifiers Escape
     ;;
   "${WS[7]}")
     i3-msg workspace "COMMS" >/dev/null & xdotool key --clearmodifiers Escape
     ;;
   "${WS[8]}")
     i3-msg workspace "EDGE" >/dev/null & xdotool key --clearmodifiers Escape
     ;;
   "${WS[9]}")
     i3-msg workspace "VISION" >/dev/null & xdotool key --clearmodifiers Escape
     ;;
   *)
     exit 2
esac

exit 0
