AddCSLuaFile()

local client_files = {"cl_postprocess.lua", "cl_basehud.lua"}

local server_files = {"sv_mapsetup.lua", "sv_concommands.lua", "sv_equipment.lua"}

local shared_files = {"gamestates/debug.lua"}



for k,v in pairs(client_files) do
	AddCSLuaFile(v)
	if CLIENT then include(v) end
end


if SERVER then
	for k,v in pairs(server_files) do
		include(v)
	end
end

for k,v in pairs(shared_files) do
	AddCSLuaFile(v)
	include(v)
end