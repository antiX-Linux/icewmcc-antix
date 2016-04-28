#! /bin/bash

ANS=$(yad --width=100 --height=200 --title="IceWM Config" --list --separator="" --column="" --text="Display taskbar in IceWM?" "Hide Taskbar" "Show Taskbar")

if [ "$ANS" = "Hide Taskbar" ]; then
   /usr/local/bin/icewmcc/icewmccprefs.pl "ShowTaskBar" "0" | yad --text "Please restart IceWM for\nchanges to take effect." &
fi

if [ "$ANS" = "Show Taskbar" ]; then
   /usr/local/bin/icewmcc/icewmccprefs.pl "ShowTaskBar" "1" | yad --text "Please restart IceWM for\nchanges to take effect." &
fi

exit 0