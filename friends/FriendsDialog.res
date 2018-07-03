"Friends/FriendsDialog.res"
{
	controls
	{
		"FriendsDialog"
		{
			"ControlName"   "CFriendsDialog"
			"fieldName"   "FriendsDialog"
			"xpos"    "2123"
			"ypos"    "549"
			"wide"    "356"
			"tall"    "746"
			"AutoResize"    "1"
			"PinCorner"   "0"
			"enabled"   "1"

			"paintbackground"   "1"
			"settitlebarvisible"    "1"
			style="FriendsPanel"    
			closeonescape=1
		}

		"BuddyList"
		{
			"ControlName" "CFriendsListSubPanel"
			tabposition=1
		}

		"frame_title"
		{
			"ControlName"	"Label"
			"labelText"   "#SteamRootFriends"
			"xpos"    "0"
			"ypos"    "8"
			style="FriendsTitle"
			"textAlignment"   "west" 
			"textAlignment"   "center" [$OSX]
		}


		"DownLabel"
		{
			"ControlName"   "Label"
			"fieldName"   "DownLabel"
			"xpos"    "10"
			"ypos"    "85"
			"wide"    "336"
			"tall"    "80"
			"AutoResize"    "1"
			"PinCorner"   "0"
			"visible"   "0"
			"enabled"   "1"
			"paintbackground"   "1"
			"labelText"   "#Friends_NoFriendsInList"
			"textAlignment"   "north-west"
			"wrap"    "1"
		}

		"MenuBar"
		{
			style="RootMenu"
			"ControlName"   "MenuBar"
			"fieldName"   "MenuBar"
			"xpos"    "29"
			"ypos"    "2"
			"wide"    "75"
			"tall"    "27"
			"AutoResize"    "0"
			"PinCorner"   "0"
			"enabled"   "1"
			"paintbackground"   "1"
			zpos="-1" 
		}

		"FriendPanelSelf"
		{
			"ControlName"		"CFriendPanel"
			"fieldName"		"FriendPanelSelf"
			"tall"		"42"
			"AutoResize"		"0"
			"PinCorner"		"0"
			"paintbackground"		"1"
		}

		"AddFriendsButton"
		{
			style="AddFriendsButton"
			"ControlName"   "Button"
			"fieldName"   "AddFriendsButton"
			"xpos"    "10"
			"ypos"    "707"
			"wide"    "150"
			"tall"    "24"
			"AutoResize"    "0"
			"PinCorner"   "2"
			"visible"   "1"
			"enabled"   "1"
			"tabPosition"   "3"
			"paintbackground"   "1"
			"labelText"   "#Friends_AddFriend"
			"textAlignment"   "west"
			"wrap"    "0"
			"Default"   "0"
			"selected"    "0"
		}


		"NoFriendsAddFriendButton"
		{
			"ControlName"   "Button"
			"fieldName"   "NoFriendsAddFriendButton"
			"xpos"    "10"
			"ypos"    "129"
			"wide"    "200"
			"tall"    "24"
			"AutoResize"    "0"
			"PinCorner"   "0"
			"visible"   "0"
			"enabled"   "1"

			"paintbackground"   "1"
			"labelText"   "#Friends_AddFriend"
			"textAlignment"   "west"
			"wrap"    "0"
			"Default"   "0"
			"selected"    "0"
		}
		"FriendsState"
		{
			"ControlName"   "EditablePanel"
			"fieldName"   "FriendsState"
			"xpos"    "6"
			"ypos"    "52"
			"wide"    "310"
			"tall"    "457"
			"AutoResize"    "0"
			"PinCorner"   "0"
			"visible"   "0"
			"enabled"   "1"

			"paintbackground"   "1"
		}
		
		friends_search { ControlName=TextEntry maxchars=16 hintText="#steam_library_search" style="FriendsSearch" unicode=1 tabposition=2 }
		friends_search_icon	{ ControlName=Label style="FriendsSearchIcon" zpos="4" }		
		
	}

  
	styles
	{
		FriendsPanel
		{			
			render_bg
			{
				//0="fill(x0, y0, x1, y0 + 82, DefaultBackground)"
				0="image(x0, y1-889, x0+320, y1, graphics/JackMyth/FriendsList)"
				//1="gradient(x0,y0,x1,y0+50,)"
				1="fill(x0,y0,x1,y0+123,JackMyth.HalfTranslucent)"
				2="fill(x0, y0 + 81, x1, y0 + 82, Root.Div)"
				//2="fill(x0, y0 + 82, x1, y1, Root.TabBar)"
			}
		}	
		
		AddFriendsButton 
		{
			font-family=basefont
			font-size=14
			font-weight=400
			padding-left=15
			padding-right=0
			textcolor="labelfocus"
			bgcolor=none  
			
			render_bg 
			{
				1="image( x0, y0 + 4, x0 + 200, y1, graphics/icon_collapse )"
			}
		}
		   

		AddFriendsButton:hover
		{
			textcolor="white"
			render_bg
			{
				0="image( x0, y0 + 4, x1, y1, graphics/icon_collapse_over )"
			}
		}	  	
		
		RootMenu
		{
			bgcolor="none"
		} 

				
		FriendsTitle 
		{
			//inset="0 0 0 0"
			render_bg
			{
				0="fill( x0, y0, x1, y0 + 32, TitleBar.Focus)" //SIGH...
			}
		}

		FriendsTitle:FrameFocus
		{
			render_bg
			{
				0="fill( x0, y0, x1, y0 + 32, TitleBar)" //SIGH...
			}
		}
				
		FriendsSearch
		{
			padding-left=-4
			padding-top=1
			font-family=basefont
			font-size=20
			font-weight=400	
			textcolor=Search.Active.Text
			shadowtextcolor=Search.Active.Text		
			render { }	
			bgcolor=none
			render_bg
			{
				// background fill
				0="fill( x0, y0, x1, y1, Search.Back )"
				
			}
		}
		
		FriendsSearch:empty
		{
			textcolor=Search.Text
			font-style=normal
			
		}
		
		FriendsSearch:hover
		{	
			textcolor=Search.Active.Text	
		}
		
		FriendsSearch:empty:hover
		{
			textcolor=Search.Hover.Text
			font-style=normal
			
		}
			
		FriendsSearch:disabled
		{
			textcolor="None"
			
		}
			
		FriendsSearchIcon
		{
			bgcolor="none"
			inset="4 2 0 0"
			image="graphics/Threshold/icons/search"
			padding-left=10
			padding-right=5
			render_bg
			{
				0="fill( x0, y0, x1, y1, Search.Back )"
			}
		}
		
		FriendsSearchIcon:disabled
		{
			bgcolor="none"
			inset="4 2 0 0"
			image="none"
			padding-left=10
			padding-right=5
		}
	}
 	
 	layout
 	{
		region {name=hidden width=0 height=0}
		place 	{ control="frame_title" visible=0 x=0 y=0 width=max height=0 }

 		// the title bar is missing, so increase the size of the grip
		place { control="frame_captiongrip" margin=0 width=max height=32 }
		place { control="MenuBar" margin-left=0 height=32 width=50}

		place { control="FriendPanelSelf" align=top margin-left=15 y=30 } //modifying the width & height of this element kills cpu usage
		
		place { control="friends_search"  width=max}
		place { control="friends_search_icon,friends_search" align=left y=82 height=40 spacing=0 x=0}
		
		//place { control="friends_search_icon" align=right dir=right margin-right=145 height=31}
		//place { control="friends_search" start=friends_search_icon dir=right y=-2 margin-right=45 width=100 height=31}
		
		place { control="FriendsDialogSheet" y=118 dir=down width=max height=max spacing=3}	
		
		place { control="DownLabel" x=0 y=90 width=max margin-left=15 margin-right=15}
		place { control="NoFriendsAddFriendButton" height=32 align=right start="DownLabel" dir=down margin-top=10 margin-right=15}
	
		place { control="addFriendsButton" align=bottom margin-left=16 margin-right=9 margin-bottom=7 height=24 region=hidden}
 	}
 	
}


