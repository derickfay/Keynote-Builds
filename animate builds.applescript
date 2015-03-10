tell application "System Events"
	tell process "Keynote"
		set frontmost to true
		tell window 1
			
			-- open the toolbar if it's not open already
			if toolbars is {} then
				click menu item "Show Toolbar" of menu "View" of menu bar item "View" of menu bar 1
			end if
			
			-- getting the properties of the default body item also selects it in the UI
			tell document 1 of application "Keynote"
				set s to current slide
				properties of default body item of s
			end tell
			
			-- open the animations pane if it's not open already
			if value of radio button "Animate" of radio group 1 of toolbar 1 is 0 then
				click radio button "Animate" of radio group 1 of toolbar 1
			end if
			
			-- deal with existing and new animations
			-- edit the following to reflect your desired build
			if button "Change" exists then
				click button "Change"
				click button "Appear" of scroll area 1 of pop over 1 of button "Change"
			else if button "Add an Effect" exists then
				click button "Add an Effect"
				click button "Appear" of scroll area 1 of pop over 1 of button "Add an Effect"
				-- following does not work for mysterious reasons
				-- see http://macscripter.net/viewtopic.php?id=43725
				-- click pop up button 2 of scroll area 1
				-- click menu item "By Bullet" of menu 1 of pop up button 2 of scroll area 1
			end if
		end tell
	end tell
end tell

