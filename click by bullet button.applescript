tell application "System Events"
	tell process "Keynote"
		tell window 1
			click pop up button 2 of scroll area 1
			-- lazy code follows - using two try commands rather than filtering by master slide
			-- edit as necessary depending on your desired build
			try
				click menu item "By Bullet" of menu 1 of pop up button 2 of scroll area 1
			end try
			try
				click menu item "By Paragraph" of menu 1 of pop up button 2 of scroll area 1
			end try
		end tell
	end tell
end tell