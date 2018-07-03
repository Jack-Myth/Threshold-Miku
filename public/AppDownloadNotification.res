"friends/AppDownloadNotification.res"
{
	// Hid the game image until Steam can get it together and not also show the profile border
	// Text offset was previously 64
	
	styles
	{
		Label
		{
			font-size=14 [$LINUX]
			font-size=16
		}
	}
	
	layout{
		place {control="GameImage" x=16 y=16 width=0 height=0}
		place {control="NotificationClickPanel" x=0 y=0 width=max height=max}
		place {control="LabelSteam" x=20 y=16 width=172 height=16}
		place {control="LabelInfo" x=20 y=30 width=172 height=16}
		place {control="LabelGame" x=20 y=44 width=172 height=16}
	}
	
	"AppDownloadNotification"
	{
		"ControlName"		"CAppDownloadedNotification"
		"fieldName"		"AppDownloadNotification"
		"xpos"		"0"
		"ypos"		"0"
		"wide"		"240"
		"tall"		"74"
		"AutoResize"		"0"
		"PinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
		"paintbackground"		"1"
		style="Notification"
	}
	
	"GameImage"
	{
		"ControlName"		"ImagePanel"
		"fieldName"		"GameImage"
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
	
	"LabelSteam"
	{
		"ControlName"		"Label"
		"fieldName"			"LabelSteam"
		"xpos"				"64"
		"ypos"				"16"
		"wide"				"172"
		"tall"				"14"
		"AutoResize"		"0"
		"PinCorner"			"0"
		"visible"			"1"
		"enabled"			"1"
		"tabPosition"		"0"
		"paintbackground"	"1"
		"labelText"			"#Friends_DownloadNotification_Steam"
		"textAlignment"		"north-west"
		"wrap"				"0"
		"font"				FriendsSmall	
		"textcolor"			"NotificationBodyText"	
	}
	
	"LabelInfo"
	{
		"ControlName"		"Label"
		"fieldName"			"LabelInfo"
		"xpos"				"64"
		"ypos"				"30"
		"wide"				"172"
		"tall"				"14"
		"AutoResize"		"0"
		"PinCorner"			"0"
		"visible"			"1"
		"enabled"			"1"
		"tabPosition"		"0"
		"paintbackground"	"1"
		"labelText"			"#Friends_DownloadNotification_Info"
		"textAlignment"		"north-west"
		"wrap"				"0"
		"font"				FriendsSmall
		"textcolor"			"Friends.OfflineColor"
	}
	
	"LabelGame"
	{
		"ControlName"		"Label"
		"fieldName"			"LabelGame"
		"xpos"				"64"
		"ypos"				"44"
		"wide"				"172"
		"tall"				"14"
		"AutoResize"		"0"
		"PinCorner"			"0"
		"visible"			"1"
		"enabled"			"1"
		"tabPosition"		"0"
		"paintbackground"	"1"
		"labelText"			"%name%"
		"textAlignment"		"north-west"
		"wrap"				"1"
		"font"				FriendsSmall
		"textcolor"			"Friends.OnlineColor"
	}	
}
