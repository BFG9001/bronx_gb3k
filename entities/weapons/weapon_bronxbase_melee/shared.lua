
AddCSLuaFile( "shared.lua" )

---------
SWEP.PrintName 					= "Melee Base"
SWEP.Category 					= "Wattle Bronx"
SWEP.Base 						= "weapon_bronxbase"
SWEP.Spawnable 					= false
SWEP.AdminOnly 					= false
SWEP.m_WeaponDeploySpeed 		= 1

SWEP.Author 					= "BFG"
SWEP.Contact 					= ""
SWEP.Purpose 					= ""
SWEP.Instructions 				= ""

SWEP.ViewModel					= "models/weapons/c_crowbar.mdl"
SWEP.WorldModel					= "models/weapons/w_crowbar.mdl"
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
//SWEP.RenderGroup 				= 
SWEP.Slot 						= 1
SWEP.SlotPos 					= 1
//SWEP.WepSelection 				= 
SWEP.CSMuzzleFlashes 			= true
SWEP.CSMuzzleX 					= false

SWEP.Primary.ClipSize			= -1
SWEP.Primary.DefaultClip 		= -1
SWEP.Primary.Ammo 				= "none"
SWEP.Primary.Automatic 			= true

SWEP.Secondary.ClipSize 		= -1
SWEP.Secondary.DefaultClip 		= -1
SWEP.Secondary.Ammo 			= "none"
SWEP.Secondary.Automatic 		= false
--Melee stuff
SWEP.Secondary.Damage = 20
SWEP.Secondary.Delay = .8


SWEP.UseHands 					= true
SWEP.AccurateCrosshair 			= false
---------
SWEP.HoldType = "melee2"

SWEP.Primary.Damage 			= 50
SWEP.Primary.DamageFalloff		= 0.02
SWEP.Primary.Sound				= Sound("weapons/slam/throw.wav")
SWEP.Primary.NumShots			= 1
SWEP.Primary.Delay				= 1
SWEP.Primary.Cone				= 0.01
SWEP.Primary.ClumpCone			= 0
SWEP.Primary.Tracer				= 0
SWEP.Primary.TracerName			= "Tracer"
--SWEP.Primary.MuzzleEffects		= { "effect_wat_muzzle_flash", "effect_wat_muzzle_smoke", "effect_wat_muzzle_sparks" }

SWEP.RecoilPitchAdd 			= 0.2
SWEP.RecoilPitchMul 			= 0.1
SWEP.RecoilYawAdd 				= 0.2
SWEP.RecoilYawMul 				= 0.025

SWEP.SpreadConeAdd 				= 0.015
SWEP.SpreadRecoveryTime 		= 0.3
SWEP.SpreadConeAddCrouch 		= 0.0015
SWEP.SpreadRecoveryTimeCrouch 	= 0.2

SWEP.SpreadModVel 				= 0.01
SWEP.SpreadModVelMax 			= 0.0001
SWEP.SpreadModInAir				= 0.03
SWEP.SpreadModCrouch 			= 0.0002

SWEP.ReloadClipInTime			= 1


SWEP.VMPosOffset 				= Vector(5,5,-1.25)
SWEP.VMAngOffset				= Angle(0,0,0)
SWEP.SprintPos	 				= { Vector(4, 0, 3.119), Vector(1.48, 0, 3.16), Vector(2.599, 0, 2.839) }
SWEP.SprintAng					= { Angle(-14.775, 0, 0), Angle(-10.554, -9.146, 0), Angle(-14.664, -9.146, 0) }
SWEP.WalkPos 					= { Vector(-0.5,0,0), Vector(0,0,0.5), Vector(0.5,0,0) }
SWEP.WalkAng					= { Angle(-0.5,-0.5,-1), Angle(0.5,0,0), Angle(-0.5,0.5,0.5) }
SWEP.InspectPos 				= { Vector(12.229, -7.091, -5.801), Vector(0.36, -4.553, -11.716) }
SWEP.InspectAng 				= { Angle(28.993, 44.664, 18.545), Angle(38.395, 0, 0) }
SWEP.IronSightsPos 				= Vector(4.599, 0, 2.279)
SWEP.IronSightsAng 				= Angle(-0.017, 0, 0)
SWEP.SwayPosDiv					= 35
SWEP.SwayAngDiv					= 12

SWEP.UseIrons					= false
SWEP.UseScope					= false
SWEP.Zoom 						= 20
SWEP.SetFATOnShoot 				= false
SWEP.CVFireAnimIroned			= false

SWEP.DTFloats 					= {}
SWEP.DTBools 					= {}
SWEP.DTInts 					= {}

SWEP.ViewModelBoneMods = {}
SWEP.VElements = {}
SWEP.WElements = {}


SWEP.MeleeWepStunChancePercent = 10
SWEP.HitSound = Sound("weapons/crowbar/crowbar_impact1.wav")

function SWEP:Reload()
end

function SWEP:CanPrimaryAttack()
	return true
end

function SWEP:PrimaryAttack() --Melee attack
	--if(self.Owner:KeyDown(IN_USE)) then return end --Weapon inspection
	self:SetNextSecondaryFire(CurTime() + self.Primary.Delay)
	self:SetNextPrimaryFire(CurTime() + self.Primary.Delay)
	--self:SetLMT(CurTime())
	self:SetFAT(CurTime() + self.Primary.Delay)
	self.FAT = CurTime() + self.Primary.Delay
	self:EmitSound(self.Primary.Sound)
	self:SendWeaponAnim(self.MeleeAnimEnum or ACT_VM_MISSCENTER)
	--print("rip")
	self:GetOwner():LagCompensation(true)
	self:StrongMeleeAttack()
	self:GetOwner():LagCompensation(false)
end

function SWEP:StrongMeleeAttack()
	self:GetOwner():SetAnimation(PLAYER_ATTACK1)

	timer.Simple( .33, function() if not IsValid(self) then return end self:SetHoldType(self.HoldType) end)

	--if SERVER then
		local radius = 25
		local origin = self:GetOwner():GetShootPos() + (self:GetOwner():EyeAngles():Forward() * (radius - 3))
		local targets = ents.FindInSphere( origin, radius )
		table.RemoveByValue( targets, self:GetOwner() )

		local tr = self:GetOwner():GetEyeTrace()
			if tr.HitPos:Distance(self:GetOwner():GetShootPos()) < 64 then
				if tr.Entity == game.GetWorld() then 
					if SERVER then 
						self:GetOwner():EmitSound(self.HitSound) 
					end 
					local fx = EffectData() 
					fx:SetOrigin(tr.HitPos) 
					util.Effect("effect_bronx_powspark", fx) end
			end

		local dmginfo = DamageInfo()
			dmginfo:SetAttacker(self:GetOwner())
			dmginfo:SetInflictor(self)
			dmginfo:SetDamage(self.Primary.Damage)
			dmginfo:SetDamageType(DMG_CLUB)
			dmginfo:SetDamageForce( self:GetOwner():GetAimVector() * 1000 )

		for k, v in pairs( targets ) do
			if v:IsWeapon() then continue end
			if IsValid(v) and v.IsBronxCitizen and SERVER then
				local stunRandom = math.random(1, 100)
				if stunRandom <= self.MeleeWepStunChancePercent then
					v:BronxMeleeStun()
				end
			end
			if IsValid(v) then 
				if SERVER then v:EmitSound(self.HitSound) end
				local trace = util.TraceHull({start = self:GetOwner():GetShootPos(), endpos = v:LocalToWorld(v:OBBCenter()), filter = function(ent) if ent == v then return true end end})
					local fx = EffectData()
						fx:SetOrigin(trace.HitPos + Vector(0,0,16))
						util.Effect("effect_bronx_powspark", fx)
			end
			if SERVER then v:TakeDamageInfo(dmginfo) end
		end
	--end --if SERVER then
end