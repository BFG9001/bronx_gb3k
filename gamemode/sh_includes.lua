AddCSLuaFile()

local client_files = {"cl_postprocess.lua", "cl_basehud.lua"}

local server_files = {"sv_mapsetup.lua", "sv_equipment.lua", "sv_spawnsystems.lua"}

local shared_files = {"gamestates/debug.lua", "sh_concommands.lua", "gamestates/preround.lua", "gamestates/roundactive.lua", "gamestates/endround.lua"}

--For 1WGCC
shared_files[#shared_files + 1] = "sh_1wgcc_nextgamemode.lua"
client_files[#client_files + 1] = "cl_easteregg.lua"

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