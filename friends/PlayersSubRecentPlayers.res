"friends/PlayersSubRecentPlayers.res"
{
	layout{
		region {name="bottom" align=bottom height=50 width=max}
		place {control="PlayersList" x=0 y=0 width=max height=max margin-bottom=50}
		place {control="AddFriendButton" region=bottom align=right margin-right=10 margin-top=12}
	}
	
	
	"PlayersList"
	{
		"ControlName"		"ListPanel"
		"fieldName"		"PlayersList"
		"xpos"		"8"
		"ypos"		"10"
		"wide"		"567"
		"tall"		"322"
		"AutoResize"		"0"
		"PinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
		"paintbackground"		"1"
	}
	"AddFriendButton"
	{
		"ControlName"		"Button"
		"fieldName"		"AddFriendButton"
		"xpos"		"420"
		"ypos"		"344"
		"wide"		"155"
		"tall"		"24"
		"AutoResize"		"0"
		"PinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"1"
		"paintbackground"		"1"
		"textAlignment"		"west"
		"wrap"		"0"
		"Default"		"0"
	}
}
