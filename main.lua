package.path = string.gsub(arg[0], "main.lua" , "") .. "?.lua;";

help = require("help")

local internal = false
for i = 1, #arg, 1 do

	if arg[i] == "--internal" then
		internal = true

	end

	if arg[i] == "--help" or arg[i] == "-h" then
		help.printHelp()
		return
		
	end
	

end



local user = os.getenv("USER")
local std_source = "/home/" .. user .. "/.local/share/wineprefixes/"
local std_target = "/home/" .. user .. "/Games/prefixes/"
local source_path
local target_path

if string.match(arg[1], "/") ~= nil then

	target_path = arg[1]

else
	target_path = std_target .. arg[1]
end

if string.match(arg[2], "/") ~= nil then

	source_path = arg[2]

else
	source_path = std_source .. arg[2]
end

local cmd_copy = "cp -r " .. source_path .. "/* " .. target_path
local cmd_remove = "rm -r " .. target_path .. "/drive_c/windows/"
local cmd_link

if internal then

	cmd_link = "ln -s " .. source_path .."/drive_c/windows/* " .. target_path .."/drive_c/windows/"
	cmd_remove = "rm -r " .. target_path .. "/drive_c/windows/*"

else

	cmd_link = "ln -s " .. source_path .."/drive_c/windows/ " .. target_path .."/drive_c/"
end



os.execute("mkdir " .. target_path)

print(cmd_copy)
os.execute(cmd_copy)

print(cmd_remove)
os.execute(cmd_remove)

print(cmd_link)
os.execute(cmd_link)
