"steam/cached/InstallSubChooseApps.res"
{
	styles{
		 "Page CheckButtonList"
		{
			inset="20 1 1 1"
		}
		
		"Page CheckButtonList:scrollbar"
		{
			inset="20 1 1 1"
		}
	}
	
	layout{
		region { name=body margin-top=20 margin-left=20 margin-right=20 width=max height=max }
		place { control=Label1 region=body width=max}
		
		place { control=GameCheckButtonList margin-top=50 width=max height=120}
		
		place { control=InstallSize,DriveSpace region=body start=GameCheckButtonList dir=down margin-top=15 spacing=7}
		place { control=InstallSizeLabel,DriveSpaceLabel region=body start=GameCheckButtonList dir=down margin-top=15 spacing=7 margin-left=200}
		
		place { control=InstallFolderLabel start=DriveSpace region=body dir=down margin-top=15 width=max}
		place { control=InstallFolderCombo start=InstallFolderLabel region=body dir=down margin-top=7 width=max}
		
	}

	"InstallSubChooseApps"
	{
		"ControlName"		"CInstallSubChooseApps"
		"fieldName"		"InstallSubChooseApps"
		"xpos"		"8"
		"ypos"		"48"
		"wide"		"416"
		"tall"		"342"
		"AutoResize"		"0"
		"PinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"1"
		"paintbackground"		"1"
		"WizardWide"		"0"
		"WizardTall"		"0"
	}
	
	"Label1"
	{
		"ControlName"		"Label"
		"fieldName"		"Label1"
		"xpos"		"10"
		"ypos"		"12"
		"wide"		"340"
		"tall"		"24"
		"AutoResize"		"0"
		"PinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
		"paintbackground"		"1"
		"labelText"		"#Steam_Install_SelectGames"
		"textAlignment"		"west"
		"wrap"		"1"
	}
	
	"GameCheckButtonList"
	{
		"ControlName"		"CheckButtonList"
		"fieldName"		"GameCheckButtonList"
		"xpos"		"16"
		"ypos"		"32"
		"wide"		"432"
		"tall"		"120"
		"AutoResize"		"0"
		"PinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
		"paintbackground"		"1"
	}
	
	"InstallSize"
	{
		"ControlName"		"Label"
		"fieldName"		"InstallSize"
		"xpos"		"10"
		"ypos"		"160"
		"wide"		"186"
		"tall"		"24"
		"AutoResize"		"0"
		"PinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
		"paintbackground"		"1"
		"labelText"		"#Steam_ScanCDKey_SpaceRequired"
		"textAlignment"		"west"
		"wrap"		"0"
	}
	
	"InstallSizeLabel"
	{
		"ControlName"		"Label"
		"fieldName"		"InstallSizeLabel"
		"xpos"		"200"
		"ypos"		"160"
		"wide"		"80"
		"tall"		"24"
		"AutoResize"		"0"
		"PinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
		"paintbackground"		"1"
		"labelText"		"42 MB"
		"textAlignment"		"west"
		"wrap"		"0"
	}
	
	"DriveSpace"
	{
		"ControlName"		"Label"
		"fieldName"		"DriveSpace"
		"xpos"		"10"
		"ypos"		"180"
		"wide"		"186"
		"tall"		"24"
		"AutoResize"		"0"
		"PinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
		"paintbackground"		"1"
		"labelText"		"#Steam_ScanCDKey_SpaceAvailable"
		"textAlignment"		"west"
		"wrap"		"0"
	}
	
	"DriveSpaceLabel"
	{
		"ControlName"		"Label"
		"fieldName"		"DriveSpaceLabel"
		"xpos"		"200"
		"ypos"		"180"
		"wide"		"80"
		"tall"		"24"
		"AutoResize"		"0"
		"PinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
		"paintbackground"		"1"
		"labelText"		"101247 MB"
		"textAlignment"		"west"
		"wrap"		"0"
	}
			
	"InstallFolderLabel"
	{
		"ControlName"		"Label"
		"fieldName"		"InstallFolderLabel"
		"xpos"		"10"
		"ypos"		"200"
		"wide"		"200"
		"tall"		"24"
		"AutoResize"		"0"
		"PinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
		"paintbackground"		"1"
		"labelText"		"#SteamUI_ChooseInstallFolder"
		"textAlignment"		"west"
		"wrap"		"0"
	}
	
	"InstallFolderCombo"
	{
		"ControlName"		"ComboBox"
		"fieldName"		"InstallFolderCombo"
		"xpos"		"10"
		"ypos"		"232"
		"wide"		"432"
		"tall"		"24"
		"AutoResize"		"0"
		"PinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
		"paintbackground"		"1"
		"textAlignment"		"west"
		"wrap"		"0"
	}
}
