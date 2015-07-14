local GAMESTATE = {}

GAMESTATE.Identifier = "PreRound"

GAMESTATE.PreRoundTime = 60

function GAMESTATE:StateBegin()
	print"preround begun"
	SetUniTimer(self.PreRoundTime)
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
    	else
    		ply:Spawn()
    	end
    	ply:ChatPrint("DEBUG: Preround ended.")
	end
end

function GAMESTATE:HUDPaint()
local triangle = {
	{ x = 100, y = 200 },
	{ x = 150, y = 100 },
	{ x = 200, y = 200 }

}
	surface.SetDrawColor( 255, 0, 0, 255 )
	draw.NoTexture()
	surface.DrawPoly( triangle )

end


GM.GameStates[GAMESTATE.Identifier] = GAMESTATE