AddCSLuaFile()

SWEP.Author			= "BFG"
SWEP.Instructions	= "Primary - Loot spawn, Secondary - Enemy spawn, Use + Primary - Objective spawn, Reload - Save."
SWEP.PrintName	= "Bronx Map Setup Tool"

SWEP.Spawnable			= false
SWEP.AdminSpawnable		= true

SWEP.ViewModel			= "models/weapons/v_smg1.mdl"
SWEP.WorldModel			= "models/weapons/w_smg1.mdl"

SWEP.Primary.ClipSize		= -1
SWEP.Primary.DefaultClip	= -1
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= "none"
SWEP.Primary.Delay = 1

SWEP.Secondary.ClipSize		= -1
SWEP.Secondary.DefaultClip	= -1
SWEP.Secondary.Automatic	= false
SWEP.Secondary.Ammo			= "none"

SWEP.Weight				= 5
SWEP.AutoSwitchTo		= false
SWEP.AutoSwitchFrom		= false

SWEP.PrintName			= ""			
SWEP.Slot				= 3
SWEP.SlotPos			= 1
SWEP.DrawAmmo			= false
SWEP.DrawCrosshair		= false

SWEP.LootSpawns = {}
SWEP.EnemySpawns = {}
SWEP.ObjectiveSpawns = {}

local NET_ID = "Bronx_MapSetupTool"
if SERVER then util.AddNetworkString(NET_ID) end

SWEP.ShootSound = Sound("buttons/button6.wav")

function SWEP:AddSpawnPos(tab)
	local ply = self:GetOwner()
	local dataSet = {}
		dataSet.Pos = ply:GetPos()
		dataSet.Ang = Angle( 0, ply:GetAngles().yaw, 0 )
	table.ForceInsert( tab, dataSet )
end

function SWEP:NetworkSpawnTable(identifier)
	if not SERVER then return end
	net.Start(NET_ID)
		net.WriteString(identifier)
		net.WriteTable(self[identifier])
	net.Send(self:GetOwner())
end

net.Receive(NET_ID, function(len, ply)
	local identifier = net.ReadString()
	local data = net.ReadTable()

	if not identifier then return end
	self[identifier] = data
end)

function SWEP:PrimaryAttack()
	self:SetNextPrimaryFire(CurTime() + .1)
	self:EmitSound( self.ShootSound )
	local ply = self:GetOwner()
	if ply:KeyDown( IN_USE ) then
		self:AddSpawnPos(self.ObjectiveSpawns)
		self:NetworkSpawnTable("ObjectiveSpawns")
		ply:ChatPrint("Added Radio Spawn.")
	else
		self:AddSpawnPos(self.LootSpawns)
		self:NetworkSpawnTable("LootSpawns")
		ply:ChatPrint("Added Loot Spawn.")
	end
end

function SWEP:SecondaryAttack()
	self:SetNextSecondaryFire(CurTime() + .1)
	self:EmitSound( self.ShootSound )
	self:AddSpawnPos(self.EnemySpawns)
	self:NetworkSpawnTable("EnemySpawns")
	self:GetOwner():ChatPrint("Added NPC Spawn.")
end

function SWEP:ShouldDropOnDie()
	return false
end

function SWEP:DrawHUD()
	local drawcolor
	drawcolor = Color(0,255,0)
	surface.SetDrawColor(drawcolor)
	for k, v in pairs(self.LootSpawns) do
		local pos = v.Pos
		local ang = v.Ang
		local forwardpos = pos + (ang:Forward() * 1)
		local FORW_TOSCREEN = forwardpos:ToScreen()
		local TOSCREEN = pos:ToScreen()

		if TOSCREEN.visible and util.TraceLine({start = pos, endpos = self:GetOwner():GetShootPos()}).Entity == self:GetOwner() then
			surface.DrawRect( TOSCREEN.x - 7, TOSCREEN.y - 7, 14, 14 )
			surface.DrawLine( TOSCREEN.x, TOSCREEN.y, FORW_TOSCREEN.x, FORW_TOSCREEN.y)
		end
	end
	drawcolor = Color(255,0,0)
	surface.SetDrawColor(drawcolor)
	for k, v in pairs(self.EnemySpawns) do
		local pos = v.Pos
		local ang = v.Ang
		local forwardpos = pos + (ang:Forward() * 10)
		local FORW_TOSCREEN = forwardpos:ToScreen()
		local TOSCREEN = pos:ToScreen()

		if TOSCREEN.visible and util.TraceLine({start = pos, endpos = self:GetOwner():GetShootPos()}).Entity == self:GetOwner() then
			surface.DrawRect( TOSCREEN.x - 7, TOSCREEN.y - 7, 14, 14 )
			surface.DrawLine( TOSCREEN.x, TOSCREEN.y, FORW_TOSCREEN.x, FORW_TOSCREEN.y)
		end
	end
	drawcolor = Color(0,255,255)
	surface.SetDrawColor(drawcolor)
	for k, v in pairs(self.ObjectiveSpawns) do
		local pos = v.Pos
		local ang = v.Ang
		local forwardpos = pos + (ang:Forward() * 10)
		local FORW_TOSCREEN = forwardpos:ToScreen()
		local TOSCREEN = pos:ToScreen()

		if TOSCREEN.visible and util.TraceLine({start = pos, endpos = self:GetOwner():GetShootPos()}).Entity == self:GetOwner() then
			surface.DrawRect( TOSCREEN.x - 7, TOSCREEN.y - 7, 14, 14 )
			surface.DrawLine( TOSCREEN.x, TOSCREEN.y, FORW_TOSCREEN.x, FORW_TOSCREEN.y)
		end
	end
end

function SWEP:Reload()
	self:EmitSound("buttons/button5.wav")

	if CLIENT then
	print"LOOT"
	print(util.TableToJSON(self.LootSpawns, true))
	print"ENEMIES"
	print(util.TableToJSON(self.EnemySpawns, true))
	print"RADIOS"
	print(util.TableToJSON(self.ObjectiveSpawns, true))
	end

	self:GetOwner():ChatPrint("Map setup data printed to console.")
	self:GetOwner():ChatPrint("Paste 'LOOT' into loot.txt, 'ENEMIES' into enemies.txt, and 'RADIOS' into obj.txt.")
	self:GetOwner():ChatPrint("Files go in data/bronx_mapsetup/<mapname>/.")
end