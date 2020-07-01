"friends/AchievementNotification.res"
{

	styles
	{
		Label
		{
			font-size=14 [$LINUX]
			font-size=18
		}
	}
	
	layout
	{
		place {control="AchievementIcon" x=14 y=15 width=64 height=64}
		place {control="IconBorder" x=13 y=14 width=66 height=66}
		place {control="LabelTitle" x=88 y=26 width=max height=32}
		place {control="LabelText" x=88 y=48 width=max height=32}
		place {control="DarkenedRegion" width=0 height=0}
	}
	
	"AchievementNotification"
	{
		"ControlName"		"CAchievmentNotification"
		"fieldName"		"AchievementNotification"
		"xpos"		"0"
		"ypos"		"0"
		"wide"		"240"
		"tall"		"94"
		"AutoResize"		"0"
		"PinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
		"paintbackground"		"1"
		style="notification"
	}
	"DarkenedRegion"
	{
		"controlname"	"imagepanel"
		"fieldname"		"DarkenedRegion"
		"xpos"		"1"
		"ypos"		"74"
		"wide"		"238"
		"tall"		"23"
		"fillcolor"	"ClientBG"
		"zpos"		"-1"
	}
	"AchievementIcon"
	{
		"ControlName"		"ImagePanel"
		"fieldName"		"AchievementIcon"
		"xpos"		"14"
		"ypos"		"14"
		"wide"		"64"
		"tall"		"64"
		"AutoResize"		"0"
		"PinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
		"paintbackground"		"1"
		"gradientVertical"		"0"
		"scaleImage"		"0"
	}
	"IconBorder"
	{
		"ControlName"		"Panel"
		"fieldName"		"IconBorder"
		"xpos"		"13"
		"ypos"		"13"
		"zpos"		"0"
		"wide"		"66"
		"tall"		"66"
		"AutoResize"		"0"
		"PinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
		"paintbackground"		"0"
	}
	"LabelTitle"
	{
		"ControlName"		"Label"
		"fieldName"		"LabelTitle"
		"xpos"		"88"
		"ypos"		"25"
		"wide"		"144"
		"tall"		"28"
		"AutoResize"		"0"
		"PinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
		"paintbackground"		"1"
		"labelText"		"%title%"
		"textAlignment"		"center"
		"wrap"		"1"
		"font"		FriendsSmall
	}
	"LabelDescription"
	{
		"ControlName"		"Label"
		"fieldName"		"LabelText"
		"xpos"		"88"
		"ypos"		"53"
		"wide"		"144"
		"tall"		"28"
		"AutoResize"		"0"
		"PinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
		"paintbackground"		"1"
		"labelText"		"%text%"
		"textAlignment"		"north-west"
		"wrap"		"1"
		"font"		FriendsSmall
	}
}
