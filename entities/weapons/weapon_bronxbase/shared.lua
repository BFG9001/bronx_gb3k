AddCSLuaFile( "shared.lua" )

SWEP.Wattle 					= true
---------
SWEP.PrintName 					= "Wattle Base Bronx Edition"
SWEP.Category 					= "Wattle Bronx"
SWEP.Base 						= "weapon_wattlebase"
SWEP.Spawnable 					= false
SWEP.AdminOnly 					= false
SWEP.m_WeaponDeploySpeed 		= 1

SWEP.Author 					= "BFG"
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
SWEP.Primary.DamageFalloff		= 0.02
SWEP.Primary.Sound				= ""
SWEP.Primary.NumShots			= 1
SWEP.Primary.Delay				= 1
SWEP.Primary.Cone				= 0.01
SWEP.Primary.ClumpCone			= 0
SWEP.Primary.Tracer				= 0
SWEP.Primary.TracerName			= "Tracer"
SWEP.Primary.MuzzleEffects		= { "effect_bronx_muzzleflash", "effect_wat_muzzle_smoke", "effect_wat_muzzle_sparks" }

--Melee stuff
SWEP.Secondary.Damage = 15
SWEP.Secondary.Delay = .85
SWEP.Secondary.Sound = Sound("weapons/slam/throw.wav")

SWEP.RecoilPitchAdd 			= 1.2
SWEP.RecoilPitchMul 			= 0.2
SWEP.RecoilYawAdd 				= 0.5
SWEP.RecoilYawMul 				= 0.05

SWEP.SpreadConeAdd 				= 0.0025
SWEP.SpreadRecoveryTime 		= 0.3
SWEP.SpreadConeAddCrouch 		= 0.0015
SWEP.SpreadRecoveryTimeCrouch 	= 0.2

SWEP.SpreadModVel 				= 0.0002
SWEP.SpreadModVelMax 			= 0.0002
SWEP.SpreadModInAir				= 0.03
SWEP.SpreadModCrouch 			= 0.0002

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

SWEP.DTFloats = {
	"LMT" //Last Melee Time
}
SWEP.DTBools = {}
SWEP.DTInts = {}

SWEP.ViewModelBoneMods = {}
SWEP.VElements = {}
SWEP.WElements = {}

SWEP.MeleePos = { Vector(0,0,0), Vector(4.215, -7.862, -9.079), Vector(4.215, -7.862, 3.246) }
SWEP.MeleeAng = { Angle(0,0,0), Angle(28.361, 33.673, -1.783), Angle(-14.16, 70, -1.783) }

function SWEP:SecondaryAttack() --Melee attack
	if(self.Owner:KeyDown(IN_USE)) then return end --Weapon inspection
	self:SetNextSecondaryFire(CurTime() + self.Secondary.Delay)
	self:SetNextPrimaryFire(CurTime() + self.Secondary.Delay * (3/5))
	self:SetLMT(CurTime())
	self:SetFAT(CurTime() + self.Secondary.Delay)
	self.FAT = CurTime() + self.Secondary.Delay
	self:EmitSound(self.Secondary.Sound)
	--print("rip")
	self:GetOwner():LagCompensation(true)
	self:MeleeAttack()
	self:GetOwner():LagCompensation(false)
end

local meleeBlacklist = {
	--CLuaEffect = true,
	--C_BaseFlex = true,
	viewmodel = true,
	gmod_hands = true
}
function SWEP:MeleeAttack()
	--if CLIENT and not IsFirstTimePredicted() then return end
	self:GetOwner():ViewPunch( Angle( 3, 3, 15) )
	self:SetHoldType("melee2")
	self:GetOwner():SetAnimation(PLAYER_ATTACK1)
	--self:GetOwner():SetSequence(364)

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
						self:GetOwner():EmitSound("physics/body/body_medium_impact_hard" .. math.random(1,6) .. ".wav") 
					end 
					local fx = EffectData() 
					fx:SetOrigin(tr.HitPos) 
					util.Effect("effect_bronx_meleeimpact", fx) end
			end

		local dmginfo = DamageInfo()
			dmginfo:SetAttacker(self:GetOwner())
			dmginfo:SetInflictor(self)
			dmginfo:SetDamage(self.Secondary.Damage)
			dmginfo:SetDamageType(DMG_CLUB)
			dmginfo:SetDamageForce( self:GetOwner():GetAimVector() * 420 )

		for k, v in pairs( targets ) do
			--print(v:GetClass())
			if v:IsWeapon() or meleeBlacklist[v:GetClass()] or (v:EntIndex() < 0) then continue end --For some reason Clientside-only effects count as entities. 
				--Using Classnames to identify Clientside models doesn't work. But I just figured out that you CAN identify them by the commonality that their Entity Indices are all -1.
			--print(v)
			if IsValid(v) and v.IsBronxCitizen and SERVER then
				v:BronxMeleeStun()
				--v:SetVelocity(self:GetOwner():GetAimVector() * 500)
			end
			if IsValid(v) then 
				if SERVER then v:EmitSound("physics/body/body_medium_impact_hard" .. math.random(1,6) .. ".wav") end
				local trace = util.TraceHull({start = self:GetOwner():GetShootPos(), endpos = v:LocalToWorld(v:OBBCenter()), filter = function(ent) if ent == v then return true end end})
					local fx = EffectData()
						fx:SetOrigin(trace.HitPos + Vector(0,0,16))
						util.Effect("effect_bronx_meleeimpact", fx)
			end
			if SERVER then v:TakeDamageInfo(dmginfo) end
		end
	--end --if SERVER then
end


--Animation stuff
SWEP.MeleeOldLMT = 0
SWEP.meleeviewmodel = {}
SWEP.meleeviewmodel.origin = Vector(0,0,0)
SWEP.meleeviewmodel.angles = Angle(0,0,0)
function SWEP:WatViewModelCalcViewMelee( ply, origin, angles, fov )
	/*
	if(ply:KeyPressed(IN_ATTACK2) && self.MeleeOldLMT < self:GetLMT()) then

		--self.meleeviewmodel.origin = Bezier(self.MeleePos[1], self.MeleePos[2], self.MeleePos[3], 1)
		--self.meleeviewmodel.angles = Bezier(self.MeleeAng[1], self.MeleeAng[2], self.MeleeAng[3], 1)
		self.MeleeOldLMT = self:GetLMT()
	end
	*/
	local MeleeAnimProg = (CurTime()+(ply:Ping()/1000) - self:GetLMT())/(self.Secondary.Delay*0.25)
	if(MeleeAnimProg <= 1) then
		self.meleeviewmodel.origin = Bezier(self.MeleePos[1], self.MeleePos[2], self.MeleePos[3], MeleeAnimProg)
		self.meleeviewmodel.angles = Bezier(self.MeleeAng[1], self.MeleeAng[2], self.MeleeAng[3], MeleeAnimProg)
	else
		self.meleeviewmodel.origin = SmoothApproachVector(self.meleeviewmodel.origin, Vector(0,0,0), FrameTime()*5)
		self.meleeviewmodel.angles = SmoothApproachAngle(self.meleeviewmodel.angles, Angle(0,0,0), FrameTime()*5)
	end
	
	--self.cvfaiviewmodel.origin.y = SmoothApproach(self.cvfaiviewmodel.origin.y, 0, FrameTime()*10)
	
	return self.meleeviewmodel
end


//Replaceable per weapon
function SWEP:WatViewModelCalcView( ply, origin, angles, fov )
	//different targviewmodels, modules
	local base = self:WatViewModelCalcViewBase( ply, origin, angles, fov )
	local inspect = self:WatViewModelCalcViewInspect( ply, origin, angles, fov )
	local sway = self:WatViewModelCalcViewSway( ply, origin, angles, fov )
	local cvfai = self:WatViewModelCalcViewFireAnimIroned( ply, origin, angles, fov )
	local melee = self:WatViewModelCalcViewMelee( ply, origin, angles, fov )
	
	local viewmodel = {}
	viewmodel.origin = base.origin + inspect.origin + sway.origin + cvfai.origin + melee.origin
	viewmodel.angles = base.angles + inspect.angles + sway.angles + cvfai.angles + melee.angles
	
	return viewmodel
end
