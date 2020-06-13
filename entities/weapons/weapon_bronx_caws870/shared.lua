
AddCSLuaFile( "shared.lua" )

---------
SWEP.PrintName 					= "CAWS 870"
SWEP.Category 					= "Wattle Bronx"
SWEP.Base 						= "weapon_bronxbase_shotgun"
SWEP.Spawnable 					= true
SWEP.AdminOnly 					= false
SWEP.m_WeaponDeploySpeed 		= 1

SWEP.Author 					= "BFG"
SWEP.Contact 					= ""
SWEP.Purpose 					= ""
SWEP.Instructions 				= ""

SWEP.ViewModel					= "models/weapons/c_smg1.mdl"
SWEP.WorldModel					= "models/weapons/w_shotgun.mdl"
SWEP.ViewModelFlip 				= false
SWEP.ViewModelFOV 				= 56
SWEP.ShowWorldModel = false

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
SWEP.Slot 						= 2
SWEP.SlotPos 					= 1
//SWEP.WepSelection 				= 
SWEP.CSMuzzleFlashes 			= true
SWEP.CSMuzzleX 					= false

SWEP.Primary.ClipSize			= 7
SWEP.Primary.DefaultClip 		= 42
SWEP.Primary.Ammo 				= "buckshot"
SWEP.Primary.Automatic 			= false

SWEP.Secondary.ClipSize 		= -1
SWEP.Secondary.DefaultClip 		= -1
SWEP.Secondary.Ammo 			= "none"
SWEP.Secondary.Automatic 		= false
--Melee stuff
SWEP.Secondary.Damage = 15
SWEP.Secondary.Delay = .8
SWEP.Secondary.Sound = Sound("weapons/slam/throw.wav")

SWEP.UseHands 					= true
SWEP.AccurateCrosshair 			= false
---------
SWEP.HoldType 					= "shotgun"

SWEP.Primary.Damage 			= 25
SWEP.Primary.DamageFalloff		= 0.15
SWEP.Primary.Sound				= Sound("weapons/xm1014/xm1014-1.wav")
SWEP.Primary.NumShots			= 10
SWEP.Primary.Delay				= 60/110
SWEP.Primary.Cone				= 0.01
SWEP.Primary.ClumpCone			= 0.1
SWEP.Primary.Tracer				= 1
SWEP.Primary.TracerName			= "Tracer"
--SWEP.Primary.MuzzleEffects		= { "effect_wat_muzzle_flash", "effect_wat_muzzle_smoke", "effect_wat_muzzle_sparks" }

SWEP.RecoilPitchAdd 			= 16
SWEP.RecoilPitchMul 			= 0.25
SWEP.RecoilYawAdd 				= 16
SWEP.RecoilYawMul 				= 0.25

SWEP.SpreadConeAdd 				= 0.05
SWEP.SpreadRecoveryTime 		= .8
SWEP.SpreadConeAddCrouch 		= 0.0015
SWEP.SpreadRecoveryTimeCrouch 	= 0.2

SWEP.SpreadModVel 				= 0.01
SWEP.SpreadModVelMax 			= 0.05
SWEP.SpreadModInAir				= 0.0055
SWEP.SpreadModCrouch 			= 0.0002

SWEP.ReloadClipInTime			= 1.4

SWEP.VMPosOffset 				= Vector(0,-5,0)
SWEP.VMAngOffset				= Angle(0,0,0)
SWEP.SprintPos	 				= { Vector(4, 0, 3.119), Vector(1.48, 0, 3.16), Vector(2.599, 0, 2.839) }
SWEP.SprintAng					= { Angle(-14.775, 20, 0), Angle(-10.554, 0, 0), Angle(-14.664, 0, 0) }
SWEP.WalkPos 					= { Vector(-0.5,-1,-1), Vector(0,0,1), Vector(0.5,-1,-1) }
SWEP.WalkAng					= { Angle(-0.5,1,-2)*0.5, Angle(0.5,0,2)*0.5, Angle(-0.5,-1,3)*0.5 }
SWEP.InspectPos 				= { Vector(9.104, -8.75, -6.04), Vector(-9.947, -0.403, 2.441) }
SWEP.InspectAng 				= { Angle(15.173, 52.056, 0), Angle(0, 0, -27.774) }
SWEP.IronSightsPos 				= Vector(-4.724, -7.507, 0.796)
SWEP.IronSightsAng 				= Angle(-0.343, 0.043, 0)
SWEP.SwayPosDiv					= 40
SWEP.SwayAngDiv					= 15

SWEP.UseIrons					= false
SWEP.UseScope					= false
SWEP.Zoom 						= 20
SWEP.SetFATOnShoot 				= true
SWEP.CVFireAnimIroned			= false

SWEP.DTFloats 					= {}
SWEP.DTBools 					= {}
SWEP.DTInts 					= {}

SWEP.ViewModelBoneMods = {
	["ValveBiped.Bip01_R_Finger1"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-32.45, -2.733, 0) },
	["ValveBiped.base"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_UpperArm"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0.3, 0), angle = Angle(-5.081, 5.513, 0.583) },
	["ValveBiped.Bip01_L_Finger42"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 61.909, 0) },
	["ValveBiped.Bip01_L_Finger01"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, -24.421, 0) },
	["ValveBiped.Bip01"] = { scale = Vector(0.144, 0.144, 0.144), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Finger0"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-11.377, -7.797, 33.639) },
	["ValveBiped.Bip01_L_Hand"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-2.597, -67.633, -84.401) }
}
SWEP.VElements = {
	["handle+"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.base", rel = "handle", pos = Vector(0, -1.744, 0.365), angle = Angle(0, 0, 20.735), size = Vector(0.101, 0.199, 0.127), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["smoother"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.base", rel = "handle", pos = Vector(0, -4.08, 0.321), angle = Angle(0, 0, -5.264), size = Vector(0.059, 0.016, 0.326), color = Color(190, 190, 190, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["handle"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.base", rel = "", pos = Vector(0, 4.592, -2.178), angle = Angle(0, 0, 4.83), size = Vector(0.101, 0.238, 0.127), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["ironsight glow++"] = { type = "Model", model = "models/dav0r/hoverball.mdl", bone = "ValveBiped.base", rel = "ironsight back", pos = Vector(-0.685, -0.267, 12.93), angle = Angle(0, 0, 0), size = Vector(0.009, 0.009, 0.009), color = Color(0, 255, 0, 255), surpresslightning = true, material = "models/debug/debugwhite", skin = 0, bodygroup = {} },
	["rail"] = { type = "Model", model = "models/props_phx/gears/rack9.mdl", bone = "ValveBiped.base", rel = "", pos = Vector(0, 0.481, 4.321), angle = Angle(0, 0, -90.809), size = Vector(0.187, 0.112, 0.054), color = Color(85, 85, 85, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["ironsight glow"] = { type = "Model", model = "models/dav0r/hoverball.mdl", bone = "ValveBiped.base", rel = "ironsight back", pos = Vector(-0.559, 0.358, -0.105), angle = Angle(0, 0, 0), size = Vector(0.009, 0.009, 0.009), color = Color(0, 255, 0, 255), surpresslightning = true, material = "models/debug/debugwhite", skin = 0, bodygroup = {} },
	["ironsight glow+"] = { type = "Model", model = "models/dav0r/hoverball.mdl", bone = "ValveBiped.base", rel = "ironsight back", pos = Vector(-0.868, 0.356, -0.097), angle = Angle(0, 0, 0), size = Vector(0.009, 0.009, 0.009), color = Color(0, 255, 0, 255), surpresslightning = true, material = "models/debug/debugwhite", skin = 0, bodygroup = {} },
	["trigger"] = { type = "Model", model = "models/hunter/tubes/tube1x1x1.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "handle", pos = Vector(0.241, -2.162, 2.696), angle = Angle(90, 0, 0), size = Vector(0.035, 0.035, 0.009), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["body+"] = { type = "Model", model = "models/hunter/tubes/tube1x1x1c.mdl", bone = "ValveBiped.base", rel = "handle", pos = Vector(0.219, -3.335, 0.407), angle = Angle(89.963, 4.757, -4.915), size = Vector(0.034, 0.034, 0.009), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["ironsight front"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.base", rel = "handle", pos = Vector(0, -5.362, 14.355), angle = Angle(0, 0, 34.159), size = Vector(0.016, 0.1, 0.035), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["ironsight back+"] = { type = "Model", model = "models/hunter/misc/platehole1x1d.mdl", bone = "ValveBiped.base", rel = "handle", pos = Vector(-0.723, -4.847, 1.498), angle = Angle(0, 90, -3.381), size = Vector(0.026, 0.026, 0.075), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["body"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.base", rel = "handle", pos = Vector(0, -3.826, 7.664), angle = Angle(0, 0, -5.023), size = Vector(0.119, 0.159, 1.266), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["pump"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.base", rel = "handle", pos = Vector(0, -3.145, 5.547), angle = Angle(0, 0, -4.711), size = Vector(0.082, 0.082, 0.187), color = Color(195, 140, 95, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["ironsight back"] = { type = "Model", model = "models/hunter/misc/platehole1x1d.mdl", bone = "ValveBiped.base", rel = "handle", pos = Vector(0.698, -4.855, 1.498), angle = Angle(0, 0, -3.381), size = Vector(0.026, 0.026, 0.075), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} }
}
SWEP.WElements = {
	["smoother"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "handle", pos = Vector(0, -4.08, 0.321), angle = Angle(0, 0, -5.264), size = Vector(0.059, 0.016, 0.326), color = Color(190, 190, 190, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["handle"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(2.884, 1.003, 0.737), angle = Angle(0, -90.033, -103.711), size = Vector(0.101, 0.238, 0.127), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["barrel+"] = { type = "Model", model = "models/hunter/tubes/tube1x1x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "handle", pos = Vector(0, -4.094, 15.048), angle = Angle(0, 0, -5.088), size = Vector(0.016, 0.016, 0.035), color = Color(190, 190, 190, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["barrel+++"] = { type = "Model", model = "models/props_borealis/bluebarrel001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "handle", pos = Vector(0, -4.147, 15.467), angle = Angle(-1.611, 0, -6.411), size = Vector(0.024, 0.024, 0.024), color = Color(0, 0, 0, 255), surpresslightning = true, material = "models/debug/debugwhite", skin = 0, bodygroup = {} },
	["trigger"] = { type = "Model", model = "models/hunter/tubes/tube1x1x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "handle", pos = Vector(0.241, -2.162, 2.696), angle = Angle(90, 0, 0), size = Vector(0.035, 0.035, 0.009), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["pump"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "handle", pos = Vector(0, -3.145, 5.547), angle = Angle(0, 0, -4.711), size = Vector(0.082, 0.082, 0.187), color = Color(195, 140, 95, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["body"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "handle", pos = Vector(0, -3.826, 7.664), angle = Angle(0, 0, -5.023), size = Vector(0.119, 0.159, 1.266), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["handle+"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "handle", pos = Vector(0, -2.258, 0.379), angle = Angle(0, 0, 20.735), size = Vector(0.101, 0.199, 0.127), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["ironsight glow++"] = { type = "Model", model = "models/dav0r/hoverball.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "ironsight back", pos = Vector(-0.685, -0.267, 12.93), angle = Angle(0, 0, 0), size = Vector(0.009, 0.009, 0.009), color = Color(0, 255, 0, 255), surpresslightning = true, material = "models/debug/debugwhite", skin = 0, bodygroup = {} },
	["ironsight glow+"] = { type = "Model", model = "models/dav0r/hoverball.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "ironsight back", pos = Vector(-0.868, 0.356, -0.097), angle = Angle(0, 0, 0), size = Vector(0.009, 0.009, 0.009), color = Color(0, 255, 0, 255), surpresslightning = true, material = "models/debug/debugwhite", skin = 0, bodygroup = {} },
	["ironsight front"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "handle", pos = Vector(0, -5.362, 14.355), angle = Angle(0, 0, 34.159), size = Vector(0.016, 0.1, 0.035), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["barrel"] = { type = "Model", model = "models/hunter/tubes/tube1x1x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "handle", pos = Vector(0, -4.816, 14.984), angle = Angle(0, 0, -5.088), size = Vector(0.016, 0.016, 0.035), color = Color(190, 190, 190, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["body+"] = { type = "Model", model = "models/hunter/tubes/tube1x1x1c.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "handle", pos = Vector(0.219, -3.335, 0.407), angle = Angle(89.963, 4.757, -4.915), size = Vector(0.034, 0.034, 0.009), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["ironsight back+"] = { type = "Model", model = "models/hunter/misc/platehole1x1d.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "handle", pos = Vector(-0.723, -4.847, 1.498), angle = Angle(0, 90, -3.381), size = Vector(0.026, 0.026, 0.075), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["ironsight glow"] = { type = "Model", model = "models/dav0r/hoverball.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "ironsight back", pos = Vector(-0.559, 0.358, -0.105), angle = Angle(0, 0, 0), size = Vector(0.009, 0.009, 0.009), color = Color(0, 255, 0, 255), surpresslightning = true, material = "models/debug/debugwhite", skin = 0, bodygroup = {} },
	["barrel++"] = { type = "Model", model = "models/props_borealis/bluebarrel001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "handle", pos = Vector(0, -4.868, 15.467), angle = Angle(-1.611, 0, -6.411), size = Vector(0.024, 0.024, 0.024), color = Color(0, 0, 0, 255), surpresslightning = true, material = "models/debug/debugwhite", skin = 0, bodygroup = {} },
	["ironsight back"] = { type = "Model", model = "models/hunter/misc/platehole1x1d.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "handle", pos = Vector(0.698, -4.855, 1.498), angle = Angle(0, 0, -3.381), size = Vector(0.026, 0.026, 0.075), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} }
}


/*---------------------------------------------------------
   Name: SWEP:Reload( )
   Desc: Reload is being pressed
---------------------------------------------------------*/
function SWEP:Reload()
	if self.Owner == nil then return false; end
	
	// are we reloading?
	if self:GetReloading() then return false; end
	
	if(self.Owner:KeyDown(IN_ATTACK)) then return end
	
	if self:GetFRT() + 1 > CurTime() then return false end
	
	if self.Owner:GetAmmoCount( self.Primary.Ammo ) <= 0 then return false end	// YOU REQUIRE MORE VESPENE GAS
	if self.Weapon:Clip1() >= self.Primary.ClipSize then return false end // TOO MUCH VESPENE GAS

	--self.Weapon:SendWeaponAnim( ACT_SHOTGUN_RELOAD_START )
	self.Weapon:SendWeaponAnim( ACT_VM_RELOAD )

	self.Owner:SetAnimation( PLAYER_RELOAD )
	self:GetOwner():GetViewModel():SetPlaybackRate(1)
	// Make shotgun shell visible
	self.Weapon:SetBodygroup(1,0)
	
//	self.Weapon:SetNextPrimaryFire(CurTime() + self.Weapon:SequenceDuration() )
	
	self:SetFRT(CurTime() + self.Weapon:SequenceDuration()/3)
	self:SetFAT(CurTime() + self.Weapon:SequenceDuration()/3)
	self.FAT = (CurTime() + self.Weapon:SequenceDuration()/3)
	if(CLIENT) then
		self.FRT = (CurTime() + LocalPlayer():GetViewModel():SequenceDuration()/2 - LocalPlayer():Ping()/1000)
	end
	self:SetReloading(true)
	return true
end


function SWEP:ReloadShell()

	// Add them to the clip
	self:SetClip1( self:Clip1() + 1 )
	self.Owner:RemoveAmmo( 1, self.Primary.Ammo  )
	
	// Play reload on different channel as otherwise steals channel away from fire sound
//	WeaponSound(RELOAD);
	self:EmitSound("weapons/shotgun/shotgun_reload1.wav")
	self.Weapon:SendWeaponAnim( ACT_VM_RELOAD );
	self:GetOwner():GetViewModel():SetPlaybackRate(2)
	
	self:SetFRT(CurTime() + self.Weapon:SequenceDuration()/3)
	self:SetFAT(CurTime() + self.Weapon:SequenceDuration()/3)
	self.FAT = (CurTime() + self.Weapon:SequenceDuration()/3)
	if(CLIENT) then
		self.FRT = (CurTime() + LocalPlayer():GetViewModel():SequenceDuration() - LocalPlayer():Ping()/1000)
	end
	
end

function SWEP:FinishReload()
//	MsgN( IsFirstTimePredicted() , "\t", "FinishReload")
	
	// Make shotgun shell invisible
	self.Weapon:SetBodygroup(1,1)
	self:SetReloading(false)

	// Finish reload animation
	--self.Weapon:SendWeaponAnim( ACT_SHOTGUN_RELOAD_FINISH )
	
	self:SetFRT(CurTime() + self.Weapon:SequenceDuration())
	self:SetFAT(CurTime() + self.Weapon:SequenceDuration())
	if(CLIENT) then
		self.FRT = (CurTime() + LocalPlayer():GetViewModel():SequenceDuration() - LocalPlayer():Ping()/1000)
	end
end
