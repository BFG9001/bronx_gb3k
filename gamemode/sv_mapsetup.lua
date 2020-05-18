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
GM.MAPDATA.EnemySpawn = {}
GM.MAPDATA.LootSpawn = {}
GM.MAPDATA.ObjSpawn = {}
GM.MAPDATA.PlayerSpawn = {}


function GM:SetupMapData()
	local filePathEX = FILEPATH .. game.GetMap() .. "/"
	if file.Exists( filePathEX, "DATA" ) then
			GAMEMODE.MAPDATA.EnemySpawn = util.JSONToTable(file.Read( filePathEX .. "enemies.txt", "DATA" ))
			GAMEMODE.MAPDATA.LootSpawn = util.JSONToTable(file.Read( filePathEX .. "loot.txt", "DATA" ))
			GAMEMODE.MAPDATA.ObjSpawn = util.JSONToTable(file.Read( filePathEX .. "obj.txt", "DATA" ))
			GAMEMODE.MAPDATA.PlayerSpawn = util.JSONToTable(file.Read( filePathEX .. "playerspawns.txt", "DATA" ))
		Bronx_MapHasBeenSetUp = true
	elseif (file.Exists("gamemodes/bronx_gb3k/content/data/" .. filepathEX, "GAME")) then
		--include("sv_default_mapsetup/" .. game.GetMap() .. ".lua") --fuck man
		--include("sv_bronx_default_mapsetup/" .. game.GetMap() .. ".lua")
		print("rip")
		--Bronx_MapHasBeenSetUp = true
	else
		Bronx_MapHasBeenSetUp = false
		Error("[BRONX] Map setup error! You are using a map that has no setup files, or is not a default map. Please switch to a default map or create the setup files in data/bronx_mapsetup/<mapname here>/ using the weapon_mapsetup_tool.")
	end
	for k, v in pairs(GAMEMODE.MAPDATA) do
		--PrintTable(v)
	end
end