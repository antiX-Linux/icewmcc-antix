#!/bin/bash

ANS=$(yad  --width=100 --height=200 --title="IceWM Config" --list --separator="" --column="" --text "Show or hide workspaces?" "Show Workspaces" "Hide Workspaces")

if [ "$ANS" = "Hide Workspaces" ] ; then
  /usr/local/bin/icewmcc/icewmccprefs.pl "TaskBarShowWorkspaces" "0" | yad --text "Please restart IceWM for\nchanges to take effect." &
fi

if [ "$ANS" = "Show Workspaces" ] ; then
  /usr/local/bin/icewmcc/icewmccprefs.pl "TaskBarShowWorkspaces" "1" | yad --text "Please restart IceWM for\nchanges to take effect." &
fi

exit 0