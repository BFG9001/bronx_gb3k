
AddCSLuaFile( "shared.lua" )

SWEP.Wattle 					= true
---------
SWEP.PrintName 					= "Wattle Bronx Bullet Base"
SWEP.Category 					= "Wattle"
SWEP.Base 						= "weapon_wattlebase_bronx"
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
SWEP.Primary.DamageFalloff		= 0.02
SWEP.Primary.Sound				= ""
SWEP.Primary.NumShots			= 1
SWEP.Primary.Delay				= 1
SWEP.Primary.Cone				= 0.01
SWEP.Primary.ClumpCone			= 0
SWEP.Primary.Tracer				= 0
SWEP.Primary.TracerName			= "Tracer"
SWEP.Primary.MuzzleEffects		= { "effect_bronx_muzzleflash", "effect_wat_muzzle_smoke", "effect_wat_muzzle_sparks" }

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

SWEP.DTFloats = {}
SWEP.DTBools = {}
SWEP.DTInts = {}

SWEP.ViewModelBoneMods = {}
SWEP.VElements = {}
SWEP.WElements = {}

--[[
/*old
SWEP.RecoilPitchAdditive = 0.5
SWEP.RecoilVPPitchMul = 0.5
SWEP.RecoilTotPitchAdditiveMax = 3
SWEP.RecoilPitchMax = 10
SWEP.RecoilYawAdditive = 2
SWEP.RecoilYawMax = 3
*/
/*high recoil
SWEP.RecoilPitchAdditive = 1
SWEP.RecoilVPPitchMul = 0.2
SWEP.RecoilTotPitchAdditiveMax = 3
SWEP.RecoilPitchMax = 30
SWEP.RecoilYawAdditive = 0.5
SWEP.RecoilYawPitchMul = 1
SWEP.RecoilYawAdditiveMax = 1
SWEP.RecoilYawMax = 6
*/
/*Norecoil
SWEP.RecoilPitchAdditive = 1
SWEP.RecoilVPPitchMul = 0.2
SWEP.RecoilTotPitchAdditiveMax = 3
SWEP.RecoilPitchMax = 0
SWEP.RecoilYawAdditive = 0.5
SWEP.RecoilYawPitchMul = 1
SWEP.RecoilYawAdditiveMax = 1
SWEP.RecoilYawMax = 0
*/
/*usable
SWEP.RecoilPitchAdditive = 1
SWEP.RecoilVPPitchMul = 0.1
SWEP.RecoilTotPitchAdditiveMax = 3
SWEP.RecoilPitchMax = 30
SWEP.RecoilYawAdditive = 0.5
SWEP.RecoilYawPitchMul = 1
SWEP.RecoilYawAdditiveMax = 1
SWEP.RecoilYawMax = 6
*/
]]--
//For clientside only :v
function SWEP:CalculateCone()
	local recTime
	local ply = self.Owner
	if(!self:IsCrouching()) then
		recTime = self.SpreadRecoveryTime
	else
		recTime = self.SpreadRecoveryTimeCrouch
	end
	
	local cone = math.Clamp( self:GetCone() * math.exp( -(CurTime() + (ply:Ping()/1000) - self:GetLST()) / ( math.log10(math.exp(1)) * recTime ) ), self.Primary.Cone, 1000 )
	return cone
end

local DefaultSpeed = 250
function SWEP:SpreadMovementAdditive()
	local ply = self.Owner
	if(!IsValid(ply)) then return end
	if(!ply:IsPlayer()) then return 0 end
	if(ply:InVehicle()) then return 0 end
	
	local AirMod
	local VelMod
	
	if(!ply:OnGround()) then
		AirMod = self.SpreadModInAir
	else
		AirMod = 0
	end
	
	local xyvel = ply:GetVelocity()
	xyvel.z = 0
	local xyspeed = xyvel:Length()/DefaultSpeed
	VelMod = math.Clamp(xyspeed * self.SpreadModVel, 0, self.SpreadModVel)
	
	return VelMod + AirMod
end

function SWEP:Recoil()
	math.randomseed(CurTime())
	
//	local PunchAng = self.Owner:GetViewPunchAngles() + Angle(math.Clamp(math.Clamp(self.Owner:GetViewPunchAngles().pitch*self.RecoilVPPitchMul,self.Owner:GetViewPunchAngles().pitch*self.RecoilVPPitchMul, 0)-self.RecoilPitchAdditive, -self.RecoilTotPitchAdditiveMax, 0),math.Rand(-self.RecoilYawAdditive*self.Owner:GetViewPunchAngles().pitch*self.RecoilYawPitchMul,self.RecoilYawAdditive*self.Owner:GetViewPunchAngles().pitch*self.RecoilYawPitchMul),math.Rand(-0.25,0.25))
//	PunchAng.pitch = math.Clamp(PunchAng.pitch, -self.RecoilPitchMax,0)
//	PunchAng.yaw = math.Clamp(PunchAng.yaw, -self.RecoilYawMax, self.RecoilYawMax)
	local vpang = self.Owner:GetViewPunchAngles()
	local ppitch = self.RecoilPitchAdd - vpang.pitch*self.RecoilPitchMul
	local pyaw = self.RecoilYawAdd + math.abs(vpang.pitch^2)*self.RecoilYawMul
	local proll = math.Rand(-0.25,0.25)
	local PunchAng = self.Owner:GetViewPunchAngles() + Angle(-ppitch, math.Rand(-pyaw, pyaw), proll)
	
	if(self:IsAiming()) then
		PunchAng = PunchAng * 0.9
	end
	
	self.Owner:ViewPunchReset()
	self.Owner:SetViewPunchAngles(PunchAng)
end

function SWEP:OnPrimaryAttack()

end

function SWEP:PrimaryAttack()
	if(!IsValid(self)) then return end
	if ( !self:CanPrimaryAttack() && self.Owner:IsPlayer() ) then return end
	if ( self:GetReloading() ) then return end
	if ( self:IsSprinting() ) then return end
	
	if(self.Owner:IsPlayer()) then
		self:SetNextSecondaryFire( CurTime() + self.Primary.Delay )
		self:SetNextPrimaryFire( CurTime() + self.Primary.Delay )
	end
	
	if ( self.Owner:IsNPC() ) then return end
	
	self:OnPrimaryAttack()
	
	local recTime
	local coneAdd
	/*
	if(!self:IsCrouching()) then
		recTime = self.SpreadRecoveryTime
		coneAdd = self.SpreadConeAdd
	else
		recTime = self.SpreadRecoveryTimeCrouch
		coneAdd = self.SpreadConeAddCrouch
	end
	*/
	
	recTime = self.SpreadRecoveryTime
	coneAdd = self.SpreadConeAdd
	
	self:SetCone( math.Clamp( self:GetCone() * math.exp( -(CurTime() - self:GetLST()) / ( math.log10(math.exp(1)) * recTime ) ), self.Primary.Cone, 1000 ) )

	self:WatShootBullet( self.Primary.Damage, self.Primary.Recoil, self.Primary.NumShots, self:GetCone() + self:SpreadMovementAdditive() )

	self:SetCone(self:GetCone() + coneAdd)
	
	self:TakePrimaryAmmo( 1 )

	self:Recoil()
	
	self:ShootEffects()
	
	if(self.SetFATOnShoot) then
		//self:SetFAT(CurTime() + self.Owner:GetViewModel():SequenceDuration())
		//self.FAT = CurTime() + self.Owner:GetViewModel():SequenceDuration()\
		self:SetFAT(CurTime() + self.Primary.Delay)
		self.FAT = CurTime() + self.Primary.Delay
	end
	
	self:SetLST( CurTime() )
end

function SWEP:WatDrawCrosshair(alpha)
	local ply = LocalPlayer()

	local hitpos = (ply:GetShootPos() + (ply:GetAimVector():Angle() + ply:GetViewPunchAngles()*(WatRecoilTrack)):Forward()*10000)
	
	local coords = hitpos:ToScreen()
	
	local x = coords.x
	local y = coords.y
	/*
	self.DynCone = math.Clamp( self:GetCone() * math.exp( -(CurTime() - self:GetLST()) / ( self.RecoveryTime ) ), self.Primary.Cone, 1000 )
	
	if(CrOldLST != self:GetLST()) then
//		self.DynCone = self:GetCone()
//		print("Synced!")
		self.DynCone = self.DynCone + self.ConeAdd
		CrOldLST = self:GetLST()
	end
	*/
	gap = (self:CalculateCone() + self:SpreadMovementAdditive())*ScrW()
	
	length = 10

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

function SWEP:WatShootBullet( dmg, recoil, numbul, cone )
	numbul 		= numbul 	or 1
	cone 		= cone 		or 0.01
	
	ply = self.Owner
	if(!self.Owner:IsNPC()) then
		math.randomseed(CurTime())
	end
	local dir = Vector(0,0,0)
	if(ply:IsPlayer()) then
		dir = (self.Owner:GetAimVector():Angle() + self.Owner:GetViewPunchAngles()):Forward() + Vector(math.Rand(-cone, cone), math.Rand(-cone, cone), math.Rand(-cone, cone))
	else
		dir = ply:GetAimVector()
	end

	local bullet = {}
	bullet.Num 			= numbul
	bullet.Src 			= self.Owner:GetShootPos()			// Source
	bullet.Dir 			= dir
	bullet.Spread 		= Vector( self.Primary.ClumpCone or 0, self.Primary.ClumpCone or 0, 0 )			// Aim Cone
	bullet.Tracer		= self.Primary.Tracer or 1									// Show a tracer on every x bullets 
	bullet.TracerName 	= self.Primary.TracerName
	bullet.Force 		= 500
	bullet.Damage		= dmg
	bullet.Callback = function(attacker, trace, dmginfo)
		local distance = trace.StartPos:Distance(trace.HitPos)
		local damage = math.Clamp(dmg-math.sqrt(self.Primary.DamageFalloff*distance), 0, dmg)
		debugoverlay.Line( trace.StartPos, trace.HitPos, 10, Color(0,255,0,255), true )
		debugoverlay.Text( trace.HitPos, "Dmg: "..damage, 10)
		/*
		if ((CLIENT) || game.SinglePlayer()) then
			if(WattleCVar["wat_cl_developer"]) then
				print("Distance: "..trace.StartPos:Distance(trace.HitPos) )
				print("Damage: "..damage)
			end
		end
		*/
		dmginfo:SetDamage(damage)
	end
	
	if( self.Owner:IsPlayer()) then
		if(IsFirstTimePredicted()) then 
			self.Owner:LagCompensation( true )
			self.Owner:FireBullets( bullet )
			self.Owner:LagCompensation( false )
		end
	else 
		self.Owner:FireBullets( bullet )
	end
end

function SWEP:WatMuzzleEffects()
	if(self.Primary.MuzzleEffects) then
		for i = 1, #self.Primary.MuzzleEffects do
			//print(self.Primary.MuzzleEffects[i])
			local effectdata = EffectData()
				effectdata:SetOrigin(self.Owner:GetShootPos())
				effectdata:SetEntity(self.Owner)
				effectdata:SetStart(self.Owner:GetShootPos())
				effectdata:SetNormal(self.Owner:GetAimVector())
				effectdata:SetAttachment(self:SearchForMuzzleAttachment())
			util.Effect(self.Primary.MuzzleEffects[i], effectdata)
		end
		//util.Effect("effect_awccs_muzzleflash", effectdata)
	end
	local effectdata = EffectData()
		effectdata:SetOrigin(self.Owner:GetShootPos())
		effectdata:SetEntity(self.Owner)
		effectdata:SetStart(self.Owner:GetShootPos())
		effectdata:SetNormal(self.Owner:GetAimVector())
		effectdata:SetAttachment(2)
	util.Effect("effect_wat_ejectport_smoke", effectdata)
end

function SWEP:ShootEffects()
	if(!self.CVFireAnimIroned || (self.CVFireAnimIroned && !self:IsAiming())) then
		self.Weapon:SendWeaponAnim( ACT_VM_PRIMARYATTACK ) -- View model animation
	end
//	self.Owner:MuzzleFlash() -- Crappy muzzle light
	self.Owner:SetAnimation( PLAYER_ATTACK1 ) -- 3rd Person Animation
	
	self.Weapon:EmitSound( self.Primary.Sound )
		
	if(!IsFirstTimePredicted()) then return end
	self:WatMuzzleEffects()
	
end

function SWEP:DoImpactEffect( tr, nDamageType )

	if ( tr.HitSky ) then return end

	local effectdata = EffectData()
	effectdata:SetOrigin( tr.HitPos + tr.HitNormal )
	effectdata:SetStart( tr.HitPos + tr.HitNormal )
	effectdata:SetNormal( tr.HitNormal )
	--util.Effect( "effect_wat_hit_spark", effectdata )
	util.Effect( "effect_bronx_powspark", effectdata )

end

function SWEP:FireAnimationEvent( pos, ang, event, options )
	return (event==5001)
end

