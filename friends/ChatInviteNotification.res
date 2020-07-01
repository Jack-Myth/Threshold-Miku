"friends/ChatInviteNotification.res"
{
	styles
	{
		Label
		{
			font-size=14 [$LINUX]
			font-size=16
		}
	}

	layout{
		place {control="ImageAvatar" x=16 y=16 width=42 height=42}
		place {control="NotificationClickPanel" x=0 y=0 width=max height=max}
		place {control="LabelSender" x=64 y=16 width=172 height=16}
		place {control="LabelInfo" x=64 y=30 width=172 height=16}
		place {control="LabelChat" x=64 y=44 width=172 height=16}
		place {control="LabelHotkey" x=0 y=74 width=240 height=24}
		place {control="DarkenedRegion" width=0 height=0}
	}
	
	"ChatInvitationNotification"
	{
		"ControlName"		"CChatInvitationNotification"
		"fieldName"		"ChatInvitationNotification"
		"xpos"		"0"
		"ypos"		"0"
		"wide"		"240"
		"tall"		"98"
		"AutoResize"		"0"
		"PinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
		"paintbackground"		"1"
		style="notification"
	}
	"ImageAvatar"
	{
		"ControlName"		"ImagePanel"
		"fieldName"		"ImageAvatar"
		"xpos"		"16"
		"ypos"		"16"
		"wide"		"42"
		"tall"		"42"
		"AutoResize"		"0"
		"PinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
		"paintbackground"		"1"
		"gradientVertical"		"0"
		"scaleImage"		"0"
	}
	"NotificationClickPanel"
	{
		"ControlName"		"CNotificationClickPanel"
		"fieldName"		"NotificationClickPanel"
		"xpos"		"0"
		"ypos"		"0"
		"zpos"		"1"
		"wide"		"64"
		"tall"		"24"
		"AutoResize"		"0"
		"PinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
		"paintbackground"		"0"
	}
	"LabelSender"
	{
		"ControlName"		"Label"
		"fieldName"		"LabelSender"
		"xpos"		"64"
		"ypos"		"16"
		"wide"		"172"
		"tall"		"14"
		"AutoResize"		"0"
		"PinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
		"paintbackground"		"1"
		"labelText"		"%name%"
		"textAlignment"		"north-west"
		"wrap"		"0"
		"font"		FriendsSmall
	}
	"LabelInfo"
	{
		"ControlName"		"Label"
		"fieldName"		"LabelInfo"
		"xpos"		"64"
		"ypos"		"30"
		"wide"		"172"
		"tall"		"14"
		"AutoResize"		"0"
		"PinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
		"paintbackground"		"1"
		"labelText"		"#Friends_ChatInvitation_Info"
		"textAlignment"		"north-west"
		"wrap"		"0"
		"font"		FriendsSmall
	}
	"LabelChat"
	{
		"ControlName"		"Label"
		"fieldName"		"LabelChat"
		"xpos"		"64"
		"ypos"		"44"
		"wide"		"172"
		"tall"		"14"
		"AutoResize"		"0"
		"PinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
		"paintbackground"		"1"
		"labelText"		"%chat%"
		"textAlignment"		"north-west"
		"wrap"		"0"
		"font"		FriendsSmall
	}
	"DarkenedRegion"
	{
		"controlname"	"imagepanel"
		"fieldname"		"DarkenedRegion"
		"xpos"		"0"
		"ypos"		"74"
		"wide"		"240"
		"tall"		"24"
		"fillcolor"	"Black"
		"zpos"		"-1"
	}
	"LabelHotkey"
	{
		"ControlName"		"Label"
		"fieldName"		"LabelHotkey"
		"xpos"		"0"
		"ypos"		"74"
		"wide"		"240"
		"tall"		"24"
		"AutoResize"		"0"
		"PinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
		"paintbackground"		"1"
		"labelText"		"#Friends_InviteNotification_Hotkey"
		"textAlignment"		"center"
		"wrap"		"0"
		"font"		FriendsSmall
	}
}
