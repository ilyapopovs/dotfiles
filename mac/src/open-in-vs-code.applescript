on run
	tell application "Finder"
		if selection is {} then
			set finderSelection to folder of the front window as string
		else
			set finderSelection to selection as alias list
		end if
	end tell
	
	openFunc(finderSelection)
end run

-- script was drag-and-dropped onto
on open (theList)
	openFunc(theList)
end open

-- open in Visual Studio Code
on openFunc(listOfAliases)
	tell application "Visual Studio Code"
		activate
		open listOfAliases
	end tell
end openFunc

-- credit: https://github.com/hamxiaoz/open-folder-with-vs-code