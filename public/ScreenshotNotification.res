"public/ScreenshotNotification.res"
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
		place {control="ScreenshotImage" x=14 y=14 width=48 height=48}
		place {control="LabelInfo" x=68 y=14 width=172 height=16}
		place {control="LabelGame" x=68 y=32 width=172 height=16}
	}
	
	"ScreenshotNotification"
	{
		"ControlName"		"CScreenshotNotification"
		"fieldName"		"ScreenshotNotification"
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
	
	"ScreenshotImage"
	{
		"ControlName"		"ImagePanel"
		"fieldName"		"ScreenshotImage"
		"xpos"		"14"
		"ypos"		"14"
		"wide"		"48"
		"tall"		"48"
		"AutoResize"		"0"
		"PinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
		"paintbackground"		"1"
		"gradientVertical"		"0"
		"scaleImage"		"0"
	}
	
	"LabelInfo"
	{
		"ControlName"		"Label"
		"fieldName"			"LabelInfo"
		"xpos"				"68"
		"ypos"				"32"
		"wide"				"172"
		"tall"				"14"
		"AutoResize"		"0"
		"PinCorner"			"0"
		"visible"			"1"
		"enabled"			"1"
		"tabPosition"		"0"
		"paintbackground"	"1"
		"labelText"			"#Friends_ScreenshotNotification_Info"
		"textAlignment"		"north-west"
		"wrap"				"0"
		"font"				FriendsSmall
		"textcolor"			"Friends.OfflineColor"
	}
	
	"LabelGame"
	{
		"ControlName"		"Label"
		"fieldName"			"LabelGame"
		"xpos"				"68"
		"ypos"				"14"
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
