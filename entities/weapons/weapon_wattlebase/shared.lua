
AddCSLuaFile( "shared.lua" )

AddCSLuaFile( "wattleclavbase.lua" )
include("wattleclavbase.lua")

AddCSLuaFile( "wattleutil.lua" )
include("wattleutil.lua")

AddCSLuaFile( "wattlecalcview.lua" )
include("wattlecalcview.lua")

/*
local WattleClientConVars = { "wat_cl_developer" }
WattleCVar = {}

if (CLIENT) then
	for k, v in pairs(WattleClientConVars) do
		CreateClientConVar( v, "0", true, false )
		WattleCVar[v] = GetConVar(v):GetBool()
	end
end
if (CLIENT) then
	concommand.Add( "wat_update_cvars", function( ply )
		for k, v in pairs(WattleClientConVars) do
			WattleCVar[v] = GetConVar(v):GetBool()
			print(WattleCVar[v])
			print("Rip")
		end
	end,
	nil, nil, FCVAR_CLIENTCMD_CAN_EXECUTE )
end
*/

SWEP.Wattle 					= true
---------
SWEP.PrintName 					= "Wattle Base"
SWEP.Category 					= "Wattle"
//SWEP.Base 						= 
SWEP.Spawnable 					= false
SWEP.AdminOnly 					= false
SWEP.m_WeaponDeploySpeed 		= 1

SWEP.Author 					= "Awcmon"
SWEP.Contact 					= ""
SWEP.Purpose 					= ""
SWEP.Instructions 				= ""

SWEP.ViewModel 					= "models/weapons/v_pistol.mdl" 
SWEP.WorldModel 				= "models/weapons/w_pistol.mdl" 
SWEP.ViewModelFlip 				= false
SWEP.ViewModelFOV 				= 57

SWEP.Weight 					= 5
SWEP.AutoSwitchFrom 			= false
SWEP.AutoSwitchTo 				= false

SWEP.BobScale 					= 0
SWEP.SwayScale 					= 0
SWEP.BounceWeaponIcon 			= true
SWEP.DrawWeaponInfoBox 			= true
SWEP.DrawAmmo 					= true
SWEP.DrawCrosshair 				= false
SWEP.Slot 						= 0
SWEP.SlotPos 					= 10
//SWEP.WepSelection 				= 
SWEP.CSMuzzleFlashes 			= true
SWEP.CSMuzzleX 					= false

SWEP.Primary.ClipSize			= -1
SWEP.Primary.DefaultClip 		= -1
SWEP.Primary.Ammo 				= "none"
SWEP.Primary.Automatic 			= false

SWEP.Secondary.ClipSize 		= -1
SWEP.Secondary.DefaultClip 		= -1
SWEP.Secondary.Ammo 			= "none"
SWEP.Secondary.Automatic 		= false

SWEP.UseHands 					= true
SWEP.AccurateCrosshair 			= true
---------
SWEP.HoldType 					= "ar2"

SWEP.Primary.Damage				= 42
SWEP.Primary.Sound				= ""
SWEP.Primary.NumShots			= 1
SWEP.Primary.Delay				= 1
SWEP.Primary.Cone				= 0.01
SWEP.Primary.Tracer				= 0
SWEP.Primary.TracerName			= "Tracer"

SWEP.ReloadClipInTime			= 0

SWEP.VMPosOffset 				= Vector(0,0,0)
SWEP.VMAngOffset				= Angle(0,0,0)
SWEP.SprintPos	 				= { Vector(5,0,0), Vector(4,1.5,1), Vector(1,3,-2) }
SWEP.SprintAng					= { Angle(-8,15,10), Angle(-3,20,-20), Angle(-8,25,5) }
SWEP.WalkPos 					= { Vector(-1,0,0), Vector(0,0,1), Vector(1,0,0) }
SWEP.WalkAng					= { Angle(-1,-1,-2), Angle(1,0,0), Angle(-1,1,1) }
SWEP.InspectPos 				= { Vector(-5.503, 0.18, -2.201), Vector(5.627, 0.495, 2.073) }
SWEP.InspectAng 				= { Angle(14.199, -39.6, -10), Angle(0.001, 0.001, 39.21) }
SWEP.IronSightsPos 				= Vector(-6.24, -1.5, -0.08)
SWEP.IronSightsAng 				= Angle(0, 0, 0)
SWEP.SwayPosDiv					= 45
SWEP.SwayAngDiv					= 10

SWEP.UseIrons					= false
SWEP.UseScope					= false
SWEP.Zoom 						= 50
SWEP.SetFATOnShoot 				= false
SWEP.CVFireAnimIroned			= false

SWEP.DTFloats 					= {}
SWEP.DTBools 					= {}
SWEP.DTInts 					= {}

SWEP.ViewModelBoneMods = {}
SWEP.VElements = {}
SWEP.WElements = {}

/*----Wat vars-------------*/
WatRecoilTrack = 0.45
WatAimProg = 0
SWEP.FAT = 0
/*-------------------------*/

/*
function SWEP:SetupDataTables()
	self:NetworkVar( "Float", 0, "LST" )			//LastShootTime
	self:NetworkVar( "Float", 1, "FAT" )			//FinishAnimTime
	self:NetworkVar( "Float", 2, "RP")				//Recoil Progress 
	self:NetworkVar( "Float", 3, "FRT")				//FinishReloadTime
	self:NetworkVar( "Float", 4, "SRT")				//StartReloadTime
	self:NetworkVar( "Bool", 0, "Reloading")
	self:NetworkVar( "Int", 0, "Firemode")			//Firemode
	self:NetworkVar( "Int", 1, "FMI")				//Firemode Iterator
end
*/

SWEP.BaseDTFloats = { "LST", "FAT", "RP", "FRT", "SRT", "Cone" }
SWEP.BaseDTBools = { "Reloading" }
SWEP.BaseDTInts = { "Firemode", "FMI" }
function SWEP:SetupDataTables()
	local Floats = table.Add(self.BaseDTFloats, self.DTFloats)
	local Bools = table.Add(self.BaseDTBools, self.DTBools)
	local Ints = table.Add(self.BaseDTInts, self.DTInts)
	for i = 1, #Floats - 1 do
		//print(Floats[i])
		self:NetworkVar( "Float", i-1, Floats[i] )
	end
	for i = 1, #Bools - 1 do
		//print(Bools[i])
		self:NetworkVar( "Bool", i-1, Bools[i] )
	end
	for i = 1, #Ints - 1 do 
		//print(Ints[i])
		self:NetworkVar( "Int", i-1, Ints[i] )
	end
end


function SWEP:WatInitialize()
	if ( SERVER ) then
		self:SetNPCMinBurst( 30 )
		self:SetNPCMaxBurst( 30 )
		self:SetNPCFireRate( 0.01 )
	end
	/*
	if(IsValid(self:GetOwner())) then
		self:SetOwner(self:GetOwner())
		self.Owner = self:GetOwner()
		//print("Owner is Valid!")
	else
		//print("Owner is not Valid!")
	end
	*/
	
	self:SetOwner(self:GetOwner())
	self.Owner = self:GetOwner()
	
	self:SetHoldType( self.HoldType )
	
	self.NormFOV = self.ViewModelFOV
	
	self:ClavInitialize()
	
end

function SWEP:WatDeploy()
	self.SetOwner(self:GetOwner())
	self.Owner = self:GetOwner()
	if(IsValid(self.Owner)) then
		self:SetFAT(CurTime() + self.Owner:GetViewModel():SequenceDuration())
		self.FAT = CurTime() + self.Owner:GetViewModel():SequenceDuration()
	end
end

function SWEP:WatHolster()
	self:WatInterruptedReloadHolster()
	self:ClavHolster()
	self.baseviewmodel.origin = Vector(0,0,0)
	self.baseviewmodel.angles = Angle(0,0,0)
	self.inspectviewmodel.origin = Vector(0,0,0)
	self.inspectviewmodel.angles = Angle(0,0,0)
end

function SWEP:WatOnRemove()
	self:ClavOnRemove()
end

function SWEP:WatThink()
	local ply = self.Owner
	if(!IsValid(ply)) then 
		print("Player is not valid!") 
		print(ply) 
		self.Owner = self:GetOwner() 
		ply = self.Owner
		return false 
	end
end

function SWEP:WatDrawHUD()
	self:WatDrawCrosshair((1-WatAimProg)*255)
	if(	self.UseScope ) then
		if(self:IsAiming() && (WatAimProg >= 1) ) then
			self:DrawScope()
			self.ViewModelFOV = self.Zoom+1
		else
			if(self.ViewModelFOV != self.NormFOV) then
				self.ViewModelFOV = self.NormFOV
			end
		end
	end
end

function SWEP:WatDrawCrosshair(alpha)
	local ply = LocalPlayer()

	local hitpos = (ply:GetShootPos() + (ply:GetAimVector():Angle() + ply:GetViewPunchAngles()*(WatRecoilTrack)):Forward()*10000)
	
	local coords = hitpos:ToScreen()
	
	local x = coords.x
	local y = coords.y
	
	gap = 3
	
	length = 4

	surface.SetDrawColor( 255, 255, 255, alpha )
		
	surface.DrawLine( x - length - gap, y, x - gap, y )
	surface.DrawLine( x + length + gap, y, x + gap, y )
	surface.DrawLine( x, y - length - gap, x, y - gap )
	surface.DrawLine( x, y + length + gap, x, y + gap )

	surface.SetDrawColor( 0, 0, 0, alpha )

	surface.DrawLine( x - length - gap, y+1, x - gap, y+1 )
	surface.DrawLine( x + length + gap, y+1, x + gap, y+1 )
	surface.DrawLine( x+1, y - length - gap, x+1, y - gap )
	surface.DrawLine( x+1, y + length + gap, x+1, y + gap )

	surface.DrawLine( x - length - gap, y-1, x - gap, y-1 )
	surface.DrawLine( x + length + gap, y-1, x + gap, y-1 )
	surface.DrawLine( x-1, y - length - gap, x-1, y - gap )
	surface.DrawLine( x-1, y + length + gap, x-1, y + gap )
	
end

function SWEP:DrawScope()
	local ply = self.Owner
	
	local sm = 1.1 - (math.Clamp(CurTime() + (ply:Ping()/1000) - self:GetLST(), 0, 0.2)*0.5)

	local hitpos = (ply:GetShootPos() + (ply:GetAimVector():Angle() + ply:GetViewPunchAngles()*0.8):Forward()*100000)
	
	local coords = hitpos:ToScreen()
	
	local x = coords.x
	local y = coords.y
	
	local hw = (ScrW()/2) * sm
	local hh = (ScrH()/2) * sm
	local hwhdiff = math.abs(hw-hh) * sm

	local ScopeLensTexture = surface.GetTextureID( "overlays/scope_lens" )
	local ScopeOverlayTexture = surface.GetTextureID( "sprites/scope_arc" )
	
	surface.SetDrawColor( 255, 255, 255, 100 )
	surface.SetTexture( ScopeLensTexture )
	surface.DrawTexturedRect(0,0,ScrW(),ScrH())
	
	self:DrawScopeReticule(x, y)

	surface.SetDrawColor( 255, 255, 255, 255 )
	surface.SetTexture( ScopeOverlayTexture )
	
	local ox = ScrW()/2
	local oy = ScrH()/2
	surface.DrawTexturedRectUV( ox-hw, oy - hw, hw, hw, 1, 1, 0, 0 ) 
	surface.DrawTexturedRectUV( ox-hw, oy, hw, hw, 1, 0, 0, 1 ) 
	surface.DrawTexturedRectUV( ox, oy - hw, hw, hw, 0, 1, 1, 0 ) 
	surface.DrawTexturedRectUV( ox, oy, hw, hw, 0, 0, 1, 1 ) 
	
	//Fill up the unused portion of the screen so it doesn't look dumb.
	surface.SetDrawColor( 0, 0, 0, 255 )
/*
	//Top
	surface.DrawRect(ox-(ScrW()/2),oy-(ScrW()*10),ScrW(),ScrW()*9.5)
	//Bottom
	surface.DrawRect(ox-(ScrW()/2),oy+(ScrW()/2.05),ScrW(),ScrW()*10)
	//Right
	surface.DrawRect(ox+(ScrW()/(2.05)),oy-ScrW()*5,ScrW()*10,ScrW()*10)
	//Left
	surface.DrawRect(ox-(ScrW()*10),oy-ScrW()*5,ScrW()*9.5,ScrW()*10)
	*/
end

function SWEP:DrawScopeReticule(x, y)
	surface.SetDrawColor( 0, 0, 0, 255 )
	surface.DrawLine( x + 1000, y, x, y )
	surface.DrawLine( x - 1000, y, x, y )
	surface.DrawLine( x, y - 1000, x, y )
	surface.DrawLine( x, y + 1000, x, y )
end

function SWEP:WatReload(anim)
	if(self:Clip1() >= self.Primary.ClipSize) then return end
	if(self.Owner:KeyDown(IN_ATTACK)) then return end
	if(CurTime() < self:GetFRT()) then return end
	
	if(self.ReloadClipInTime > 0 ) then
		self:WatInterruptedReload(anim)
	else
		self:DefaultReload(anim)
		self:SetFAT(CurTime() + AnimationTime)
		self:SetFRT(CurTime() + AnimationTime)
		self.FAT = CurTime() + AnimationTime
	end

end

//lua_run player.GetAll()[1]:RemoveAllAmmo()
function SWEP:WatInterruptedReload(anim)
	if(self.Owner:GetAmmoCount(self:GetPrimaryAmmoType()) <= 0) then return end

	self:SendWeaponAnim(anim)
	self.Owner:SetAnimation( PLAYER_RELOAD )
	
	if(!IsFirstTimePredicted()) then return end
	self:SetSRT(CurTime())
	local AnimationTime = (self.Owner:GetViewModel():SequenceDuration())
	self:SetFAT(CurTime() + AnimationTime)
	self:SetFRT(CurTime() + AnimationTime)
	self.FAT = CurTime() + AnimationTime
	self:SetNextPrimaryFire(CurTime() + AnimationTime)
	self:SetReloading(true)
end

function SWEP:WatInterruptedReloadThink()
	if( (CurTime() > (self:GetSRT() + self.ReloadClipInTime)) && (self:GetReloading()) ) then
		local OldClip = self:Clip1()
		self:SetClip1( math.Clamp(self:Clip1() + self.Owner:GetAmmoCount(self:GetPrimaryAmmoType()), 0, self.Primary.ClipSize) )
		self.Owner:RemoveAmmo( self.Primary.ClipSize - OldClip, self:GetPrimaryAmmoType() )
	end
	if( CurTime() > self:GetFRT() ) then
		self:SetReloading(false)
	end
end

function SWEP:WatInterruptedReloadHolster()
	self:SetFAT(CurTime())
	self:SetFRT(CurTime())
	self.FAT = CurTime()
	self:SetNextPrimaryFire(CurTime())
	self:SetReloading(false)
end


function SWEP:DrawHUD()
	self:WatDrawHUD()
end


function SWEP:Initialize()
	self:WatInitialize()
end

function SWEP:Holster()
	self:WatHolster()
	return true
end

function SWEP:Deploy()
	self:WatDeploy()
	return true
end

function SWEP:Reload()
	self:WatReload(ACT_VM_RELOAD)
end

function SWEP:OnRemove()
	self:WatOnRemove()
end

function WattleEntityRemoved(ent)
	if(CLIENT) then
		if(ent.Wattle) then
			if(ent.VElements) then
				ent:RemoveModels(ent.VElements)
			end
			if(ent.WElements) then
				ent:RemoveModels(ent.WElements)
			end
		end
	end
end
hook.Add("EntityRemoved", "WattleEntityRemoved", WattleEntityRemoved)

function SWEP:Think()
	self:WatThink()
	self:WatInterruptedReloadThink()
end

function SWEP:PrimaryAttack()
	
end

function SWEP:SecondaryAttack()
	
end

function SWEP:TranslateFOV(oldfov)
	return oldfov - self.Zoom*WatAimProg
end

function SWEP:AdjustMouseSensitivity()
	if(self:IsAiming()) then
		return 1-(-2^(-(self.Zoom*WatAimProg)/30) + 1)
	else
		return 1
	end
end

if(CLIENT) then
	function SWEP:PreDrawViewModel(vm, wep)
		if(self:IsAiming() && self.UseScope && (WatAimProg >= 1)) then
			render.ClearStencil()
			render.SetStencilEnable(true)
				
			render.SetStencilFailOperation(STENCILOPERATION_KEEP)
			render.SetStencilZFailOperation(STENCILOPERATION_KEEP)
			render.SetStencilPassOperation(STENCILOPERATION_INCR)
			render.SetStencilCompareFunction(STENCILCOMPARISONFUNCTION_NEVER)
			render.SetStencilReferenceValue(1)
		
			cam.IgnoreZ(true)
		end
	end

	function SWEP:PostDrawViewModel(vm, wep)
		if(self:IsAiming() && self.UseScope && (WatAimProg >= 1)) then
			render.SetStencilReferenceValue(1)
			render.SetStencilCompareFunction(STENCILCOMPARISONFUNCTION_EQUAL)
			render.SetStencilPassOperation(STENCILOPERATION_REPLACE)
			render.SetStencilReferenceValue(1)

			render.SetStencilEnable(false)
			cam.IgnoreZ(false)
		end
	end
end

/*
function SWEP:OnRestore()

end

function SWEP:OnRemove()

end
*/

/*
if(CLIENT || (SERVER && game.SinglePlayer())) then
	function HPFootstep(ply, pos, foot, sound, volume, filter)

	end
	hook.Add("PlayerFootstep","HPFootstep",HPFootstep)
end
*/

