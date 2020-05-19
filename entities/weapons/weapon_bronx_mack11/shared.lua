
AddCSLuaFile( "shared.lua" )

---------
SWEP.PrintName 					= "Mack-11"
SWEP.Category 					= "Wattle Bronx"
SWEP.Base 						= "weapon_bronxbase_bullet"
SWEP.Spawnable 					= true
SWEP.AdminOnly 					= false
SWEP.m_WeaponDeploySpeed 		= 1

SWEP.Author 					= "Spastik"
SWEP.Contact 					= ""
SWEP.Purpose 					= ""
SWEP.Instructions 				= ""

SWEP.ViewModel					= "models/weapons/c_pistol.mdl"
SWEP.WorldModel					= "models/weapons/w_pistol.mdl"
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
SWEP.Slot 						= 2
SWEP.SlotPos 					= 1
//SWEP.WepSelection 				= 
SWEP.CSMuzzleFlashes 			= true
SWEP.CSMuzzleX 					= false

SWEP.Primary.ClipSize			= 32
SWEP.Primary.DefaultClip 		= 120
SWEP.Primary.Ammo 				= "pistol"
SWEP.Primary.Automatic 			= true

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
SWEP.HoldType = "smg"

SWEP.Primary.Damage 			= 21
SWEP.Primary.DamageFalloff		= 0.02
SWEP.Primary.Sound				= Sound("Weapon_MP5Navy.Single")
SWEP.Primary.NumShots			= 1
SWEP.Primary.Delay				= 60/1000
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
SWEP.SprintAng					= { Angle(-14.775, 20, 0), Angle(-5, 0, 0), Angle(-14.664, 0, 0) }
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

SWEP.ViewModelBoneMods = {
	["ValveBiped.square"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.clip"] = { scale = Vector(1, 1, 1), pos = Vector(-0.635, 0, 2.857), angle = Angle(0, 0, 0) },
	["ValveBiped.hammer"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
}
SWEP.VElements = {
	["stockpipe"] = { type = "Model", model = "models/props_lab/pipesystem02e.mdl", bone = "ValveBiped.base", rel = "backpart", pos = Vector(1, 0, -0.601), angle = Angle(90, 0, -3.069), size = Vector(0.151, 0.264, 0.151), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["slide"] = { type = "Model", model = "models/props_interiors/refrigeratorDoor02a.mdl", bone = "ValveBiped.base", rel = "body", pos = Vector(-1, -1.364, 1), angle = Angle(0, 180, 180), size = Vector(0.094, 0.094, 0.094), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["backsight"] = { type = "Model", model = "models/props_c17/streetsign005c.mdl", bone = "ValveBiped.base", rel = "body", pos = Vector(0, -5.301, 2.299), angle = Angle(0, 0, 0), size = Vector(0.072, 0.209, 0.037), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/metal", skin = 0, bodygroup = {} },
	["stockpipe++"] = { type = "Model", model = "models/props_lab/pipesystem02e.mdl", bone = "ValveBiped.base", rel = "stockpipe", pos = Vector(0.36, 2.273, -1.364), angle = Angle(-91.024, 90, 0), size = Vector(0.151, 0.151, 0.151), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["spin"] = { type = "Model", model = "models/props_vehicles/carparts_wheel01a.mdl", bone = "ValveBiped.square", rel = "", pos = Vector(0, -1.3, 2.5), angle = Angle(0, 0, 0), size = Vector(0.037, 0.037, 0.037), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["stockpipe+++"] = { type = "Model", model = "models/props_lab/pipesystem02e.mdl", bone = "ValveBiped.base", rel = "stockpipe", pos = Vector(0.839, 2.273, -1.364), angle = Angle(88.976, 90, 180), size = Vector(0.151, 0.151, 0.151), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["backpart"] = { type = "Model", model = "models/props_interiors/VendingMachineSoda01a.mdl", bone = "ValveBiped.base", rel = "body", pos = Vector(0, -5.25, 0.449), angle = Angle(90, 180, 180), size = Vector(0.019, 0.037, 0.019), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["barrel"] = { type = "Model", model = "models/props_lab/pipesystem03d.mdl", bone = "ValveBiped.base", rel = "body", pos = Vector(0, 5, 1.1), angle = Angle(0, 0, 0), size = Vector(0.492, 0.492, 0.492), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["stockpipe+"] = { type = "Model", model = "models/props_lab/pipesystem02e.mdl", bone = "ValveBiped.base", rel = "backpart", pos = Vector(1, 0, 0.6), angle = Angle(90, 0, -5.114), size = Vector(0.151, 0.264, 0.151), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["body"] = { type = "Model", model = "models/Items/BoxSRounds.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(6.5, 1.5, -2.3), angle = Angle(0, -90, -180), size = Vector(0.36, 0.606, 0.209), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/props_canal/metalwall005b", skin = 0, bodygroup = {} },
	["holder"] = { type = "Model", model = "models/props_c17/utilityconnecter003.mdl", bone = "ValveBiped.base", rel = "body", pos = Vector(0, 5, 0), angle = Angle(0, -90, 180), size = Vector(0.094, 0.094, 0.379), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["sights"] = { type = "Model", model = "models/props_c17/playgroundTick-tack-toe_post01.mdl", bone = "ValveBiped.base", rel = "body", pos = Vector(0, 4.091, 1.7), angle = Angle(0, 90, 0), size = Vector(0.152, 0.023, 0.012), color = Color(89, 86, 96, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["eject"] = { type = "Model", model = "models/props_junk/PopCan01a.mdl", bone = "ValveBiped.base", rel = "barrel", pos = Vector(0, 2.7, 0), angle = Angle(0, 0, 90), size = Vector(0.321, 0.321, 0.321), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/props_combine/combine_mortar01b", skin = 0, bodygroup = {} }
}
SWEP.WElements = {
	["stockpipe"] = { type = "Model", model = "models/props_lab/pipesystem02e.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "backpart", pos = Vector(1, 0, -0.601), angle = Angle(90, 0, -3.069), size = Vector(0.151, 0.264, 0.151), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["slide"] = { type = "Model", model = "models/props_interiors/refrigeratorDoor02a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body", pos = Vector(-1, -1.364, 1), angle = Angle(0, 180, 180), size = Vector(0.094, 0.094, 0.094), color = Color(100, 100, 100, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["backsight"] = { type = "Model", model = "models/props_c17/streetsign005c.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body", pos = Vector(0, -5.301, 2.299), angle = Angle(0, 0, 0), size = Vector(0.072, 0.209, 0.037), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/metal", skin = 0, bodygroup = {} },
	["clip"] = { type = "Model", model = "models/Items/BoxMRounds.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body", pos = Vector(-0.341, -4.1, -5.901), angle = Angle(-2.3, 1.023, 90), size = Vector(0.07, 0.321, 0.151), color = Color(101, 101, 104, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["stockpipe++"] = { type = "Model", model = "models/props_lab/pipesystem02e.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "stockpipe", pos = Vector(0.36, 2.273, -1.364), angle = Angle(-91.024, 90, 0), size = Vector(0.151, 0.151, 0.151), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["backpart"] = { type = "Model", model = "models/props_interiors/VendingMachineSoda01a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body", pos = Vector(0, -5.401, 0.449), angle = Angle(90, 180, 180), size = Vector(0.019, 0.037, 0.019), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["stockpipe+++"] = { type = "Model", model = "models/props_lab/pipesystem02e.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "stockpipe", pos = Vector(0.839, 2.273, -1.364), angle = Angle(88.976, 90, 180), size = Vector(0.151, 0.151, 0.151), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["holder"] = { type = "Model", model = "models/props_c17/utilityconnecter003.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body", pos = Vector(0, 5, 0), angle = Angle(0, -90, 180), size = Vector(0.094, 0.094, 0.379), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["sights"] = { type = "Model", model = "models/props_c17/playgroundTick-tack-toe_post01.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body", pos = Vector(0, 4.091, 1.7), angle = Angle(0, 90, 0), size = Vector(0.152, 0.023, 0.012), color = Color(89, 86, 96, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["barrel"] = { type = "Model", model = "models/props_lab/pipesystem03d.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body", pos = Vector(0, 4.5, 1), angle = Angle(0, 0, 0), size = Vector(0.379, 0.379, 0.379), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["body"] = { type = "Model", model = "models/Items/BoxSRounds.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(6, 2.099, -2.6), angle = Angle(174.886, 90, -5.114), size = Vector(0.36, 0.606, 0.209), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/props_canal/metalwall005b", skin = 0, bodygroup = {} },
	["stockpipe+"] = { type = "Model", model = "models/props_lab/pipesystem02e.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "backpart", pos = Vector(1, 0, 0.6), angle = Angle(90, 0, -5.114), size = Vector(0.151, 0.264, 0.151), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["spin"] = { type = "Model", model = "models/props_vehicles/carparts_wheel01a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body", pos = Vector(0, 1.363, 2.5), angle = Angle(0, 0, -90), size = Vector(0.037, 0.037, 0.037), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["eject"] = { type = "Model", model = "models/props_junk/PopCan01a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "barrel", pos = Vector(0, 2.273, 0), angle = Angle(0, 0, -90), size = Vector(0.321, 0.321, 0.321), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/props_combine/combine_mortar01b", skin = 0, bodygroup = {} }
}

function SWEP:Reload()
	self:OnReload()
	self:WatReload(ACT_VM_RELOAD)
end

SWEP.ReloadSound = Sound("Weapon_Pistol.Reload")
function SWEP:OnReload()
	if(self.Owner:KeyDown(IN_ATTACK)) then return end
	if (self.Weapon:Clip1() < self.Primary.ClipSize) and (self.Owner:GetAmmoCount(self.Primary.Ammo) > 0) then
		self:EmitSound( self.ReloadSound )
	end
end