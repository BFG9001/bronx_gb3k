//Resource download

local function AddResourceDir(dir, filter)

	if not string.EndsWith( dir, "/" ) then
		dir = dir .. "/"
	end

	if filter and (not string.StartWith(filter, dir)) then
		return
	end

	local unused, list = file.Find(dir .. "*", "GAME")
	for _, fdir in pairs(list) do
		if fdir != ".svn" then
			AddResourceDir(dir..fdir)
			print("Adding subdir: " .. dir .. fdir)
		end
	end
 
	for k,v in pairs(file.Find(dir .. "*", "GAME")) do
		resource.AddSingleFile(dir..v)
		print("Adding file: " .. v)
	end
end

AddResourceDir("materials/sprites/bronx")
AddResourceDir("materials/models/sligwolf/grocel/radio")
AddResourceDir("models/sligwolf/grocel/radio")
AddResourceDir("sound/bronx")