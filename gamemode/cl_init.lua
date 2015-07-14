include( 'shared.lua' )

local LASTGAMESTATE = ""
hook.Add("Think", "Bronx_GameStateSynchro", function()
	local changed = (LASTGAMESTATE ~= GetGlobalString(CURRENT_GAMESTATE, "Debug"))
	LASTGAMESTATE = GetGlobalString( CURRENT_GAMESTATE, "Debug" )
	print(changed)
	if changed then
		if GAMEMODE.GameStates[LASTGAMESTATE] and GAMEMODE.GameStates[LASTGAMESTATE].StateFinish then 
			GAMEMODE.GameStates[LASTGAMESTATE]:StateFinish() 
		end
		hook.Call("StateBegin", GAMEMODE, nil )
	end
end)