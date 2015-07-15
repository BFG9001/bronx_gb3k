local GAMESTATE = {}

GAMESTATE.Identifier = "RoundActive"

GAMESTATE.RoundTime = 600

GAMESTATE.NPCSpawnDelay = 15

function GAMESTATE:StateBegin()
	SetUniTimer(self.RoundTime)

	if SERVER then
		local calcRadios = 3 + #player.GetAll()
		GAMEMODE:SpawnBoomBoxes(calcRadios)

		local calcLoot = #GAMEMODE.MAPDATA.LootSpawn * (1/4)
		GAMEMODE:SpawnLootDrop(calcLoot)
		self.NextLootDrop = CurTime() + 45

		self.NextNPCWave = CurTime + 5
	end
end

function GAMESTATE:RoundLoss()

end

function GAMESTATE:Think()



	if GetUniTimer() == 0 then
		self:RoundLoss()
	end
end

function GAMESTATE:StateFinish()

end

function GAMESTATE:HUDPaint()
	--draw.SimpleText("Time before Riot starts: " .. GetUniTimer(), "BronxHUDCoolvetica", 5, 5, Color(255,255,255), TEXT_ALIGN_LEFT, TEXT_ALIGN_BOTTOM, 1, Color(0,0,0) )
end

function GAMESTATE:EntityRemoved(ent)
	if ent.IsBronxRadio then
		SetGlobalInt("Bronx_RadiosLeft", #ents.FindByClass("ent_bronx_ghettoblaster"))
	end
end


GM.GameStates[GAMESTATE.Identifier] = GAMESTATE