local GAMESTATE = {}

GAMESTATE.Identifier = "PreRound"

GAMESTATE.PreRoundTime = 60

function GAMESTATE:StateBegin()
	print"preround begun"
	SetUniTimer(self.PreRoundTime)
	for k, v in pairs(player.GetAll()) do
		if SERVER then v:SetFrags(0) end
	end
end

function GAMESTATE:Think()
	--print("Preround active")
	if #player.GetAll() < 1 then
		SetUniTimer(self.PreRoundTime)
	end
	if GetUniTimer() <= 0 then
		GAMEMODE:SetState("RoundActive")
	end
end

function GAMESTATE:StateFinish()
	for k, ply in pairs(player.GetAll()) do
		if ply:Alive() and SERVER then
			local spawnData = GAMEMODE.MAPDATA.PlayerSpawn[table.KeyFromValue(player.GetAll(), ply)]
					ply:SetPos(spawnData.Pos)
    				ply:SetEyeAngles(spawnData.Ang)
    				ply:SetHealth(ply:GetMaxHealth())
    	elseif SERVER then
    		ply:Spawn()
    		--hook.Call("PlayerSpawn", GAMEMODE, ply)
    	end
    	--ply:ChatPrint("DEBUG: Preround ended.")
    	--ply:ChatPrint("Gamestate is " .. GetGlobalString(CURRENT_GAMESTATE))
	end
end

function GAMESTATE:HUDPaint()
	draw.SimpleText("Time before Riot starts: " .. GetUniTimer(), "BronxHUDCoolvetica", 5, 5, Color(255,255,255), TEXT_ALIGN_LEFT, TEXT_ALIGN_BOTTOM, 1, Color(0,0,0) )
end


GM.GameStates[GAMESTATE.Identifier] = GAMESTATE