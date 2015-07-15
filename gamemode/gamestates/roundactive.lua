local GAMESTATE = {}

GAMESTATE.Identifier = "RoundActive"

GAMESTATE.RoundTime = 600

GAMESTATE.NPCSpawnDelay = 20
GAMESTATE.MaxNPCs = 75
GAMESTATE.NPCBaseAmount = 10

if game.SinglePlayer() then GAMESTATE.MaxNPCs = 40 end --For optimization reasons

GAMESTATE.MaxLoot = 169
GAMESTATE.LootDelay = 20
GAMESTATE.LootBaseAmount = 20

function GAMESTATE:StateBegin()
	SetUniTimer(self.RoundTime)

	if SERVER then
		local calcRadios = 3 + #player.GetAll()
		GAMEMODE:SpawnBoomBoxes(calcRadios)
		SetGlobalInt("Bronx_RadiosLeft", #ents.FindByClass("ent_bronx_ghettoblaster"))

		local calcLoot = self.MaxLoot * (2/5)
		GAMEMODE:SpawnLootDrop(calcLoot)
		self.NextLootDrop = CurTime() + 45

		self.NextNPCWave = CurTime() + 5
	end
end

function GAMESTATE:RoundLoss()
	GAMEMODE:SetState("EndRound_Loss")
end

function GAMESTATE:RoundWin()
	GAMEMODE:SetState("EndRound_Win")
end

function GAMESTATE:LootThink()
	if self.NextLootDrop <= CurTime() then
		local calcLoot = math.min(self.MaxLoot - #ents.FindByClass("item_*"), 25 + (#player.GetAll() * 3))
		GAMEMODE:SpawnLootDrop(calcLoot)
		self.NextLootDrop = CurTime() + self.LootDelay
	end
end

function GAMESTATE:NPCSpawningThink()
	if self.NextNPCWave <= CurTime() then
		local calcNPCamount = math.min(self.MaxNPCs - #ents.FindByClass("npc*"), self.NPCBaseAmount + (#player.GetAll() - 1))
		local calcSpawnSeed = math.random( 1, #GAMEMODE.MAPDATA.EnemySpawn )
		GAMEMODE:SpawnClusterNPCs(calcNPCamount, calcSpawnSeed)

		self.NextNPCWave = CurTime() + self.NPCSpawnDelay
	end
end

function GAMESTATE:Think()
	if SERVER then
		self:LootThink()
		self:NPCSpawningThink()
	end
	if GetGlobalInt("Bronx_RadiosLeft", #ents.FindByClass("ent_bronx_ghettoblaster")) < 1 then
		self:RoundWin()
	end
	if GetUniTimer() == 0 then
		self:RoundLoss()
	end
end

function GAMESTATE:StateFinish()
	if SERVER then
		for k, v in pairs(ents.FindByClass("npc_*")) do
			v:TakeDamage(99999)
		end
	end
end

function GAMESTATE:HUDPaint()
	local width, height = draw.SimpleTextOutlined("Time Remaining: " .. GetUniTimer(), "BronxHUDCoolvetica", 5, 5, Color(255,255,255), TEXT_ALIGN_LEFT, TEXT_ALIGN_BOTTOM, 2, Color(0,0,0) )
	draw.SimpleTextOutlined("Points: " .. tostring(LocalPlayer():Frags()), "BronxHUDComic", 5, 8 + height, Color(255,255,255), TEXT_ALIGN_LEFT, TEXT_ALIGN_BOTTOM, 1, Color(0,0,0))
	draw.SimpleTextOutlined("Boomboxes Left: " .. GetGlobalInt("Bronx_RadiosLeft", 5), "BronxHUDCoolvetica", ScrW() - 5, 5, Color(255,255,255), TEXT_ALIGN_RIGHT, TEXT_ALIGN_BOTTOM, 2, Color(0,0,0) )
end

function GAMESTATE:EntityRemoved(ent)
	if ent.IsBronxRadio then
		SetGlobalInt("Bronx_RadiosLeft", #ents.FindByClass("ent_bronx_ghettoblaster"))
	end
end


local function CheckPlayers()
	local alive = 0
	for k, v in pairs(player.GetAll()) do 
		if IsValid(v) and v:Alive() then
			alive = alive + 1
		end
	end
	if alive < 1 then
		self:RoundLoss()
	end
end
function GAMESTATE:PostPlayerDeath(ply)
	CheckPlayers()
end

function GAMESTATE:PlayerDisconnected(ply)
	ply:KillSilent()
	CheckPlayers()
end

function GAMESTATE:OnNPCKilled(npc, attack, inflict)
	if IsValid(attack) and attack:IsPlayer() then
		attack:AddFrags(10)
	end
end

function GAMESTATE:EntityTakeDamage(ent, dmg)
	if ent.IsBronxRadio and (not ent.DestroyedBy) then
		if dmg:GetDamage() >= ent:Health() then
			if dmg:GetAttacker():IsPlayer() then
				ent.DestroyedBy = dmg:GetAttacker()
				dmg:GetAttacker():AddFrags(125)
				PrintMessage(HUD_PRINTCENTER, dmg:GetAttacker():Nick() .. " destroyed a Blaster 3000 Boombox!" )
				BroadcastLua( 'surface.PlaySound("buttons/blip1.wav")' )
			end
		end
	end
	if ent.IsBronxCitizen and dmg:GetAttacker():IsPlayer() then
		local ply = dmg:GetAttacker()
		ply.Bronx_PointsDamageCounter = ply.Bronx_PointsDamageCounter or 0
		local dmgcounter = ply.Bronx_PointsDamageCounter
		dmgcounter = dmgcounter + dmg:GetDamage()
		while dmgcounter > 75 do
			ply:AddFrags(1)
			dmgcounter = dmgcounter - 75
		end
		ply.Bronx_PointsDamageCounter = dmgcounter
	end
end

function GAMESTATE:PlayerDeathThink(ply)

	return false
end

GM.GameStates[GAMESTATE.Identifier] = GAMESTATE