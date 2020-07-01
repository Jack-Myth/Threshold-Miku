"friends/ItemReceivedNotification.res"
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
		place {control="ItemImage" x=16 y=16 width=42 height=42}
		place {control="NotificationClickPanel" x=0 y=0 width=max height=max}
		place {control="LabelInfo" x=64 y=16 width=172 height=34}
		place {control="LabelHotkey" x=0 y=74 width=240 height=24}
		place {control="DarkenedRegion" width=0 height=0}
	}
	
	"ItemReceivedNotification"
	{
		"ControlName"		"ItemReceivedNotification"
		"fieldName"		"ItemReceivedNotification"
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
	"ItemImage"
	{
		"ControlName"		"ImagePanel"
		"fieldName"		"ItemImage"
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
		"image" "graphics/icon_toast_item"
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
	"LabelInfo"
	{
		"ControlName"		"Label"
		"fieldName"		"LabelInfo"
		"xpos"		"64"
		"ypos"		"16"
		"wide"		"172"
		"tall"		"34"
		"AutoResize"		"0"
		"PinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
		"paintbackground"		"1"
		"labelText"		"#friends_itemsreceived_info"
		"textAlignment"		"north-west"
		"wrap"		"1"
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
