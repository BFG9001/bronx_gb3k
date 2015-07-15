
AddCSLuaFile( "shared.lua" )

---------
SWEP.PrintName 					= "MA-41"
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
SWEP.WorldModel					= "models/weapons/w_rif_m4a1.mdl"
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

SWEP.Primary.Damage 			= 35
SWEP.Primary.DamageFalloff		= 0.001
SWEP.Primary.Sound				= Sound("Weapon_M4A1.Single")
SWEP.Primary.NumShots			= 1
SWEP.Primary.Delay				= 60/750
SWEP.Primary.Cone				= 0.0015
SWEP.Primary.ClumpCone			= 0
SWEP.Primary.Tracer				= 1
SWEP.Primary.TracerName			= "Tracer"
--SWEP.Primary.MuzzleEffects		= { "effect_bronx_muzzleflash", "effect_wat_muzzle_smoke", "effect_wat_muzzle_sparks" }

SWEP.RecoilPitchAdd 			= 1
SWEP.RecoilPitchMul 			= 0.14
SWEP.RecoilYawAdd 				= 0.5
SWEP.RecoilYawMul 				= 0.025

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
	["thingy+++++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "v_weapon.sg552_Parent", rel = "body", pos = Vector(-0.262, -3.231, 0), angle = Angle(-3.855, 90, 0), size = Vector(0.037, 0.009, 0.495), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["ironsight front"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "v_weapon.sg552_Parent", rel = "barrel", pos = Vector(0, -1.474, 6.166), angle = Angle(0, 0, 0), size = Vector(0.045, 0.184, 0.045), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["handle"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "v_weapon.sg552_Parent", rel = "body", pos = Vector(0.079, 3.763, 4.16), angle = Angle(0, 0, -27.385), size = Vector(0.079, 0.455, 0.174), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["body++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.sg552_Parent", rel = "body", pos = Vector(0, -0.447, -5.408), angle = Angle(0, 0, 0), size = Vector(0.078, 0.078, 0.014), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["mag+"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "v_weapon.sg552_Clip", rel = "mag", pos = Vector(0, 3.336, -0.274), angle = Angle(0, 0, 9.376), size = Vector(0.085, 0.356, 0.245), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["stock++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "v_weapon.sg552_Parent", rel = "body", pos = Vector(0, 1.141, 12.149), angle = Angle(0, 0, 28.329), size = Vector(0.097, 0.059, 0.541), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["thingy++++"] = { type = "Model", model = "models/hunter/geometric/hex05x1.mdl", bone = "v_weapon.sg552_Parent", rel = "body", pos = Vector(0.229, -1.964, 2.334), angle = Angle(0, -90, 90), size = Vector(0.017, 0.019, 0.164), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["ironsight front++++"] = { type = "Model", model = "models/hunter/tubes/circle2x2c.mdl", bone = "v_weapon.sg552_Parent", rel = "barrel", pos = Vector(0.164, -2.194, 6.32), angle = Angle(0, -90, 90), size = Vector(0.019, 0.009, 0.039), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["body+"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.sg552_Parent", rel = "body", pos = Vector(0, -0.447, -4.765), angle = Angle(0, 0, 0), size = Vector(0.072, 0.072, 0.209), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["bolt cover"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.sg552_Parent", rel = "body", pos = Vector(-0.486, -1.328, 2.864), angle = Angle(17.729, 0, 0), size = Vector(0.021, 0.021, 0.021), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["thingy"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "v_weapon.sg552_Parent", rel = "body", pos = Vector(0, -1.632, 0), angle = Angle(0, 0, 0), size = Vector(0.052, 0.052, 0.545), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["body"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "v_weapon.sg552_Parent", rel = "", pos = Vector(0, -4.897, -2.369), angle = Angle(0, 0, 0), size = Vector(0.093, 0.293, 0.746), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["mag"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "v_weapon.sg552_Clip", rel = "", pos = Vector(0, 2.039, -1.053), angle = Angle(0, 0, 9.376), size = Vector(0.085, 0.261, 0.245), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["barrel"] = { type = "Model", model = "models/hunter/tubes/tube1x1x1.mdl", bone = "v_weapon.sg552_Parent", rel = "body", pos = Vector(0, -0.29, -25.216), angle = Angle(0, 0, 0), size = Vector(0.02, 0.02, 0.219), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["ironsight front+++"] = { type = "Model", model = "models/hunter/tubes/circle2x2c.mdl", bone = "v_weapon.sg552_Parent", rel = "barrel", pos = Vector(-0.165, -2.194, 6.32), angle = Angle(0, -90, 90), size = Vector(0.019, 0.009, 0.039), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["stock+"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "v_weapon.sg552_Parent", rel = "body", pos = Vector(0, 0.911, 15.114), angle = Angle(0, 0, 0), size = Vector(0.097, 0.356, 0.097), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["bolt cover+"] = { type = "Model", model = "models/props_borealis/bluebarrel001.mdl", bone = "v_weapon.sg552_Parent", rel = "body", pos = Vector(-0.81, -1.328, 3.828), angle = Angle(17.729, 0, 0), size = Vector(0.014, 0.014, 0.014), color = Color(123, 123, 123, 255), surpresslightning = false, material = "phoenix_storms/grey_chrome", skin = 0, bodygroup = {} },
	["holdthingy"] = { type = "Model", model = "models/props_borealis/bluebarrel001.mdl", bone = "v_weapon.sg552_Parent", rel = "body", pos = Vector(0, -0.405, -9.879), angle = Angle(0, 0, 0), size = Vector(0.082, 0.097, 0.179), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["ironsight front++"] = { type = "Model", model = "models/props_c17/TrapPropeller_Lever.mdl", bone = "v_weapon.sg552_Parent", rel = "barrel", pos = Vector(0, -2.514, 6.32), angle = Angle(0, 0, 180), size = Vector(0.09, 0.09, 0.09), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["thingy+++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "v_weapon.sg552_Parent", rel = "body", pos = Vector(0, -2.911, 0), angle = Angle(0, 0, -3.487), size = Vector(0.037, 0.021, 0.495), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["thingy++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "v_weapon.sg552_Parent", rel = "body", pos = Vector(0, -1.95, -2.827), angle = Angle(0, 0, 0), size = Vector(0.032, 0.131, 0.028), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["thingy+"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "v_weapon.sg552_Parent", rel = "body", pos = Vector(0, -1.951, 2.174), angle = Angle(0, 0, -3.753), size = Vector(0.032, 0.167, 0.128), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["stock+++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "v_weapon.sg552_Parent", rel = "body", pos = Vector(0, 0.46, 13.576), angle = Angle(0, 0, 28.329), size = Vector(0.097, 0.219, 0.273), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["stock"] = { type = "Model", model = "models/props_borealis/bluebarrel001.mdl", bone = "v_weapon.sg552_Parent", rel = "body", pos = Vector(0, -0.899, 9.961), angle = Angle(0, 0, 0), size = Vector(0.057, 0.057, 0.229), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["ironsight front+"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "v_weapon.sg552_Parent", rel = "barrel", pos = Vector(0, -1.145, 7.221), angle = Angle(0, 0, -40.686), size = Vector(0.045, 0.268, 0.052), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["stock++++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "v_weapon.sg552_Parent", rel = "body", pos = Vector(0, 0.171, 11.682), angle = Angle(0, 0, 28.329), size = Vector(0.097, 0.12, 0.344), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["trigger"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "v_weapon.sg552_Parent", rel = "body", pos = Vector(0, 2.681, 0.998), angle = Angle(0, 0, 0), size = Vector(0.068, 0.043, 0.34), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["thingy++++++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "v_weapon.sg552_Parent", rel = "body", pos = Vector(0.261, -3.231, 0), angle = Angle(-3.855, 90, 0), size = Vector(0.037, 0.009, 0.495), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["mag cover"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "v_weapon.sg552_Parent", rel = "body", pos = Vector(0, 1.907, -2.576), angle = Angle(0, 0, 6.163), size = Vector(0.09, 0.141, 0.293), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["ironsight back"] = { type = "Model", model = "models/hunter/tubes/tube1x1x1.mdl", bone = "v_weapon.sg552_Parent", rel = "thingy+++", pos = Vector(0, -0.324, 2.401), angle = Angle(0, 0, 0), size = Vector(0.009, 0.009, 0.009), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} }
}

SWEP.WElements = {
	["ironsight front"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "barrel", pos = Vector(0, -1.474, 6.166), angle = Angle(0, 0, 0), size = Vector(0.045, 0.184, 0.045), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["stock++++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body", pos = Vector(0, 0.171, 8.92), angle = Angle(0, 0, 28.329), size = Vector(0.097, 0.12, 0.344), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["bolt cover"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body", pos = Vector(-0.486, -1.328, 2.864), angle = Angle(17.729, 0, 0), size = Vector(0.021, 0.021, 0.021), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["trigger"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body", pos = Vector(0, 2.681, 0.998), angle = Angle(0, 0, 0), size = Vector(0.068, 0.043, 0.34), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["mag"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body", pos = Vector(0, 3.848, -2.708), angle = Angle(0, 0, 0), size = Vector(0.085, 0.261, 0.245), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["thingy"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body", pos = Vector(0, -1.632, 0), angle = Angle(0, 0, 0), size = Vector(0.052, 0.052, 0.545), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["body"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(7.607, 0.994, -4.008), angle = Angle(0, 90.527, -81.125), size = Vector(0.093, 0.293, 0.746), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["mag cover"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body", pos = Vector(0, 1.907, -2.258), angle = Angle(0, 0, 6.163), size = Vector(0.09, 0.141, 0.368), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["mag+"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "mag", pos = Vector(0, 3.336, -0.274), angle = Angle(0, 0, 9.376), size = Vector(0.085, 0.356, 0.245), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["stock+"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body", pos = Vector(0, 0.911, 13.185), angle = Angle(0, 0, 0), size = Vector(0.097, 0.356, 0.097), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["handle"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body", pos = Vector(0.079, 3.763, 4.16), angle = Angle(0, 0, -27.385), size = Vector(0.079, 0.455, 0.174), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["holdthingy"] = { type = "Model", model = "models/props_borealis/bluebarrel001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body", pos = Vector(0, -0.405, -9.879), angle = Angle(0, 0, 0), size = Vector(0.082, 0.097, 0.179), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["stock"] = { type = "Model", model = "models/props_borealis/bluebarrel001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body", pos = Vector(0, -0.899, 6.999), angle = Angle(0, 0, 0), size = Vector(0.057, 0.057, 0.229), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["thingy+++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body", pos = Vector(0, -2.911, 0), angle = Angle(0, 0, -3.487), size = Vector(0.037, 0.021, 0.495), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["thingy++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body", pos = Vector(0, -1.95, -2.827), angle = Angle(0, 0, 0), size = Vector(0.032, 0.131, 0.028), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["thingy+"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body", pos = Vector(0, -1.951, 2.174), angle = Angle(0, 0, -3.753), size = Vector(0.032, 0.167, 0.128), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["stock+++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body", pos = Vector(0, 0.46, 11.64), angle = Angle(0, 0, 28.329), size = Vector(0.097, 0.219, 0.273), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["barrel"] = { type = "Model", model = "models/hunter/tubes/tube1x1x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body", pos = Vector(0, -0.29, -22.299), angle = Angle(0, 0, 0), size = Vector(0.02, 0.02, 0.17), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["stock++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body", pos = Vector(0, 1.141, 9.994), angle = Angle(0, 0, 28.329), size = Vector(0.097, 0.059, 0.541), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["bolt cover+"] = { type = "Model", model = "models/props_borealis/bluebarrel001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body", pos = Vector(-0.81, -1.328, 3.828), angle = Angle(17.729, 0, 0), size = Vector(0.014, 0.014, 0.014), color = Color(123, 123, 123, 255), surpresslightning = false, material = "phoenix_storms/grey_chrome", skin = 0, bodygroup = {} },
	["body++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body", pos = Vector(0, -0.447, -5.408), angle = Angle(0, 0, 0), size = Vector(0.078, 0.078, 0.014), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["ironsight front+"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "barrel", pos = Vector(0, -1.145, 7.221), angle = Angle(0, 0, -40.686), size = Vector(0.045, 0.268, 0.052), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["body+"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body", pos = Vector(0, -0.447, -4.765), angle = Angle(0, 0, 0), size = Vector(0.072, 0.072, 0.209), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["thingy++++"] = { type = "Model", model = "models/hunter/geometric/hex05x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body", pos = Vector(0.229, -1.964, 2.334), angle = Angle(0, -90, 90), size = Vector(0.017, 0.019, 0.164), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} }
}


