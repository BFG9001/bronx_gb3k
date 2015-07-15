GM.Name = "The Bronx: Ghetto Blaster 3000"
GM.Author = "BFG9000"
GM.Email = "mac4sean@gmail.com"
GM.Website = "http://facepunch.com/member.php?u=404602"


GM.GameStates = {}

include("sh_includes.lua")

DeriveGamemode( "base" )

CURRENT_GAMESTATE = "BronxGameState"
SetGlobalString( CURRENT_GAMESTATE, "Debug" )
SetGlobalInt( "Bronx_UniversalTimer", 0 )
SetGlobalFloat( "Bronx_TimerSetTime", CurTime())

function GetUniTimer()
	return GetGlobalInt("Bronx_UniversalTimer", 0), (GetGlobalFloat( "Bronx_TimerSetTime", 0))
end

function SetUniTimer(int)
	SetGlobalInt("Bronx_UniversalTimer", int or 0)
	SetGlobalFloat("Bronx_TimerSetTime", CurTime())
end

timer.Create("Bronx_UniversalTimer", 1, 0, function() 
	SetGlobalInt("Bronx_UniversalTimer", math.max(GetGlobalInt("Bronx_UniversalTimer", 0) - 1, 0) ) 
end)

function GM:StartCommand(ply, cmd)

end

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
	self:SetState("PreRound")
end


function GM:StateBegin()

end

function GM:StateFinish()

end

function GM:SetState(identifier) --USE THIS WHENEVER YOU TRANSITION BETWEEN STATES
	if SERVER then print("Server Set State") end
	if CLIENT then print("Client Set State") end
	--print(GAMEMODE.GameStates[identifier])
	if not GAMEMODE.GameStates[identifier] then identifier = "Debug" end
	--print("State changed to " .. identifier)
	if SERVER then hook.Call("StateFinish", GAMEMODE, nil ) end
	SetGlobalString(CURRENT_GAMESTATE, identifier or "Debug")
	if SERVER then hook.Call("StateBegin", GAMEMODE, nil ) end
end