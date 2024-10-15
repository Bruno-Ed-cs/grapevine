local helper = {}

function helper.printHelp()

	print ("Usage:")
	print ("grapevine [prefix destination] [prefix source] [option]")
	print ("")
	print ("if only words are used instead of directory paths,the program will use the default folders")
	print ("default source = ~/.local/share/wineprefixes/")
	print ("default target = ~/Games/prefixes/")
	print ("")
	print ("--internal     flag for determining if the windows folder is gonna be linked of is the folders inside are going to be")
	
end

return helper
