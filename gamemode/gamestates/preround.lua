local GAMESTATE = {}

GAMESTATE.Identifier = "PreRound"

GAMESTATE.PreRoundTime = 105

function GAMESTATE:StateBegin()
	--print"preround begun"
	SetUniTimer(self.PreRoundTime)
	for k, v in pairs(player.GetAll()) do
		if SERVER then 
			v:KillSilent()
			v:Spawn()
			v:SetFrags(0) 
		end
	end
	game.CleanUpMap()
	if SERVER then 
		timer.Simple(0, function()
		GAMEMODE:SpawnLootDrop(#GAMEMODE.MAPDATA.LootSpawn * (3/4)) 
		end)
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
	local width, height = draw.SimpleTextOutlined("Time before Riot starts: " .. GetUniTimer(), "BronxHUDCoolvetica", 5, 5, Color(255,255,255), TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, 2, Color(0,0,0) )
	draw.SimpleTextOutlined("Weapons and supplies you collect now will be usable during the Riot!", "BronxHUDComic", 5, 8 + height, Color(255,255,255), TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, 1, Color(0,0,0))
end


GM.GameStates[GAMESTATE.Identifier] = GAMESTATE