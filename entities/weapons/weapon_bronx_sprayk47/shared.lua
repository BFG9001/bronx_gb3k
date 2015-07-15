
AddCSLuaFile( "shared.lua" )

---------
SWEP.PrintName 					= "Spray-K 47"
SWEP.Category 					= "Wattle Bronx"
SWEP.Base 						= "weapon_bronxbase_bullet"
SWEP.Spawnable 					= true
SWEP.AdminOnly 					= false
SWEP.m_WeaponDeploySpeed 		= 1

SWEP.Author 					= "Silly"
SWEP.Contact 					= ""
SWEP.Purpose 					= ""
SWEP.Instructions 				= ""

SWEP.ViewModel					= "models/weapons/cstrike/c_rif_sg552.mdl"
SWEP.WorldModel					= "models/weapons/w_rif_ak47.mdl"
SWEP.ViewModelFlip 				= false
SWEP.ViewModelFOV 				= 52
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

SWEP.Primary.ClipSize			= 30
SWEP.Primary.DefaultClip 		= 120
SWEP.Primary.Ammo 				= "smg1"
SWEP.Primary.Automatic 			= true

SWEP.Secondary.ClipSize 		= -1
SWEP.Secondary.DefaultClip 		= -1
SWEP.Secondary.Ammo 			= "none"
SWEP.Secondary.Automatic 		= false
--Melee stuff
SWEP.Secondary.Damage = 18
SWEP.Secondary.Delay = .9
SWEP.Secondary.Sound = Sound("weapons/slam/throw.wav")

SWEP.UseHands 					= true
SWEP.AccurateCrosshair 			= false
---------
SWEP.HoldType 					= "ar2"

SWEP.Primary.Damage 			= 50
SWEP.Primary.DamageFalloff		= 0.001
SWEP.Primary.Sound				= Sound("Weapon_AK47.Single")
SWEP.Primary.NumShots			= 1
SWEP.Primary.Delay				= .125
SWEP.Primary.Cone				= 0.0015
SWEP.Primary.ClumpCone			= 0
SWEP.Primary.Tracer				= 1
SWEP.Primary.TracerName			= "Tracer"
--SWEP.Primary.MuzzleEffects		= { "effect_bronx_muzzleflash", "effect_wat_muzzle_smoke", "effect_wat_muzzle_sparks" }

SWEP.RecoilPitchAdd 			= 1
SWEP.RecoilPitchMul 			= .5
SWEP.RecoilYawAdd 				= 0.6
SWEP.RecoilYawMul 				= 0.1

SWEP.SpreadConeAdd 				= 0.0025
SWEP.SpreadRecoveryTime 		= 0.3
SWEP.SpreadConeAddCrouch 		= 0.0015
SWEP.SpreadRecoveryTimeCrouch 	= 0.2

SWEP.SpreadModVel 				= 0.065
SWEP.SpreadModVelMax 			= 0.0002
SWEP.SpreadModInAir				= 0.075
SWEP.SpreadModCrouch 			= 0.0002

SWEP.ReloadClipInTime			= 1.5

SWEP.VMPosOffset 				= Vector(0,0,0)
SWEP.VMAngOffset				= Angle(0,0,0)
SWEP.SprintPos	 				= { Vector(-0.5,-2.5,-3), Vector(-0.5,-2.5,-3), Vector(-0.5,-2.5,-3) }
SWEP.SprintAng					= { Angle(-12,32,-35), Angle(-6,35,-35), Angle(-12,38,-35) }
SWEP.WalkPos 					= { Vector(0.75-1,0,-0.5), Vector(1-1,0,0.5), Vector(1.25-1,0,-0.5) }
SWEP.WalkAng					= { Angle(0,0,0), Angle(0,0,0), Angle(0,0,0) }
SWEP.InspectPos 				= { Vector(12.229, -7.091, -5.801), Vector(0.36, -4.553, -11.716) }
SWEP.InspectAng 				= { Angle(28.993, 44.664, 18.545), Angle(38.395, 0, 0) }
SWEP.IronSightsPos 				= Vector(-5.921, -2.708, 2.599)
SWEP.IronSightsAng 				= Angle(0.057, -0.029, 0)
SWEP.SwayPosDiv					= 30
SWEP.SwayAngDiv					= 11

SWEP.UseIrons					= false
SWEP.UseScope					= false
SWEP.Zoom 						= 30
SWEP.SetFATOnShoot 				= false
SWEP.CVFireAnimIroned			= false

SWEP.DTFloats 					= {}
SWEP.DTBools 					= {}
SWEP.DTInts 					= {}

SWEP.ViewModelBoneMods = {
	["v_weapon.sg552_Parent"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
}

SWEP.VElements = {
	["body+++++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "v_weapon.sg552_Parent", rel = "body", pos = Vector(-0.661, -2.556, -5.684), angle = Angle(-90, 0, -90), size = Vector(0.039, 0.068, 0.039), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["handle"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.sg552_Parent", rel = "body", pos = Vector(0, 1.197, 3.214), angle = Angle(0, 0, 69.075), size = Vector(0.039, 0.107, 0.101), color = Color(195, 140, 85, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["barrel+"] = { type = "Model", model = "models/hunter/tubes/tube1x1x1.mdl", bone = "v_weapon.sg552_Parent", rel = "body", pos = Vector(0, -0.327, -24.143), angle = Angle(0, 0, 0), size = Vector(0.025, 0.025, 0.319), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["ironsight++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "v_weapon.sg552_Parent", rel = "barrel+", pos = Vector(0, -1.517, 1.411), angle = Angle(0, 0, 90), size = Vector(0.05, 0.018, 0.189), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["body+++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "v_weapon.sg552_Parent", rel = "body", pos = Vector(0, -1.834, -6.564), angle = Angle(0, 0, 0), size = Vector(0.111, 0.101, 0.204), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["barrel++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.sg552_Parent", rel = "body", pos = Vector(0, -0.689, -17.46), angle = Angle(0, 0, -49.335), size = Vector(0.05, 0.05, 0.034), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["trigger"] = { type = "Model", model = "models/hunter/tubes/tube1x1x1.mdl", bone = "v_weapon.sg552_Parent", rel = "body", pos = Vector(-0.159, 2.203, 1.286), angle = Angle(-90, 0, 0), size = Vector(0.048, 0.048, 0.009), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["mag"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "v_weapon.sg552_Clip", rel = "", pos = Vector(0, 1.167, -0.406), angle = Angle(0, 0, 9.677), size = Vector(0.064, 0.296, 0.243), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["ironsight"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "v_weapon.sg552_Parent", rel = "barrel+", pos = Vector(0, 0, 1.817), angle = Angle(0, 0, 0), size = Vector(0.101, 0.101, 0.163), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["thingy"] = { type = "Model", model = "models/props_interiors/Radiator01a.mdl", bone = "v_weapon.sg552_Parent", rel = "body", pos = Vector(-0.005, -1.01, 5.37), angle = Angle(-90, 90, 0), size = Vector(0.009, 0.016, 0.009), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["body"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "v_weapon.sg552_Parent", rel = "", pos = Vector(0, -4.658, -2.158), angle = Angle(0, 0, 0), size = Vector(0.109, 0.247, 0.912), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["barrel+++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.sg552_Parent", rel = "body", pos = Vector(0, -0.369, -19.24), angle = Angle(0, 0, 0), size = Vector(0.05, 0.05, 0.05), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["hold thingy"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.sg552_Parent", rel = "body", pos = Vector(0, -1.665, -12.115), angle = Angle(0, 0, 0), size = Vector(0.048, 0.063, 0.097), color = Color(195, 140, 85, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["mag+"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "v_weapon.sg552_Clip", rel = "mag", pos = Vector(0, 3.562, -0.327), angle = Angle(0, 0, 9.677), size = Vector(0.064, 0.356, 0.237), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["stock+"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.sg552_Parent", rel = "body", pos = Vector(0, 0.479, 8.744), angle = Angle(0, 0, 11.868), size = Vector(0.052, 0.122, 0.134), color = Color(185, 140, 85, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["ironsight+"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "v_weapon.sg552_Parent", rel = "barrel+", pos = Vector(0, -1.407, 1.976), angle = Angle(0, 0, 72.245), size = Vector(0.05, 0.021, 0.202), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["ironsight++++"] = { type = "Model", model = "models/props_junk/PopCan01a.mdl", bone = "v_weapon.sg552_Parent", rel = "barrel+", pos = Vector(0, -2.758, 1.251), angle = Angle(0, 0, -90), size = Vector(0.034, 0.034, 0.078), color = Color(85, 85, 85, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["stock"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "v_weapon.sg552_Parent", rel = "body", pos = Vector(0, 0.72, 6.905), angle = Angle(0, 0, 11.868), size = Vector(0.108, 0.167, 0.31), color = Color(195, 140, 85, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["barrel"] = { type = "Model", model = "models/hunter/tubes/tube1x1x1.mdl", bone = "v_weapon.sg552_Parent", rel = "body", pos = Vector(0, -1.801, -16.878), angle = Angle(0, 0, 0), size = Vector(0.025, 0.025, 0.108), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["body+"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.sg552_Parent", rel = "body", pos = Vector(0, -1.675, -5.417), angle = Angle(0, 0, 0), size = Vector(0.046, 0.046, 0.215), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["body++++++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "v_weapon.sg552_Parent", rel = "body", pos = Vector(0.66, -2.556, -5.684), angle = Angle(-90, 0, -90), size = Vector(0.039, 0.068, 0.039), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["body++++"] = { type = "Model", model = "models/props_phx/gears/rack9.mdl", bone = "v_weapon.sg552_Parent", rel = "body", pos = Vector(0, -2.076, -6.564), angle = Angle(0, 0, -90), size = Vector(0.09, 0.056, 0.09), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["thingy+"] = { type = "Model", model = "models/hunter/misc/platehole1x1a.mdl", bone = "v_weapon.sg552_Parent", rel = "body", pos = Vector(-0.645, 0.416, -2.264), angle = Angle(0, 90, -90), size = Vector(0.029, 0.116, 0.029), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["stock++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.sg552_Parent", rel = "body", pos = Vector(0, 0.456, 6.436), angle = Angle(0, 0, -14.799), size = Vector(0.043, 0.063, 0.068), color = Color(185, 140, 85, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["bolt"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.sg552_Chamber", rel = "", pos = Vector(0, -0.401, -3.855), angle = Angle(0, 0, 0), size = Vector(0.05, 0.03, 0.05), color = Color(185, 185, 185, 255), surpresslightning = false, material = "phoenix_storms/grey_chrome", skin = 0, bodygroup = {} },
	["bolt+"] = { type = "Model", model = "models/props_c17/TrapPropeller_Lever.mdl", bone = "v_weapon.sg552_Chamber", rel = "bolt", pos = Vector(-0.801, -0.223, 0.428), angle = Angle(0, 59.652, 0), size = Vector(0.165, 0.079, 0.165), color = Color(185, 185, 185, 255), surpresslightning = false, material = "phoenix_storms/grey_chrome", skin = 0, bodygroup = {} },
	["ironsight+++"] = { type = "Model", model = "models/hunter/tubes/tube1x1x1c.mdl", bone = "v_weapon.sg552_Parent", rel = "barrel+", pos = Vector(0, -3.158, 1.251), angle = Angle(0, 90, 0), size = Vector(0.026, 0.019, 0.009), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["hold thingy+"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.sg552_Parent", rel = "body", pos = Vector(0, -0.137, -12.12), angle = Angle(0, 0, 0), size = Vector(0.054, 0.127, 0.152), color = Color(195, 140, 85, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["body++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.sg552_Parent", rel = "body", pos = Vector(0, -1.754, 3.901), angle = Angle(0, 0, 31.155), size = Vector(0.046, 0.046, 0.029), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} }
}

SWEP.WElements = {
	["body+++++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body", pos = Vector(-0.661, -2.556, -5.684), angle = Angle(-90, 0, -90), size = Vector(0.039, 0.068, 0.039), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["handle"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body", pos = Vector(0, 1.197, 3.214), angle = Angle(0, 0, 69.075), size = Vector(0.039, 0.075, 0.101), color = Color(195, 140, 85, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["body+++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body", pos = Vector(0, -1.834, -6.564), angle = Angle(0, 0, 0), size = Vector(0.111, 0.101, 0.204), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["body++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body", pos = Vector(0, -1.754, 3.901), angle = Angle(0, 0, 31.155), size = Vector(0.046, 0.046, 0.029), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["barrel+++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body", pos = Vector(0, -0.369, -19.24), angle = Angle(0, 0, 0), size = Vector(0.05, 0.05, 0.05), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["hold thingy+"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body", pos = Vector(0, -0.137, -12.12), angle = Angle(0, 0, 0), size = Vector(0.054, 0.127, 0.152), color = Color(195, 140, 85, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["ironsight++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "barrel+", pos = Vector(0, -1.517, 1.411), angle = Angle(0, 0, 90), size = Vector(0.05, 0.018, 0.189), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["trigger"] = { type = "Model", model = "models/hunter/tubes/tube1x1x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body", pos = Vector(-0.159, 2.203, 1.286), angle = Angle(-90, 0, 0), size = Vector(0.048, 0.048, 0.009), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["mag"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body", pos = Vector(0, 3.108, -1.877), angle = Angle(0, 0, 0), size = Vector(0.064, 0.296, 0.243), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["ironsight"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "barrel+", pos = Vector(0, 0, 1.817), angle = Angle(0, 0, 0), size = Vector(0.101, 0.101, 0.163), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["thingy"] = { type = "Model", model = "models/props_interiors/Radiator01a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body", pos = Vector(-0.005, -1.01, 5.37), angle = Angle(-90, 90, 0), size = Vector(0.009, 0.016, 0.009), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["body"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(6.66, 0.879, -4.262), angle = Angle(0, 90.088, -82.423), size = Vector(0.109, 0.247, 0.912), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["barrel hole"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "barrel+", pos = Vector(0, 0, 0.555), angle = Angle(0, 0, 0), size = Vector(0.037, 0.037, 0.037), color = Color(0, 0, 0, 255), surpresslightning = true, material = "models/debug/debugwhite", skin = 0, bodygroup = {} },
	["hold thingy"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body", pos = Vector(0, -1.665, -12.115), angle = Angle(0, 0, 0), size = Vector(0.048, 0.063, 0.097), color = Color(195, 140, 85, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["mag+"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "mag", pos = Vector(0, 3.562, -0.327), angle = Angle(0, 0, 9.677), size = Vector(0.064, 0.356, 0.237), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["stock+"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body", pos = Vector(0, 0.479, 8.744), angle = Angle(0, 0, 11.868), size = Vector(0.052, 0.122, 0.134), color = Color(185, 140, 85, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["ironsight+"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "barrel+", pos = Vector(0, -1.407, 1.976), angle = Angle(0, 0, 72.245), size = Vector(0.05, 0.021, 0.202), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["stock++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body", pos = Vector(0, 0.456, 6.436), angle = Angle(0, 0, -14.799), size = Vector(0.043, 0.063, 0.068), color = Color(185, 140, 85, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["ironsight++++"] = { type = "Model", model = "models/props_junk/PopCan01a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "barrel+", pos = Vector(0, -2.758, 1.251), angle = Angle(0, 0, -90), size = Vector(0.034, 0.034, 0.078), color = Color(85, 85, 85, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["body+"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body", pos = Vector(0, -1.675, -5.417), angle = Angle(0, 0, 0), size = Vector(0.046, 0.046, 0.215), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["body++++++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body", pos = Vector(0.66, -2.556, -5.684), angle = Angle(-90, 0, -90), size = Vector(0.039, 0.068, 0.039), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["thingy+"] = { type = "Model", model = "models/hunter/misc/platehole1x1a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body", pos = Vector(-0.645, 0.416, -2.264), angle = Angle(0, 90, -90), size = Vector(0.029, 0.116, 0.029), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["body++++"] = { type = "Model", model = "models/props_phx/gears/rack9.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body", pos = Vector(0, -2.076, -6.564), angle = Angle(0, 0, -90), size = Vector(0.09, 0.056, 0.09), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["stock"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body", pos = Vector(0, 0.72, 6.905), angle = Angle(0, 0, 11.868), size = Vector(0.108, 0.167, 0.31), color = Color(195, 140, 85, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["barrel"] = { type = "Model", model = "models/hunter/tubes/tube1x1x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body", pos = Vector(0, -1.801, -16.878), angle = Angle(0, 0, 0), size = Vector(0.025, 0.025, 0.108), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["bolt"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body", pos = Vector(-0.082, -0.985, -4.959), angle = Angle(0, 0, 0), size = Vector(0.05, 0.03, 0.05), color = Color(185, 185, 185, 255), surpresslightning = false, material = "phoenix_storms/grey_chrome", skin = 0, bodygroup = {} },
	["bolt+"] = { type = "Model", model = "models/props_c17/TrapPropeller_Lever.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "bolt", pos = Vector(-0.801, -0.223, 0.428), angle = Angle(0, 59.652, 0), size = Vector(0.165, 0.079, 0.165), color = Color(185, 185, 185, 255), surpresslightning = false, material = "phoenix_storms/grey_chrome", skin = 0, bodygroup = {} },
	["ironsight+++"] = { type = "Model", model = "models/hunter/tubes/tube1x1x1c.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "barrel+", pos = Vector(0, -3.158, 1.251), angle = Angle(0, 90, 0), size = Vector(0.026, 0.019, 0.009), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["barrel++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body", pos = Vector(0, -0.689, -17.46), angle = Angle(0, 0, -49.335), size = Vector(0.05, 0.05, 0.034), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["barrel+"] = { type = "Model", model = "models/hunter/tubes/tube1x1x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body", pos = Vector(0, -0.327, -24.143), angle = Angle(0, 0, 0), size = Vector(0.025, 0.025, 0.319), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} }
}