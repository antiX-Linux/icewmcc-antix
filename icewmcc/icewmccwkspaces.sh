#!/bin/bash

ans=$(yad --scale --text "How many workspaces?" --title="IceWM Config" --min-value=1 --max-value=4 --value=2 --step 1)
if [ "$ans" = "4" ] ; then
  /usr/local/bin/icewmcc/icewmccwkspaces.pl "WorkspaceNames=\" 1 \",\" 2 \",\" 3 \",\" 4 \"" | yad --text "Please restart IceWM for\nchanges to take effect." &
fi

if [ "$ans" = "3" ] ; then
  /usr/local/bin/icewmcc/icewmccwkspaces.pl "WorkspaceNames=\" 1 \",\" 2 \",\" 3\"" | yad --text "Please restart IceWM for\nchanges to take effect." &
fi

if [ "$ans" = "2" ] ; then
  /usr/local/bin/icewmcc/icewmccwkspaces.pl "WorkspaceNames=\" 1 \",\" 2 \"" | yad --text "Please restart IceWM for\nchanges to take effect." &
fi

if [ "$ans" = "1" ] ; then
  /usr/local/bin/icewmcc/icewmccwkspaces.pl "WorkspaceNames=\" 1 \"" | yad --text "Please restart IceWM for\nchanges to take effect." &
fi 

exit 0