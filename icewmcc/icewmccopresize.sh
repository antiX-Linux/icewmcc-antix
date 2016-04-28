#!/bin/bash

ANS=$(yad  --width=100 --height=200 --title="IceWM Config" --list --separator="" --column="" --text "Opaque window resize?" "Opaque Resize" "Transparent Resize")

if [ "$ANS" = "Opaque Resize" ] ; then
  /usr/local/bin/icewmcc/icewmccprefs.pl "OpaqueResize" "1" | yad --text "Please restart IceWM for\nchanges to take effect." &
fi

if [ "$ANS" = "Transparent Resize" ] ; then
  /usr/local/bin/icewmcc/icewmccprefs.pl "OpaqueResize" "0" | yad --text "Please restart IceWM for\nchanges to take effect." &
fi

exit 0