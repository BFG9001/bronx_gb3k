//Entity Spawning system
//To override or make a new map compatibility file, use weapon_mapsetup_tool and put the output files in /data/bronx_mapsetup/<mapname>/.

local FILEPATH = "bronx_mapsetup/"
//Every map folder should have:
--[[
enemies.txt
loot.txt
obj.txt
playerspawns.txt
--]]
//If not then THIS WILL NOT WORK PROPERLY
GM.MAPDATA = {}


function GM:SetupMapData()
	if file.Exists( FILEPATH .. game.GetMap(), "DATA" ) then
		local filePathEX = FILEPATH .. game.GetMap()
			GAMEMODE.MAPDATA.EnemySpawn = util.JSONToTable(file.Read( filePathEX .. enemies.txt, "DATA" ))
			GAMEMODE.MAPDATA.LootSpawn = util.JSONToTable(file.Read( filePathEX .. loot.txt, "DATA" ))
			GAMEMODE.MAPDATA.ObjSpawn = util.JSONToTable(file.Read( filePathEX .. obj.txt, "DATA" ))
			GAMEMODE.MAPDATA.PlayerSpawn = util.JSONToTable(file.Read( filePathEX .. playerspawns.txt, "DATA" ))
	elseif file.Exists("gamemodes/" .. engine.ActiveGamemode() .. "/gamemode/sv_default_mapsetup/" .. game.GetMap() .. ".lua", "GAME") then
		include("sv_default_mapsetup/" .. game.GetMap() .. ".lua")
	else
		Error("[BRONX] Map setup error! You are using a map that has no setup files, or is not a default map. Please switch to a default map or create the setup files in data/bronx_mapsetup/<mapname here>/ using the weapon_mapsetup_tool.")
	end
	for k, v in pairs(GAMEMODE.MAPDATA) do
		PrintTable(v)
	end
end