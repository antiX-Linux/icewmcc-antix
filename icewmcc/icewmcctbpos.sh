#!/bin/bash

ANS=$(yad  --width=100 --height=200 --title="IceWM Config" --list --separator="" --column="" --text "Position of taskbar?" "Bottom of Screen" "Top of Screen")

if [ "$ANS" = "Bottom of Screen" ] ; then
  /usr/local/bin/icewmcc/icewmccprefs.pl "TaskBarAtTop" "0" | yad --text "Please restart IceWM for\nchanges to take effect." &
fi

if [ "$ANS" = "Top of Screen" ] ; then
  /usr/local/bin/icewmcc/icewmccprefs.pl "TaskBarAtTop" "1" | yad --text "Please restart IceWM for\nchanges to take effect." &
fi

exit 0