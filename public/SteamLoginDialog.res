"Public/SteamLoginDialog.res"
{
	
	styles{
		CSteamLoginDialog
		{
			minimum-height=610
			maximum-height=610
			height=610
			minimum-width=480
			maximum-width=480
			width=480
			render_bg
			{
				0=image_scale(x0,y0,x1,y1,graphics/JackMyth/LoginBG)
			}
		}
		
		"loginprocess_style_head"
		{
			"font-size"		"16"
			"font-style"		"italic"
		}

		"loginprocess_style_body"
		{
			"font-size"		"18"
			"font-weight"		"1000"
			"font-style"		"regular"
		}

		"loginerror_style_body"
		{
			"font-size"		"14"
			textcolor=DefaultText
			bgcolor=none
			padding=8

			render_bg
			{
				0="fill( x0 - 4, y0 - 4, x1 + 2, y0 -2, redborder )"  // top
				1="fill( x0 - 4, y1 + 2, x1 + 2, y1 + 4, redborder )"  // bottom
				2="fill( x0 - 4, y0 - 4, x0 - 2, y1 + 4, redborder )"  // left
				3="fill( x1 + 2, y0 - 4, x1 + 4, y1 + 4, redborder )"  // right
			}
		}
	}
	
	color
	{
		redborder="169 72 71 255"
	}

	layout
	{
		region { name=hidden width=0 height=0 }
		region { name=body width=max height=max margin-top=240 margin-right=71 margin-left=71}

		place{ control=ImagePanelLogo align=top-center y=60 width=max height=0}
		place{ control=UserNameLabel,UserNameEdit dir=down spacing=0 region=body height=30}
		place{ control=PasswordLabel,PasswordEdit start=UserNameEdit dir=down spacing=0 margin-top=10 region=body height=30}
		place{ control=PasswordCapsLockImage start=PasswordEdit dir=right margin-left=5 margin-top=3 height=24 width=24}
		place{ control=SavePasswordCheck start=PasswordEdit dir=down margin-top=10 width=max}	
		place{ control=CancelButton start=SavePasswordCheck margin-top=10 dir=down region=body width=150 height=32}
		place{ control=LoginButton start=CancelButton margin-left=28 dir=right region=body width=150 height=32}
		
		place{ control=LoginErrorText margin-top=5 start=CancelButton dir=down region=body}
		place{ control=Divider1 start=LoginErrorText dir=down margin-top=5 region=body width=max}
		place{ control=CreateNewAccountButton start=Divider1 dir=down margin-top=10 region=body width=max height=32}
		place{ control=LostPasswordButton start=CreateNewAccountButton dir=down margin-top=10 region=body width=max height=32}
		
		place{ control=Label2,Label4,AlreadyLoggedIn,PasswordCapsLockLabel,LoginProcessText,LoginProcessLabel,LoginProcessThrobber,LoginProcessImage region=hidden}

	}
	
	"SteamLoginDialog"
	{
		"ControlName"		"CSteamLoginDialog"
		"fieldName"		"SteamLoginDialog"
		"xpos"		"590"
		"ypos"		"435"
		"wide"		"480"
		"tall"		"640"
		"AutoResize"		"0"
		"PinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
		"paintbackground"		"1"
		"settitlebarvisible"		"1"
		"title"		"#Steam_Login_Title"
	}
	"ImagePanelLogo"
	{
		"ControlName"		"ImagePanel"
		"fieldName"		"ImagePanelLogo"
		"xpos"		"73"

		"ypos"		"40"
		"wide"		"136"
		"tall"		"35"
		"AutoResize"		"0"
		"PinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
		"paintbackground"		"1"
		"image"		"graphics/logo6"
		"fillcolor"		""
		"gradientStart"		""
		"gradientEnd"		""
		"gradientVertical"		"0"
		"scaleImage"		"0"
	}

	"PasswordCapsLockLabel"
	{
		"ControlName"		"Label"
		"fieldName"		"PasswordCapsLockLabel"
		"xpos"		"218"
		"ypos"		"123"
		"wide"		"150"
		"tall"		"24"
		"AutoResize"		"1"
		"PinCorner"		"1"
		"visible"		"0"
		"enabled"		"1"
		"tabPosition"		"0"
		"paintbackground"		"1"
		"labelText"		"#Steam_Login_CapsLockWarning"
		"textAlignment"		"east"
		"wrap"		"0"
		"zpos"		"-1"
	}


	"PasswordCapsLockImage"
	{
		"ControlName"		"ImagePanel"
		"fieldName"		"PasswordCapsLockImage"
		"xpos"		"370"
		"ypos"		"125"
		"wide"		"19"
		"tall"		"19"
		"AutoResize"		"0"
		"PinCorner"		"0"
		"visible"		"0"
		"enabled"		"1"
		"tabPosition"		"0"
		"paintbackground"		"1"
		"image"		"resource/icon_warning"
		"fillcolor"		""
		"gradientStart"		""
		"gradientEnd"		""
		"gradientVertical"		"0"
		"scaleImage"		"1"
		"zpos"		"-1"
	}


	"PasswordEdit"
	{
		"ControlName"		"TextEntry"
		"fieldName"		"PasswordEdit"
		"xpos"		"116"
		"ypos"		"122"
		"wide"		"331"
		"tall"		"24"
		"AutoResize"		"0"
		"PinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"2"
		"paintbackground"		"1"
		"textHidden"		"1"
		"editable"		"1"
		"maxchars"		"128"
		"NumericInputOnly"		"0"
		"unicode"		"0"
		style="TextEntryLarge"
	}
	"UserNameEdit"
	{
		"ControlName"		"TextEntry"
		"fieldName"		"UserNameEdit"
		"xpos"		"116"
		"ypos"		"88"
		"wide"		"331"
		"tall"		"24"
		"AutoResize"		"0"
		"PinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"1"
		"paintbackground"		"1"
		"textHidden"		"0"
		"editable"		"1"
		"maxchars"		"128"
		"NumericInputOnly"		"0"
		"unicode"		"0"
	}
	"LoginButton"
	{
		"ControlName"		"Button"
		"fieldName"		"LoginButton"
		"xpos"		"115"
		"ypos"		"184"
		"wide"		"161"
		"tall"		"24"
		"AutoResize"		"0"
		"PinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"4"
		"paintbackground"		"1"
		"labelText"		"#Steam_Login_Btn"
		"textAlignment"		"west"
		"wrap"		"0"
		"Command"		"Login"
		"Default"		"1"
		"selected"		"0"
	}
	"SavePasswordCheck"
	{
		"ControlName"		"CheckButton"
		"fieldName"		"SavePasswordCheck"
		"xpos"		"113"
		"ypos"		"152"
		"wide"		"285"
		"tall"		"24"
		"AutoResize"		"0"
		"PinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"3"
		"paintbackground"		"1"
		"labelText"		"#Steam_Login_RememberPassword"
		"textAlignment"		"west"
		"wrap"		"0"
		"Command"		"RememberPassword"
		"Default"		"0"
		"selected"		"0"
	}
	"UserNameLabel"
	{
		"ControlName"		"Label"
		"fieldName"		"UserNameLabel"
		"xpos"		"6"
		"ypos"		"88"
		"wide"		"100"
		"tall"		"24"
		"AutoResize"		"0"
		"PinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
		"paintbackground"		"1"
		"labelText"		"#Steam_AccountName"
		"textAlignment"		"east"
		"associate"		"UserNameEdit"
		"wrap"		"0"
	}
	"PasswordLabel"
	{
		"ControlName"		"Label"
		"fieldName"		"PasswordLabel"
		"xpos"		"6"
		"ypos"		"122"
		"wide"		"100"
		"tall"		"24"
		"AutoResize"		"0"
		"PinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
		"paintbackground"		"1"
		"labelText"		"#Steam_Login_Password"
		"textAlignment"		"east"
		"associate"		"PasswordEdit"
		"wrap"		"0"
	}
	"CancelButton"
	{
		"ControlName"		"Button"
		"fieldName"		"CancelButton"
		"xpos"		"286"
		"ypos"		"184"
		"wide"		"161"
		"tall"		"24"
		"AutoResize"		"0"
		"PinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"5"
		"paintbackground"		"1"
		"labelText"		"#Steam_Login_Cancel"
		"textAlignment"		"west"
		"wrap"		"0"
		"Command"		"Close"
		"Default"		"0"
		"selected"		"0"
	}
	"CreateNewAccountButton"
	{
		"ControlName"		"Button"
		"fieldName"		"CreateNewAccountButton"
		"xpos"		"210"
		"ypos"		"272"
		"wide"		"237"
		"tall"		"24"
		"AutoResize"		"0"
		"PinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"6"
		"paintbackground"		"1"
		"labelText"		"#Steam_Login_CreateNewAccount"
		"textAlignment"		"west"
		"wrap"		"0"
		"Command"		"CreateNewAccount"
		"Default"		"0"
		"selected"		"0"
	}
	"LostPasswordButton"
	{
		"ControlName"		"Button"
		"fieldName"		"LostPasswordButton"
		"xpos"		"210"
		"ypos"		"240"
		"wide"		"237"
		"tall"		"24"
		"AutoResize"		"0"
		"PinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"8"
		"paintbackground"		"1"
		"labelText"		"#Steam_Login_RetrievePassword"
		"textAlignment"		"west"
		"wrap"		"0"
		"Command"		"ForgotPassword"
		"Default"		"0"
		"selected"		"0"
	}
	"Label2"
	{
		"ControlName"		"Label"
		"fieldName"		"Label2"
		"xpos"		"16"
		"ypos"		"272"
		"wide"		"184"
		"tall"		"24"
		"AutoResize"		"0"
		"PinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
		"paintbackground"		"1"
		"borderset"		"LabelDull"
		"labelText"		"#Steam_Login_NoAccount"
		"textAlignment"		"east"
		"wrap"		"0"
	}
	"Label4"
	{
		"ControlName"		"Label"
		"fieldName"		"Label4"
		"xpos"		"16"
		"ypos"		"240"
		"wide"		"184"
		"tall"		"24"
		"AutoResize"		"0"
		"PinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
		"paintbackground"		"1"
		"borderset"		"LabelDull"
		"labelText"		"#Steam_Login_ForgotPassword"
		"textAlignment"		"east"
		"wrap"		"0"
	}
	"Divider1"
	{
		"ControlName"		"Divider"
		"fieldName"		"Divider1"
		"xpos"		"26"
		"ypos"		"224"
		"wide"		"420"
		"tall"		"1"
		"AutoResize"		"0"
		"PinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
		"paintbackground"		"1"
	}
	"AlreadyLoggedIn"
	{
		"ControlName"		"Label"
		"fieldName"		"AlreadyLoggedIn"
		"xpos"		"40"
		"ypos"		"40"
		"wide"		"380"
		"tall"		"48"
		"AutoResize"		"0"
		"PinCorner"		"0"
		"visible"		"0"
		"enabled"		"1"
		"tabPosition"		"0"
		"paintbackground"		"1"
		"borderset"		"LabelDull"
		"labelText"		"#Steam_AccountAlreadyLoggedInNeedPassword"
		"textAlignment"		"north-west"
		"wrap"		"1"
	}
	"LoginProcessImage"
	{
		"ControlName"		"ImagePanel"
		"fieldName"		"LoginProcessImage"
		"xpos"		"24"
		"ypos"		"225"
		"wide"		"373"
		"tall"		"78"
		"AutoResize"		"0"
		"PinCorner"		"0"
		"visible"		"0"
		"enabled"		"1"
		"tabPosition"		"0"
		"paintbackground"		"1"
		"image"		"graphics/logo6"
		"fillcolor"		""
		"gradientStart"		""
		"gradientEnd"		""
		"gradientVertical"		"0"
		"scaleImage"		"0"
	}
	"LoginProcessThrobber"
	{
		"ControlName"		"ThrobberImagePanel"
		"fieldName"		"LoginProcessThrobber"
		"xpos"		"24"
		"ypos"		"225"
		"wide"		"373"
		"tall"		"78"
		"AutoResize"		"0"
		"PinCorner"		"0"
		"visible"		"0"
		"enabled"		"1"
		"tabPosition"		"0"
		"paintbackground"		"0"
	}
	"LoginProcessLabel"
	{
		"ControlName"		"Label"
		"fieldName"		"LoginProcessLabel"
		"xpos"		"104"
		"ypos"		"236"
		"wide"		"280"
		"tall"		"18"
		"AutoResize"		"1"
		"PinCorner"		"0"
		"visible"		"0"
		"enabled"		"1"
		"tabPosition"		"0"
		"paintbackground"		"0"
		"borderset"		"LabelDull"
		"labelText"		"#SteamGuardBanner"
		"textAlignment"		"west"
		"wrap"		"1"
		"style"		"loginprocess_style_head"
	}
	"LoginProcessText"
	{
		"ControlName"		"Label"
		"fieldName"		"LoginProcessText"
		"xpos"		"104"
		"ypos"		"254"
		"wide"		"280"
		"tall"		"34"
		"AutoResize"		"1"
		"PinCorner"		"0"
		"visible"		"0"
		"enabled"		"1"
		"tabPosition"		"0"
		"paintbackground"		"0"
		"borderset"		"LabelDull"
		"labelText"		"placeholder"
		"textAlignment"		"west"
		"wrap"		"1"
		"style"		"loginprocess_style_body"
	}
	"LoginErrorText"
	{
		"ControlName"		"Label"
		"fieldName"		"LoginErrorText"
		"xpos"		"30"
		"ypos"		"224"
		"wide"		"412"
		"tall"		"44"
		"AutoResize"		"1"
		"PinCorner"		"0"
		"visible"		"0"
		"enabled"		"1"
		"tabPosition"		"0"
		"paintbackground"		"0"
		"labelText"		""
		"textAlignment"		"west"
		"wrap"		"1"
		"style"		"loginerror_style_body"
	}
}

