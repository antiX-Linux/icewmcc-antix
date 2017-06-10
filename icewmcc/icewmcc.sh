#! /bin/bash
# File Name: icewmcc.sh
# Purpose: all-in-one control centre for IceWM in antiX
# Authors: OU812 and minor modifications by anticapitalista
# Latest Change: 24 October 2013 by anticapitalista. Function for ICONS. New look.

TEXTDOMAINDIR=/usr/share/locale
TEXTDOMAIN=icewmcc.sh
# Options
ICONS=/usr/share/icons/antiX

Taskbar=$"Taskbar" Applets=$"Applets" Workspaces=$"Workspaces" Windows=$"Windows"

export IceWMCC=$(cat <<End_of_Text
<window title="`gettext $"IceWM control centre"`" icon="gnome-control-center" window-position="1">

<vbox>
  
  <notebook tab-pos="0" labels="$Taskbar|$Applets|$Workspaces|$Windows"> 
  
  <vbox>
    <frame>
	<hbox>
	  <vbox>
                <hbox>
		  <button>
		  <input file>"$ICONS/preferences-desktop-wallpaper.png"</input>
		  <action>/usr/local/bin/icewmcc/icewmccshtb.sh &</action>
		  </button>
		  <text use-markup="true" width-chars="25">
		  <label>"`gettext $"Show or Hide Taskbar"`"</label>
		  </text>
		</hbox>
                 <hbox>
		  <button>
		  <input file>"$ICONS/computer.png"</input>
		  <action>/usr/local/bin/icewmcc/icewmcctbpos.sh &</action>
		  </button>
		  <text use-markup="true" width-chars="25">
		  <label>"`gettext $"Taskbar Position"`"</label>
		  </text>
		</hbox>
		<hbox>
		  <button>
		  <input file>"$ICONS/gnome-settings-default-applications.png"</input>
		  <action>/usr/local/bin/icewmcc/icewmcctbheight.sh &</action>
		  </button>
		  <text use-markup="true" width-chars="25">
		  <label>"`gettext $"Double-Height Taskbar"`"</label>
		  </text>
		</hbox>
              </vbox>
	</hbox>
    </frame>
  </vbox>
  
  <vbox>
     <frame>
	<hbox>
	  <vbox>
		<hbox>
		  <button>
		  <input file>"$ICONS/utilities-system-monitor.png"</input>
		  <action>/usr/local/bin/icewmcc/icewmcccpumon.sh &</action>
		  </button>
		  <text use-markup="true" width-chars="25">
		  <label>"`gettext $"Toggle CPU Monitor"`"</label>
		  </text>
		</hbox>
                <hbox>
		  <button>
		  <input file>"$ICONS/gnome-session.png"</input>
		  <action>/usr/local/bin/icewmcc/icewmccnetmon.sh &</action>
		  </button>
		  <text use-markup="true" width-chars="25">
		  <label>"`gettext $"Toggle Network Monitor"`"</label>
		  </text>
		</hbox>
		<hbox>
		  <button>
		  <input file>"$ICONS/mail.png"</input>
		  <action>/usr/local/bin/icewmcc/icewmccmail.sh &</action>
		  </button>
		  <text use-markup="true" width-chars="25">
		  <label>"`gettext $"Toggle Mailbox Status"`"</label>
		  </text>
		</hbox>
             </vbox>
	</hbox>
	</frame>
  </vbox>

  <vbox>
     <frame>
	<hbox>
	  <vbox>
		<hbox>
		  <button>
		  <input file>"$ICONS/printer.png"</input>
		  <action>/usr/local/bin/icewmcc/icewmccshowwkspaces.sh &</action>
		  </button>
		  <text use-markup="true" width-chars="25">
		  <label>"`gettext $"Show or Hide Workspaces"`"</label>
		  </text>
		</hbox>
                <hbox>
		  <button>
		  <input file>"$ICONS/video-display.png"</input>
		  <action>/usr/local/bin/icewmcc/icewmccwkspaces.sh &</action>
		  </button>
		  <text use-markup="true" width-chars="25">
		  <label>"`gettext $"Number of Workspaces"`"</label>
		  </text>
		</hbox>
		<hbox>
		  <button>
		  <input file>"$ICONS/preferences-desktop-theme.png"</input>
		  <action>/usr/local/bin/icewmcc/icewmccwinlist.sh &</action>
		  </button>
		  <text use-markup="true" width-chars="25">
		  <label>"`gettext $"Toggle Window List Button"`"</label>
		  </text>
		</hbox>
             </vbox>
	</hbox>
	</frame>
  </vbox>

  <vbox>
    <frame>
	<hbox>
	  <vbox>
                 <hbox>
		  <button>
		  <input file>"$ICONS/cs-desktop-effects.png"</input>
		  <action>/usr/local/bin/icewmcc/icewmccmovestat.sh &</action>
		  </button>
		  <text use-markup="true" width-chars="25">
		  <label>"`gettext $"Show Move Status"`"</label>
		  </text>
		</hbox> 
                <hbox>
		  <button>
		  <input file>"$ICONS/computer.png"</input>
		  <action>/usr/local/bin/icewmcc/icewmccopmove.sh &</action>
		  </button>
		  <text use-markup="true" width-chars="25">
		  <label>"`gettext $"Enable Opaque Move"`"</label>
		  </text>
		</hbox>
                <hbox>
                  <button>
                  <input file>"$ICONS/gparted.png"</input>
                  <action>/usr/local/bin/icewmcc/icewmccopresize.sh &</action>
                  </button>
                  <text use-markup="true" width-chars="25">
                  <label>"`gettext $"Enable Opaque Resize"`"</label>
                  </text>
                </hbox>      
	  </vbox>
	</hbox>
    </frame>
  </vbox>
 </notebook>
  <hbox>
	<button>
	<label>"Close"</label>
	<input file>"$ICONS/application-exit.png"</input>
	<action>EXIT:close</action>
	</button>
  </hbox>
</vbox>
</window>
End_of_Text
)

gtkdialog --program=IceWMCC
unset IceWMCC
