"friends/ChatRoomDlgFriend.res"
{
	controls
	{
		"ChatRoomDlg"
		{
			"ControlName"		"CChatRoomDlg"
			"title"		"#Friends_Chat_Title"
		}
		"TextEntry"
		{
			"ControlName"		"TextEntry"
			"tabPosition"		"1"
			"editable"		"1"
			"maxchars"		"2048"
			"unicode"		"1"
			style="textentryfocus_chat"
		}
		"ChatHistory"
		{
			"ControlName"		"RichText"
			"maxchars"		"-1"
			"ScrollBar"		"1"
			style="ChatListPanel"
		}
		"SendButton"
		{
			"ControlName"		"Button"
			"tabPosition"		"2"
			"paintbackground"		"1"
			"labelText"		"#Friends_Chat_Send"
			"textAlignment"		"west"
			"Default"		"1"
			style="button"
		}
		"StatusLabel"
		{
			"ControlName"		"Label"
			"labelText"			""
		}
		"TitlePanel"
		{
			"ControlName"		"CFriendPanel"
			"zpos"		"-2"
			paintbackgroundenabled=0
			
		}
		"VoiceBar"
		{
			"ControlName"		"CVoiceBar"
		}
		"VoiceChat"
		{
			"ControlName"		"Button"
			style="controlbutton"
			minimum-width="120"
		}
		"GameInviteBar"
		{
			"ControlName"		"GameInviteBar"
		}
		"EmoticonButton"
		{
			"ControlName"		"CEmoticonButton"
		}
	}	

	styles
	{
		
		
		label
		{
			font-size=14
		}
		
		controlbutton
		{
			minimum-width=120
		}
		
		Textentryfocus_chat
		{
			// opaque bgcolor for rendering optimization during typing
			//bgcolor=TextBox.Back
			bgcolor=JackMyth.Opacity
			render
			{
				// lines around
				0="fill( x0, y0, x1, y0 + 1, Chat.Div )"  // top
			}     

			//font-size=16
		}

		CEmoticonButton
		{
			inset="6 0 0 0"
			image="graphics/Threshold/friends/icon_emoticon"
			render_bg
			{
				0="fill(x0, y0, x1, y1, Chat.Back)"
				// lines around
				1="fill( x0, y0, x1, y0 + 1, Chat.Div )"  // top
			}
		}

		CEmoticonButton:hover
		{
			render_bg
			{
				0="fill(x0, y0, x1, y1, Menu.Button.Hover)"
				// lines around
				1="fill( x0, y0, x1, y0 + 1, Chat.Div )"  // top
			}
		}

		CEmoticonButton:selected
		{
			render_bg
			{
				0="fill(x0, y0, x1, y1, Menu.Button.Active)"
				// lines around
				1="fill( x0, y0, x1, y0 + 1, Chat.Div )"  // top
			}
		}
		
		button //Send button
		{
			inset="0 0 0 0"
			textcolor=none
			image="graphics/Threshold/send"
			bgcolor=Chat.Back
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
			font-size=16
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
			inset="3 0 0 0"
			image="graphics/Threshold/dots"
		}
		
		CChatActionsButton:hover
		{
			image="graphics/Threshold/dots"
			bgcolor=Menu.Button.Hover
		}

		CChatActionsButton:selected
		{
			image="graphics/Threshold/dots"
			bgcolor=Menu.Button.Active
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
				0="fill(x0, y0, x1, y1, Chat.Back)"
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
				0="fill(x0, y0, x1, y1, Chat.Back)"
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
				0="fill(x0, y0, x1, y1, Chat.Back)"
				// lines around
				1="fill( x0, y0, x1, y0 + 1, Chat.Div )"  // top
			}
		}
		
	}
	
	layout
	{
	
		region { name="hidden" width=0 height=0}
		
		place { control="GameInviteBar,TradeInviteBar,ChatInfoBar,BIBar,BABar" height=54 }
		
		region { name=chat width=max height=max margin-bottom=42}
		place { control="TitlePanel" region=chat margin-left=6 y=2 height=50 width=max margin-right=6}
		place { control="VoiceBar" region=chat y=34 height=24 width=max margin-left=8 margin-right=52 }
		place { control="TradeInviteBar,GameInviteBar,ChatInfoBar,BIBar,BABar,ChatHistory" dir=down region=chat width=max height=max margin-bottom=42 margin-top=55}
		region {name=textinput region=chat width=max height=42 align=bottom}
		place { control="EmoticonButton,SendButton" region=textinput dir=right spacing=0 height=42 width=42 align=right}
		place { control="TextEntry" align=bottom region=textinput end-right="EmoticonButton" height=42 width=max }
		
		region { name=bottomrow align=bottom height=42}
		place { control="StatusLabel" region=bottomrow width=max margin-left=10 height=40 end-right="VoiceChat"}
		place { control="VoiceChat,ChatActionsButton" region=bottomrow width=42 height=42 margin-right=0 align=right spacing=0 dir=right }
	}
}
