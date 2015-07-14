include( 'shared.lua' )

local LASTGAMESTATE = ""
hook.Add("Think", "Bronx_GameStateSynchro", function()
	local changed = (LASTGAMESTATE == GetGlobalString(CURRENT_GAMESTATE, "Debug"))
	if changed then
		if GAMEMODE.Gamestates[LASTGAMESTATE].StateFinish then GAMEMODE.GameStates[LASTGAMESTATE]:StateFinish() end
		hook.Call("StateBegin", GAMEMODE, nil )
	end
	LASTGAMESTATE = GetGlobalString( CURRENT_GAMESTATE, "Debug" )
end)