GM.Name = "The Bronx: Ghetto Blaster 3000"
GM.Author = "BFG9000"
GM.Email = "mac4sean@gmail.com"
GM.Website = "http://facepunch.com/member.php?u=404602"


GM.GameStates = {}

include("sh_includes.lua")

DeriveGamemode( "base" )

CURRENT_GAMESTATE = "BronxGameState"
SetGlobalString( CURRENT_GAMESTATE, "Debug" )


function GM:Initialize()
	for key, value in pairs(GAMEMODE) do
		if type(value) == "function" then
			hook.Add( key, "GAMESTATE_" .. key, function(...)
				local STATE = GAMEMODE.GameStates[GetGlobalString(CURRENT_GAMESTATE, "Debug")]
				if STATE and STATE[key] and (type(STATE[key]) == "function") then
					return STATE[key](STATE, ...)
				end
			end)
		end
	end
end


function GM:StateBegin()

end

function GM:StateFinish()

end