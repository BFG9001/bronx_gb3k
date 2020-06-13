
AddCSLuaFile( "shared.lua" )

---------
SWEP.PrintName 					= "Uzi"
SWEP.Category 					= "Wattle Bronx"
SWEP.Base 						= "weapon_bronxbase_bullet"
SWEP.Spawnable 					= true
SWEP.AdminOnly 					= false
SWEP.m_WeaponDeploySpeed 		= 1.15

SWEP.Author 					= "BFG"
SWEP.Contact 					= ""
SWEP.Purpose 					= ""
SWEP.Instructions 				= ""

SWEP.ViewModel = "models/weapons/cstrike/c_smg_mac10.mdl"
SWEP.WorldModel = "models/weapons/w_smg_mac10.mdl"
SWEP.ViewModelFlip 				= false
SWEP.ViewModelFOV 				= 60

SWEP.Weight 					= 5
SWEP.AutoSwitchFrom 			= false
SWEP.AutoSwitchTo 				= false

SWEP.BobScale 					= 1
SWEP.SwayScale 					= 1
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

SWEP.Primary.ClipSize			= 40
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
SWEP.HoldType = "revolver"

SWEP.Primary.Damage 			= 25.1
SWEP.Primary.DamageFalloff		= 0.02
SWEP.Primary.Sound				= Sound("Weapon_MAC10.Single")
SWEP.Primary.NumShots			= 1
SWEP.Primary.Delay				= .1
SWEP.Primary.Cone				= 0.008
SWEP.Primary.ClumpCone			= 0
SWEP.Primary.Tracer				= 2
SWEP.Primary.TracerName			= "Tracer"
--SWEP.Primary.MuzzleEffects		= { "effect_wat_muzzle_flash", "effect_wat_muzzle_smoke", "effect_wat_muzzle_sparks" }

SWEP.RecoilPitchAdd 			= .7
SWEP.RecoilPitchMul 			= 0.12
SWEP.RecoilYawAdd 				= 0.5
SWEP.RecoilYawMul 				= 0.032

SWEP.SpreadConeAdd 				= 0.006
SWEP.SpreadRecoveryTime 		= 0.3
SWEP.SpreadConeAddCrouch 		= 0.0015
SWEP.SpreadRecoveryTimeCrouch 	= 0.2

SWEP.SpreadModVel 				= 0.002
SWEP.SpreadModVelMax 			= 0.0001
SWEP.SpreadModInAir				= 0.035
SWEP.SpreadModCrouch 			= 0.0002

SWEP.ReloadClipInTime			= 2


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

SWEP.ShowWorldModel = false


SWEP.ViewModelBoneMods = {
	["v_weapon.mac10_leather3"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Finger1"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 48.252, 0) },
	["v_weapon.mac10_leather4"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Finger11"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 31.555, 0) },
	["ValveBiped.Bip01_L_Hand"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, -90) },
	["ValveBiped.Bip01_L_Finger4"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 48.122, 0) },
	["ValveBiped.Bip01_L_Finger02"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, -32.223, 0) },
	["ValveBiped.Bip01_L_Finger2"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 51.726, 0) },
	["ValveBiped.Bip01_L_Finger01"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, -25.556, 0) },
	["v_weapon.mac10_leather1"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Finger3"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 42.456, 0) },
	["v_weapon.mac10_leather2"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Finger0"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(47.777, 27.777, 50) }
}
SWEP.ViewModelBoneMods_NORMAL = {
	["v_weapon.mac10_leather3"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Finger1"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 48.252, 0) },
	["v_weapon.mac10_leather4"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Finger11"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 31.555, 0) },
	["ValveBiped.Bip01_L_Hand"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, -90) },
	["ValveBiped.Bip01_L_Finger4"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 48.122, 0) },
	["ValveBiped.Bip01_L_Finger02"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, -32.223, 0) },
	["ValveBiped.Bip01_L_Finger2"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 51.726, 0) },
	["ValveBiped.Bip01_L_Finger01"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, -25.556, 0) },
	["v_weapon.mac10_leather1"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Finger3"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 42.456, 0) },
	["v_weapon.mac10_leather2"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Finger0"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(47.777, 27.777, 50) }
}
SWEP.ViewModelBoneMods_RELOADING = {
	["v_weapon.mac10_leather3"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Finger1"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["v_weapon.mac10_leather4"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Finger11"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Hand"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Finger4"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Finger02"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Finger2"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Finger01"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["v_weapon.mac10_leather1"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Finger3"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["v_weapon.mac10_leather2"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Finger0"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
}
SWEP.VElements = {
	["UziBarrelNut"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "UziReceiver", pos = Vector(-0.249, 5.449, 0), angle = Angle(0, 0, 90), size = Vector(0.059, 0.059, 0.059), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/metalfloor_2-3", skin = 0, bodygroup = {} },
	["Frontsight"] = { type = "Model", model = "models/mechanics/articulating/arm_base_b.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "UziReceiver", pos = Vector(0.244, 5.627, -1.581), angle = Angle(0, 0, 180), size = Vector(0.032, 0.054, 0.025), color = Color(200, 200, 200, 255), surpresslightning = false, material = "metal2a", skin = 0, bodygroup = {} },
	["ReceiverNub"] = { type = "Model", model = "models/hunter/tubes/tube1x1x4c.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "UziReceiver", pos = Vector(-1.073, -3, -0.745), angle = Angle(0, 0, 90), size = Vector(0.009, 0.009, 0.019), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["Reeiverbump_Handleguide"] = { type = "Model", model = "models/phxtended/bar1x.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "Receiverbump", pos = Vector(1.391, 0.393, -0.196), angle = Angle(0, -90, 0), size = Vector(0.076, 0.138, 0.076), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["Receiverbump"] = { type = "Model", model = "models/hunter/triangles/trapezium3x3x1c.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "UziReceiver", pos = Vector(-0.276, 4.409, -1.463), angle = Angle(0, 90, 180), size = Vector(0.029, 0.035, 0.01), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["RearSight"] = { type = "Model", model = "models/mechanics/articulating/arm_base_b.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "UziReceiver", pos = Vector(0.456, -5.83, -1.573), angle = Angle(0, 0, 180), size = Vector(0.046, 0.041, 0.024), color = Color(200, 200, 200, 255), surpresslightning = false, material = "metal2a", skin = 0, bodygroup = {} },
	["Receiverbump+"] = { type = "Model", model = "models/hunter/triangles/trapezium3x3x1c.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "UziReceiver", pos = Vector(-0.276, -4.731, -1.463), angle = Angle(0, -90, 180), size = Vector(0.029, 0.035, 0.01), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["UziHandguard"] = { type = "Model", model = "models/props_phx/empty_barrel.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "UziReceiver", pos = Vector(0, 1.835, 0.725), angle = Angle(0, 0, 90), size = Vector(0.101, 0.101, 0.101), color = Color(100, 100, 100, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["ReceiverNub_RoundEnd"] = { type = "Model", model = "models/hunter/misc/sphere1x1.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "ReceiverNub", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(0.009, 0.009, 0.009), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["Reeiver_HandleCut"] = { type = "Model", model = "models/props_phx/construct/metal_plate1x2.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "UziReceiver", pos = Vector(-0.276, 1.575, -1.53), angle = Angle(0, 0, 0), size = Vector(0.023, 0.043, 0.023), color = Color(0, 0, 0, 255), surpresslightning = true, material = "metal3", skin = 0, bodygroup = {} },
	["Stock"] = { type = "Model", model = "models/hunter/misc/roundthing1.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "UziReceiver", pos = Vector(0, -7.593, 0.912), angle = Angle(0, 0, 90), size = Vector(0.025, 0.013, 0.009), color = Color(100, 100, 100, 255), surpresslightning = false, material = "phoenix_storms/mat/mat_phx_carbonfiber2", skin = 0, bodygroup = {} },
	["ChargingHandle_Top"] = { type = "Model", model = "models/props_vehicles/apc_tire001.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "Charginghandle", pos = Vector(0, 0, 1.269), angle = Angle(90, 0, 0), size = Vector(0.019, 0.017, 0.017), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/metalfloor_2-3", skin = 0, bodygroup = {} },
	["Grip"] = { type = "Model", model = "models/hunter/misc/roundthing2.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "UziReceiver", pos = Vector(-0.161, -0.724, 1.297), angle = Angle(0, 0, 0), size = Vector(0.03, 0.017, 0.097), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["Charginghandle"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.mac10_bolt", rel = "", pos = Vector(-0.145, -0.04, 0), angle = Angle(0, 0, -90), size = Vector(0.028, 0.028, 0.028), color = Color(200, 200, 200, 255), surpresslightning = false, material = "metal2a", skin = 0, bodygroup = {} },
	["ReceiverNub+"] = { type = "Model", model = "models/hunter/tubes/tube1x1x4c.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "UziReceiver", pos = Vector(-1.073, -3, 0.133), angle = Angle(0, 0, 90), size = Vector(0.009, 0.009, 0.019), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["Barrel"] = { type = "Model", model = "models/hunter/tubes/tube1x1x3.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "UziBarrelNut", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(0.016, 0.016, 0.035), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal2a", skin = 0, bodygroup = {} },
	["ReceiverNub_RoundEnd+"] = { type = "Model", model = "models/hunter/misc/sphere1x1.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "ReceiverNub+", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(0.009, 0.009, 0.009), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["UziReceiver"] = { type = "Model", model = "models/hunter/blocks/cube075x3x1.mdl", bone = "v_weapon.mac10_parent", rel = "", pos = Vector(0.078, -4.273, 1.078), angle = Angle(0, 0, 90), size = Vector(0.049, 0.09, 0.063), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["Reeiverbump_Handleguide+"] = { type = "Model", model = "models/phxtended/bar1x.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "Receiverbump", pos = Vector(1.391, -0.865, -0.196), angle = Angle(0, -90, 0), size = Vector(0.076, 0.138, 0.076), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["Stockbar"] = { type = "Model", model = "models/mechanics/robotics/c1.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "Stock", pos = Vector(-0.965, -0.954, 1.452), angle = Angle(90, 0, -90), size = Vector(0.056, 0.056, 0.056), color = Color(100, 100, 100, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} }
}
SWEP.WElements = {
	["ReceiverNub+++"] = { type = "Model", model = "models/hunter/tubes/tube1x1x4c.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "UziReceiver", pos = Vector(0.565, -3, 0.133), angle = Angle(180, 0, 90), size = Vector(0.009, 0.009, 0.019), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["Charginghandle"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "UziReceiver", pos = Vector(-0.294, 0, -0.643), angle = Angle(180, 0, 0), size = Vector(0.028, 0.028, 0.028), color = Color(200, 200, 200, 255), surpresslightning = false, material = "metal2a", skin = 0, bodygroup = {} },
	["ReceiverNub_RoundEnd++"] = { type = "Model", model = "models/hunter/misc/sphere1x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "ReceiverNub++", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(0.009, 0.009, 0.009), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["Frontsight"] = { type = "Model", model = "models/mechanics/articulating/arm_base_b.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "UziReceiver", pos = Vector(0.244, 5.627, -1.581), angle = Angle(0, 0, 180), size = Vector(0.032, 0.054, 0.025), color = Color(200, 200, 200, 255), surpresslightning = false, material = "metal2a", skin = 0, bodygroup = {} },
	["ReceiverNub"] = { type = "Model", model = "models/hunter/tubes/tube1x1x4c.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "UziReceiver", pos = Vector(-1.073, -3, -0.745), angle = Angle(0, 0, 90), size = Vector(0.009, 0.009, 0.019), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["Reeiverbump_Handleguide"] = { type = "Model", model = "models/phxtended/bar1x.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "Receiverbump", pos = Vector(1.391, 0.393, -0.196), angle = Angle(0, -90, 0), size = Vector(0.076, 0.138, 0.076), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["Receiverbump"] = { type = "Model", model = "models/hunter/triangles/trapezium3x3x1c.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "UziReceiver", pos = Vector(-0.276, 4.409, -1.463), angle = Angle(0, 90, 180), size = Vector(0.029, 0.035, 0.01), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["RearSight"] = { type = "Model", model = "models/mechanics/articulating/arm_base_b.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "UziReceiver", pos = Vector(0.456, -5.83, -1.573), angle = Angle(0, 0, 180), size = Vector(0.046, 0.041, 0.024), color = Color(200, 200, 200, 255), surpresslightning = false, material = "metal2a", skin = 0, bodygroup = {} },
	["Receiverbump+"] = { type = "Model", model = "models/hunter/triangles/trapezium3x3x1c.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "UziReceiver", pos = Vector(-0.276, -4.731, -1.463), angle = Angle(0, -90, 180), size = Vector(0.029, 0.035, 0.01), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["UziHandguard"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "UziReceiver", pos = Vector(-0.239, 1.835, 0.725), angle = Angle(0, 0, 90), size = Vector(0.081, 0.105, 0.101), color = Color(100, 100, 100, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["ReceiverNub_RoundEnd"] = { type = "Model", model = "models/hunter/misc/sphere1x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "ReceiverNub", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(0.009, 0.009, 0.009), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["Reeiver_HandleCut"] = { type = "Model", model = "models/props_phx/construct/metal_plate1x2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "UziReceiver", pos = Vector(-0.276, 1.575, -1.53), angle = Angle(0, 0, 0), size = Vector(0.023, 0.043, 0.023), color = Color(0, 0, 0, 255), surpresslightning = true, material = "metal3", skin = 0, bodygroup = {} },
	["Stock"] = { type = "Model", model = "models/hunter/misc/roundthing1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "UziReceiver", pos = Vector(-0.24, -11.643, 0.912), angle = Angle(0, 0, 90), size = Vector(0.019, 0.012, 0.009), color = Color(100, 100, 100, 255), surpresslightning = false, material = "phoenix_storms/mat/mat_phx_carbonfiber2", skin = 0, bodygroup = {} },
	["ReceiverNub_RoundEnd+++"] = { type = "Model", model = "models/hunter/misc/sphere1x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "ReceiverNub+++", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(0.009, 0.009, 0.009), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["Stockbar+"] = { type = "Model", model = "models/mechanics/robotics/c1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "Stock", pos = Vector(0.703, -0.403, 3.29), angle = Angle(90, 0, 90), size = Vector(0.131, 0.056, 0.056), color = Color(100, 100, 100, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["Stockbar"] = { type = "Model", model = "models/mechanics/robotics/c1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "Stock", pos = Vector(-0.884, -0.403, 3.29), angle = Angle(90, 0, -90), size = Vector(0.131, 0.056, 0.056), color = Color(100, 100, 100, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["ReceiverNub_RoundEnd+"] = { type = "Model", model = "models/hunter/misc/sphere1x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(0.009, 0.009, 0.009), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["Grip"] = { type = "Model", model = "models/hunter/misc/roundthing2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "UziReceiver", pos = Vector(-0.161, -0.724, 1.297), angle = Angle(0, 0, 0), size = Vector(0.03, 0.017, 0.097), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["ChargingHandle_Top"] = { type = "Model", model = "models/props_vehicles/apc_tire001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "Charginghandle", pos = Vector(0, 0, 1.269), angle = Angle(90, 0, 0), size = Vector(0.019, 0.017, 0.017), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/metalfloor_2-3", skin = 0, bodygroup = {} },
	["ReceiverNub+"] = { type = "Model", model = "models/hunter/tubes/tube1x1x4c.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "UziReceiver", pos = Vector(-1.073, -3, 0.133), angle = Angle(0, 0, 90), size = Vector(0.009, 0.009, 0.019), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["Barrel"] = { type = "Model", model = "models/hunter/tubes/tube1x1x3.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "UziBarrelNut", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(0.016, 0.016, 0.035), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal2a", skin = 0, bodygroup = {} },
	["ReceiverNub++"] = { type = "Model", model = "models/hunter/tubes/tube1x1x4c.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "UziReceiver", pos = Vector(0.565, -3, -0.745), angle = Angle(180, 0, 90), size = Vector(0.009, 0.009, 0.019), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["UziReceiver"] = { type = "Model", model = "models/hunter/blocks/cube075x3x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(3.76, 0.936, -4.139), angle = Angle(0, 85.532, 0), size = Vector(0.048, 0.09, 0.063), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["Reeiverbump_Handleguide+"] = { type = "Model", model = "models/phxtended/bar1x.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "Receiverbump", pos = Vector(1.391, -0.865, -0.196), angle = Angle(0, -90, 0), size = Vector(0.076, 0.138, 0.076), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["UziBarrelNut"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "UziReceiver", pos = Vector(-0.249, 5.449, 0), angle = Angle(0, 0, 90), size = Vector(0.059, 0.059, 0.059), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/metalfloor_2-3", skin = 0, bodygroup = {} }
}

function SWEP:Reload()
	self:OnReload()
	self:WatReload(ACT_VM_RELOAD)
end

SWEP.ReloadSound = Sound("Weapon_Pistol.Reload")
function SWEP:OnReload()
	if (self.Owner:KeyDown(IN_ATTACK)) or self:GetReloading() then return end
	if (self.Weapon:Clip1() < self.Primary.ClipSize) and (self.Owner:GetAmmoCount(self.Primary.Ammo) > 0) then
		
	end
end

function SWEP:Think()
	self:WatThink()
	self:WatInterruptedReloadThink()
	self:OnThink()
end

function SWEP:OnThink()
	if CLIENT then
		if self:GetReloading() then
			self.ViewModelBoneMods = self.ViewModelBoneMods_RELOADING
			--self.ViewModelBoneMods = self.ViewModelBoneMods_RELOADING
		else
			self.ViewModelBoneMods = self.ViewModelBoneMods_NORMAL
		end
	end
end