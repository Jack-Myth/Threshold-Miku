"steam/cached/LaunchEULADialog.res"
{

	layout{
		region { name=body margin-top=42 margin-left=20 margin-right=20 width=max height=max }
		region { name=bottom align=bottom height=42 width=max }
		
		place { control=Label1 region=body width=max}
		place { control=HTML width=max height=max margin-top=75 margin-bottom=100}
		place { control=Label2 region=body start=HTML margin-top=10 dir=down width=max}
		
		place { control="AcceptButton,DeclineButton" region="bottom" align=right
						width=92 height32 align=right
						margin-right=10 margin-top=0
						margin-bottom=10 spacing=10 }
	}

	"LaunchEULADialog"
	{
		"ControlName"		"SimpleDialog"
		"fieldName"		"LaunchEULADialog"
		"xpos"		"1155"
		"ypos"		"611"
		"wide"		"500"
		"tall"		"460"
		"AutoResize"		"0"
		"PinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
		"paintbackground"		"1"
		"settitlebarvisible"		"1"
		"title"		"#Steam_LaunchEULA_Title"
	}
	"AcceptButton"
	{
		"ControlName"		"Button"
		"fieldName"		"AcceptButton"
		"xpos"		"220"
		"ypos"		"412"
		"wide"		"116"
		"tall"		"23"
		"AutoResize"		"0"
		"PinCorner"		"3"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
		"paintbackground"		"1"
		"labelText"		"#Steam_LaunchEULA_Agree"
		"textAlignment"		"west"
		"wrap"		"0"
		"Default"		"0"
	}
	"DeclineButton"
	{
		"ControlName"		"Button"
		"fieldName"		"DeclineButton"
		"xpos"		"348"
		"ypos"		"412"
		"wide"		"116"
		"tall"		"24"
		"AutoResize"		"0"
		"PinCorner"		"3"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
		"paintbackground"		"1"
		"labelText"		"#Steam_LaunchEULA_Decline"
		"textAlignment"		"west"
		"wrap"		"0"
		"Default"		"0"
	}
	"HTML"
	{
		"ControlName"		"HTML"
		"fieldName"		"HTML"
		"xpos"		"8"
		"ypos"		"93"
		"wide"		"480"
		"tall"		"271"
		"AutoResize"		"3"
		"PinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
		"paintbackground"		"1"
	}
	"Label1"
	{
		"ControlName"		"Label"
		"fieldName"		"Label1"
		"xpos"		"14"
		"ypos"		"47"
		"wide"		"472"
		"tall"		"42"
		"AutoResize"		"1"
		"PinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
		"paintbackground"		"1"
		"labelText"		"#Steam_LaunchEULA_Info"
		"textAlignment"		"north-west"
		"wrap"		"1"
	}
	"Label2"
	{
		"ControlName"		"Label"
		"fieldName"		"Label2"
		"xpos"		"8"
		"ypos"		"369"
		"wide"		"472"
		"tall"		"40"
		"AutoResize"		"1"
		"PinCorner"		"2"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
		"paintbackground"		"1"
		"appearance"		"LabelBright"
		"labelText"		"#Steam_LaunchEULA_Text"
		"textAlignment"		"west"
		"wrap"		"1"
	}
}
