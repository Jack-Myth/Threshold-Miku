"friends/ChatRoomDlg.res"
{
	controls
	{
		"ChatRoomDlg"
		{
			"ControlName"		"CChatRoomDlg"
			"title"		"#Friends_Chat_Group_Title"
		}
		"TextEntry"
		{
			"ControlName"		"TextEntry"
			"tabPosition"		"1"
			"editable"		"1"
			"maxchars"		"2048"
			"unicode"		"1"
			style="Textentryfocus_chat"
		}
		"ChatHistory"
		{
			"ControlName"		"RichText"
			"maxchars"		"-1"
			"ScrollBar"		"1"
			style="chatlistpanel"
		}
		"SendButton"
		{
			"ControlName"		"Button"
			"labelText"		"#Friends_Chat_Send"
			"Default"		"1"
		}
		"StatusLabel"
		{
			"ControlName"		"Label"
			"wrap"		"0"
		}
		"VoiceBar"
		{
			"ControlName"		"CVoiceBar"
		}
		"TitlePanel"
		{
			"ControlName"		"CChatTitlePanel"
			"zpos"		"-2"
			width=400
		}
		"UserList"
		{
			"ControlName"		"CFriendsListSubPanel"
			style="FriendsList"
			"linespacing"		"50"
			wide=200
		}
		"Splitter"
		{
			"ControlName"		"CChatSplitter"
			resizepanel="UserList"
			zpos=1
		}
		"VoiceChat"
		{
			"ControlName"		"Button"
			style="Chat_MenuButton_withChrome"
			
		}
		"EmoticonButton"
		{
			"ControlName"		"CEmoticonButton"
		}
	}
		
	styles
	{
		CChatRoomDlg
		{			
			//bgcolor=DefaultBackground
		render
		{
		}
		render_bg
		{	
			0="image_scale(x0,y0-32,x1,y1,graphics/JackMyth/ChatRoom)"
		}
		}
		FriendsList
		{
			bgcolor=none
			render_bg{
				//0="fill( x0, y0, x1, y1, DefaultBackground )"
				0="fill(x0, y0, x1, y1, JackMyth.HalfTranslucent)"
				1="fill( x0, y0, x0+1, y1, Root.Header )"
			}
		}
		"Textentryfocus_chat"
		{
			// opaque bgcolor for rendering optimization during typing
			//bgcolor=TextBox.Back
			bgcolor=JackMyth.Opacity
			render
			{
				0="fill(x0, y0, x1, y1, JackMyth.HalfTranslucent)"
				// lines around
				1="fill( x0, y0, x1, y0 + 1, Chat.Div )"  // top
			}
			font-size=16
		}	

		CEmoticonButton
		{
			inset="5 0 0 0"
			image="graphics/Threshold/friends/icon_emoticon"
			render_bg
			{
				//0="fill(x0, y0, x1, y1, Chat.Back)"
				0="fill(x0, y0, x1, y1, JackMyth.HalfTranslucent)"
				// lines around
				1="fill( x0, y0, x1, y0 + 1, Chat.Div )"  // top
			}
		}

		CEmoticonButton:hover
		{
			render_bg
			{
				0="fill(x0, y0, x1, y1, Menu.Hover)"
				// lines around
				1="fill( x0, y0, x1, y0 + 1, Chat.Div )"  // top
			}
		}

		CEmoticonButton:selected
		{
			render_bg
			{
				0="fill(x0, y0, x1, y1, Accent)"
				// lines around
				1="fill( x0, y0, x1, y0 + 1, Chat.Div)"  // top
			}
		}
		
		button //Send button
		{
			inset="0 0 0 0"
			padding=0
			minimum-height=0
			textcolor=none
			image="graphics/Threshold/send"
			//bgcolor=Chat.Back
			render_bg
			{
				// lines around
				0="fill( x0, y0, x1, y0 + 1, Chat.Div )"  // top
			}
			render{}
		}
		
		button:hover
		{
			bgcolor=Menu.Button.Hover
			render_bg
			{
				// lines around
				0="fill( x0, y0, x1, y0 + 1, Chat.Div )"  // top
			}
		}
		
		button:active
		{
			bgcolor=Menu.Button.Active
			render_bg
			{
				// lines around
				0="fill( x0, y0, x1, y0 + 1, Chat.Div )"  // top
			}
		}
		
		button:disabled
		{
			image="graphics/Threshold/send_dis"
		}

		EmoticonMenuItemStyle
		{
			inset="-5 0 0 0"
			padding=0
			font-size=24
			bgcolor=none
		}
		
		EmoticonMenuItemStyle:hover
		{
			textcolor=white
			bgcolor=none
		}
		
		EmoticonMenuItemStyle:selected
		{
			textcolor=white
			bgcolor=none
		}
		
		CChatActionsButton
		{
			inset="2 0 0 0"
			image="graphics/Threshold/dots"
		}
		
		CChatActionsButton:hover
		{
			image="graphics/Threshold/dots"
			bgcolor=Menu.Hover
		}

		CChatActionsButton:selected
		{
			image="graphics/Threshold/dots"
			bgcolor=Accent
		}

		GridMenu
		{
			font-size=16
		}
		
		TextEntry
		{
			textcolor=TextBox.Hover.Text //TextBox.Text is the empty text color, we want hover
			selectedtextcolor=TextBox.Hover.Text
			selectedbgcolor=DefaultText.Back
			shadowtextcolor=DefaultCursor  // this is the cursor color
			render_bg
			{
				//0="fill(x0, y0, x1, y1, Chat.Back)"
				0="fill(x0, y0, x1, y1, JackMyth.Opacity)"
				// lines around
				1="fill( x0, y0, x1, y0 + 1, Chat.Div )"  // top
			} 
		}
		
		TextEntry:hover
		{
			textcolor=TextBox.Hover.Text 
			selectedtextcolor=TextBox.Hover.Text
			selectedbgcolor=DefaultText.Back
			shadowtextcolor=DefaultCursor  
			render_bg
			{
				//0="fill(x0, y0, x1, y1, Chat.Back)"
				0="fill(x0, y0, x1, y1, JackMyth.Opacity)"
				// lines around
				1="fill( x0, y0, x1, y0 + 1, Chat.Div )"  // top
			} 
		}
		
		TextEntry:focus
		{
			textcolor=TextBox.Hover.Text 
			selectedtextcolor=TextBox.Hover.Text
			selectedbgcolor=DefaultText.Back
			shadowtextcolor=DefaultCursor  
			render_bg
			{
				//0="fill(x0, y0, x1, y1, Chat.Back)"
				0="fill(x0, y0, x1, y1, JackMyth.Opacity)"
				// lines around
				1="fill( x0, y0, x1, y0 + 1, Chat.Div )"  // top
			}
		}
		
	}
	
	layout
	{
		region { name="hidden" width=0 height=0}
		
		place { control="Splitter" width=6 }
		place { control="Splitter,UserList" align=right height=max }

		place { control="TitlePanel" margin-left=6 y=2 height=50 width=max margin-right=6 end-right=UserList}
		place { control="VoiceBar" y=34 height=24 width=max margin-left=8 margin-right=52 end-right=UserList}
		place { control="ChatHistory" width=max height=max margin-bottom=84 margin-top=55 end-right=UserList}
		place { control="SendButton" height=42 width=42 align=bottom-right margin-bottom=42 end-right=UserList}
		place { control="EmoticonButton" height=42 width=42 align=bottom-right margin-bottom=42 end-right=SendButton}
		place { control="TextEntry" align=bottom end-right="EmoticonButton" margin-bottom=42 height=42 width=max }
		place { control="StatusLabel" width=max margin-left=10 height=40 align=bottom end-right="VoiceChat"}
		place { control="VoiceChat,ChatActionsButton" width=42 height=42 align=bottom-right spacing=0 dir=right end-right=UserList}
	}
}
