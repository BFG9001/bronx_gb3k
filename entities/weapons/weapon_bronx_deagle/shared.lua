
AddCSLuaFile( "shared.lua" )

SWEP.Wattle 					= true
---------
SWEP.PrintName 					= "Deserted Eagle AE"
SWEP.Category 					= "Wattle Bronx"
SWEP.Base 						= "weapon_bronxbase_bullet"
SWEP.Spawnable 					= true
SWEP.AdminOnly 					= false
SWEP.m_WeaponDeploySpeed 		= 1

SWEP.Author 					= "BFG"
SWEP.Contact 					= ""
SWEP.Purpose 					= ""
SWEP.Instructions 				= ""

SWEP.ViewModel					= "models/weapons/cstrike/c_pist_fiveseven.mdl"
SWEP.WorldModel					= "models/weapons/w_pist_fiveseven.mdl"
SWEP.ViewModelFlip 				= false
SWEP.ViewModelFOV 				= 57
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
SWEP.Slot 						= 1
SWEP.SlotPos 					= 1
//SWEP.WepSelection 				= 
SWEP.CSMuzzleFlashes 			= true
SWEP.CSMuzzleX 					= false

SWEP.Primary.ClipSize			= 8
SWEP.Primary.DefaultClip 		= 40
SWEP.Primary.Ammo 				= "pistol"
SWEP.Primary.Automatic 			= false

SWEP.Secondary.ClipSize 		= -1
SWEP.Secondary.DefaultClip 		= -1
SWEP.Secondary.Ammo 			= "none"
SWEP.Secondary.Automatic 		= true
--Melee stuff
SWEP.Secondary.Damage = 11
SWEP.Secondary.Delay = .75
SWEP.Secondary.Sound = Sound("weapons/slam/throw.wav")

SWEP.UseHands 					= true
SWEP.AccurateCrosshair 			= false
---------
SWEP.HoldType = "pistol"

SWEP.Primary.Damage 			= 76
SWEP.Primary.DamageFalloff		= 0.001
SWEP.Primary.Sound				= Sound("weapons/p228/p228-1.wav")
SWEP.Primary.NumShots			= 1
SWEP.Primary.Delay				= 60/200
SWEP.Primary.Cone				= 0.0033
SWEP.Primary.ClumpCone			= 0
SWEP.Primary.Tracer				= 1


SWEP.RecoilPitchAdd 			= 5
SWEP.RecoilPitchMul 			= 0.5
SWEP.RecoilYawAdd 				= 1
SWEP.RecoilYawMul 				= 0.05

SWEP.SpreadConeAdd 				= 0.02
SWEP.SpreadRecoveryTime 		= 0.2
SWEP.SpreadConeAddCrouch 		= 0.02
SWEP.SpreadRecoveryTimeCrouch 	= 0.2

SWEP.SpreadModVel 				= 0.0015
SWEP.SpreadModVelMax 			= 0.225
SWEP.SpreadModInAir				= 0.02
SWEP.SpreadModCrouch 			= 0.0002

SWEP.ReloadClipInTime			= 2.2

SWEP.IronSightsPos = Vector(0, -9.648, -17.487)
SWEP.IronSightsAng = Vector(59.095, 70, 0)

SWEP.VMPosOffset 				= Vector(0,0,0)
SWEP.VMAngOffset				= Angle(0,0,0)
SWEP.SprintPos	 				= { Vector(2.5, -19.5, -16), Vector(3, -17.5, -15), Vector(3.5, -19.5, -16) }
SWEP.SprintAng					= { Angle(70, 1, 0), Angle(70, 0, 0), Angle(70, -1.5, 0) }
SWEP.WalkPos 					= { Vector(-0.5,-1,-1), Vector(0,0,1), Vector(0.5,-1,-1) }
SWEP.WalkAng					= { Angle(-0.5,1,-2), Angle(0.5,0,2), Angle(-0.5,-1,3) }
SWEP.InspectPos 				= { Vector(12.229, -7.091, -5.801), Vector(0.36, -4.553, -11.716) }
SWEP.InspectAng 				= { Angle(28.993, 44.664, 26.545), Angle(38.395, 0, 0) }
SWEP.IronSightsPos 				= Vector(-6.675, -3.5, 3.85)
SWEP.IronSightsAng 				= Angle(0, 0, 0)
SWEP.SwayPosDiv					= 40
SWEP.SwayAngDiv					= 20

SWEP.MeleePos = { Vector(0,0,0), Vector(10, -7.862, -9.079), Vector(-5, -14, -17.487) }
SWEP.MeleeAng = { Angle(0,0,0), Angle(28.361, 33.673, -1.783), Angle(59.095, 70, 0) }

SWEP.UseIrons					= false
SWEP.UseScope					= false
SWEP.Zoom 						= 45
SWEP.SetFATOnShoot 				= false
SWEP.CVFireAnimIroned			= false

SWEP.DTFloats 					= {}
SWEP.DTBools 					= {}
SWEP.DTInts 					= {}

SWEP.ViewModelBoneMods = {
	["v_weapon.FIVESEVEN_PARENT"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
}

SWEP.VElements = {
	["slide"] = { type = "Model", model = "models/props_c17/FurnitureWashingmachine001a.mdl", bone = "v_weapon.FIVESEVEN_SLIDE", rel = "", pos = Vector(0, 1.8, 0.316), angle = Angle(-90, 90, 0), size = Vector(0.05, 0.035, 0.165), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["ironsight front"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "v_weapon.FIVESEVEN_PARENT", rel = "body", pos = Vector(0, -1.601, -0.401), angle = Angle(0, 0, -29.668), size = Vector(0.016, 0.016, 0.016), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["handle"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "v_weapon.FIVESEVEN_PARENT", rel = "body", pos = Vector(0, 2.506, 7.269), angle = Angle(0, 0, -11.212), size = Vector(0.083, 0.402, 0.19), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["body++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "v_weapon.FIVESEVEN_PARENT", rel = "body", pos = Vector(0, 0.035, 4.323), angle = Angle(0, 90, 0), size = Vector(0.074, 0.112, 0.643), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["body+++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.FIVESEVEN_PARENT", rel = "body", pos = Vector(0, -0.524, -0.23), angle = Angle(0, 0, 30.85), size = Vector(0.046, 0.061, 0.017), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["ironsight++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "v_weapon.FIVESEVEN_PARENT", rel = "slide", pos = Vector(1.065, 0, 2.543), angle = Angle(0, 180, 0), size = Vector(0.009, 0.026, 0.014), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["ironsight glow+++"] = { type = "Model", model = "models/dav0r/hoverball.mdl", bone = "v_weapon.FIVESEVEN_PARENT", rel = "ironsight front", pos = Vector(0, 0, 0.134), angle = Angle(0, 0, 0), size = Vector(0.009, 0.009, 0.009), color = Color(255, 0, 0, 255), surpresslightning = true, material = "models/debug/debugwhite", skin = 0, bodygroup = {} },
	["trigger"] = { type = "Model", model = "models/hunter/tubes/tube1x1x1.mdl", bone = "v_weapon.FIVESEVEN_PARENT", rel = "body", pos = Vector(0.236, 0.97, 5.022), angle = Angle(90, 0, 0), size = Vector(0.037, 0.037, 0.009), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["body+"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.FIVESEVEN_PARENT", rel = "body", pos = Vector(0, -0.685, -0.701), angle = Angle(0, 0, 0), size = Vector(0.046, 0.061, 0.063), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["ironsight"] = { type = "Model", model = "models/hunter/tubes/circle2x2d.mdl", bone = "v_weapon.FIVESEVEN_PARENT", rel = "slide", pos = Vector(0.754, -0.109, 2.464), angle = Angle(180, 90, 0), size = Vector(0.009, 0.009, 0.114), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["hammer body++"] = { type = "Model", model = "models/hunter/tubes/tube1x1x1d.mdl", bone = "v_weapon.FIVESEVEN_PARENT", rel = "slide", pos = Vector(0.296, 0, -3.654), angle = Angle(0, 135, 0), size = Vector(0.032, 0.032, 0.101), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["handle++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "v_weapon.FIVESEVEN_PARENT", rel = "body", pos = Vector(0, 2.506, 7.269), angle = Angle(0, 0, -11.212), size = Vector(0.089, 0.356, 0.128), color = Color(0, 0, 0, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["trigger trigger"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "v_weapon.FIVESEVEN_TRIGGER", rel = "", pos = Vector(0, 0.714, -0.16), angle = Angle(0, 0, 16.979), size = Vector(0.017, 0.082, 0.017), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["ironsight+"] = { type = "Model", model = "models/hunter/tubes/circle2x2d.mdl", bone = "v_weapon.FIVESEVEN_PARENT", rel = "slide", pos = Vector(0.754, 0.108, 2.464), angle = Angle(0, 90, 0), size = Vector(0.009, 0.009, 0.114), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["handle+"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.FIVESEVEN_PARENT", rel = "body", pos = Vector(0, 1.618, 7.83), angle = Angle(0, 0, 76.448), size = Vector(0.034, 0.034, 0.068), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["mag"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "v_weapon.FIVESEVEN_CLIP", rel = "", pos = Vector(0, 2.331, 0.402), angle = Angle(0, 0, -11.212), size = Vector(0.07, 0.287, 0.115), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["hammer body+++"] = { type = "Model", model = "models/hunter/tubes/tube1x1x1d.mdl", bone = "v_weapon.FIVESEVEN_PARENT", rel = "body", pos = Vector(0, -0.838, -0.675), angle = Angle(0, -135, 0), size = Vector(0.032, 0.032, 0.059), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["hammer body"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "v_weapon.FIVESEVEN_PARENT", rel = "slide", pos = Vector(0.232, 0, 2.796), angle = Angle(-16.253, 0, 0), size = Vector(0.123, 0.101, 0.032), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["thing that i dont now what its called"] = { type = "Model", model = "models/props_interiors/Radiator01a.mdl", bone = "v_weapon.FIVESEVEN_PARENT", rel = "slide", pos = Vector(0.045, -0.482, 0.953), angle = Angle(0, 90, 90), size = Vector(0.039, 0.065, 0.025), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["hammer body+"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "v_weapon.FIVESEVEN_PARENT", rel = "slide", pos = Vector(0.827, 0, 1.837), angle = Angle(0, 90, 90), size = Vector(0.103, 0.148, 0.035), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["mag+"] = { type = "Model", model = "models/weapons/shell.mdl", bone = "v_weapon.FIVESEVEN_CLIP", rel = "mag", pos = Vector(-0.32, -1.889, 0.014), angle = Angle(-90, 0, 0), size = Vector(0.619, 0.619, 0.619), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["body++++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.FIVESEVEN_SLIDE", rel = "slide", pos = Vector(0.163, 0, -3.645), angle = Angle(0, 90, 0), size = Vector(0.046, 0.061, 0.143), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["ironsight glow+"] = { type = "Model", model = "models/hunter/plates/plate.mdl", bone = "v_weapon.FIVESEVEN_PARENT", rel = "ironsight", pos = Vector(0.103, 0.324, -0.178), angle = Angle(0, 90, 0), size = Vector(0.016, 0.086, 0.016), color = Color(255, 0, 0, 255), surpresslightning = true, material = "models/debug/debugwhite", skin = 0, bodygroup = {} },
	["hammer hole"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "v_weapon.FIVESEVEN_PARENT", rel = "slide", pos = Vector(0.065, 0, 2.621), angle = Angle(0, 90, 16.252), size = Vector(0.041, 0.075, 0.071), color = Color(0, 0, 0, 255), surpresslightning = true, material = "models/debug/debugwhite", skin = 0, bodygroup = {} },
	["barrel"] = { type = "Model", model = "models/hunter/tubes/tube1x1x1.mdl", bone = "v_weapon.FIVESEVEN_PARENT", rel = "body", pos = Vector(0, -1.035, 2.207), angle = Angle(0, 0, 0), size = Vector(0.013, 0.013, 0.103), color = Color(185, 185, 185, 255), surpresslightning = false, material = "phoenix_storms/grey_chrome", skin = 0, bodygroup = {} },
	["hammer"] = { type = "Model", model = "models/Mechanics/robotics/b2.mdl", bone = "v_weapon.FIVESEVEN_PARENT", rel = "slide", pos = Vector(0.086, 0, 3.138), angle = Angle(51.57, 0, -90), size = Vector(0.016, 0.035, 0.03), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["ironsight glow++"] = { type = "Model", model = "models/hunter/plates/plate.mdl", bone = "v_weapon.FIVESEVEN_PARENT", rel = "ironsight", pos = Vector(0.254, 0.363, -0.178), angle = Angle(0, 0, 0), size = Vector(0.016, 0.041, 0.016), color = Color(255, 0, 0, 255), surpresslightning = true, material = "models/debug/debugwhite", skin = 0, bodygroup = {} },
	["ironsight glow"] = { type = "Model", model = "models/hunter/plates/plate.mdl", bone = "v_weapon.FIVESEVEN_PARENT", rel = "ironsight", pos = Vector(-0.036, 0.363, -0.178), angle = Angle(0, 0, 0), size = Vector(0.016, 0.041, 0.016), color = Color(255, 0, 0, 255), surpresslightning = true, material = "models/debug/debugwhite", skin = 0, bodygroup = {} },
	["body"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.FIVESEVEN_PARENT", rel = "", pos = Vector(0, -2.197, -8.978), angle = Angle(0, 0, 0), size = Vector(0.046, 0.046, 0.189), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["mag++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "v_weapon.FIVESEVEN_CLIP", rel = "mag", pos = Vector(0, 1.871, -0.325), angle = Angle(0, 0, 0.453), size = Vector(0.085, 0.025, 0.209), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} }
}

SWEP.WElements = {
	["slide"] = { type = "Model", model = "models/props_c17/FurnitureWashingmachine001a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body", pos = Vector(0, -0.542, 5.778), angle = Angle(0, 90, 0), size = Vector(0.05, 0.035, 0.165), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["ironsight front"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body", pos = Vector(0, -1.601, -0.401), angle = Angle(0, 0, -29.668), size = Vector(0.016, 0.016, 0.016), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["handle"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body", pos = Vector(0, 2.506, 7.269), angle = Angle(0, 0, -11.212), size = Vector(0.083, 0.402, 0.19), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["body++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body", pos = Vector(0, 0.035, 4.323), angle = Angle(0, 90, 0), size = Vector(0.074, 0.112, 0.643), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["ironsight++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "slide", pos = Vector(1.065, 0, 2.543), angle = Angle(0, 180, 0), size = Vector(0.009, 0.026, 0.014), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["ironsight glow+++"] = { type = "Model", model = "models/dav0r/hoverball.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "ironsight front", pos = Vector(0, 0, 0.134), angle = Angle(0, 0, 0), size = Vector(0.009, 0.009, 0.009), color = Color(255, 0, 0, 255), surpresslightning = true, material = "models/debug/debugwhite", skin = 0, bodygroup = {} },
	["trigger"] = { type = "Model", model = "models/hunter/tubes/tube1x1x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body", pos = Vector(0.236, 0.97, 5.022), angle = Angle(90, 0, 0), size = Vector(0.037, 0.037, 0.009), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["body+"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body", pos = Vector(0, -0.685, -0.701), angle = Angle(0, 0, 0), size = Vector(0.046, 0.061, 0.063), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["ironsight"] = { type = "Model", model = "models/hunter/tubes/circle2x2d.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "slide", pos = Vector(0.754, -0.109, 2.464), angle = Angle(180, 90, 0), size = Vector(0.009, 0.009, 0.114), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["hammer body++"] = { type = "Model", model = "models/hunter/tubes/tube1x1x1d.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "slide", pos = Vector(0.296, 0, -6.466), angle = Angle(0, 135, 0), size = Vector(0.032, 0.032, 0.162), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["handle++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body", pos = Vector(0, 2.506, 7.269), angle = Angle(0, 0, -11.212), size = Vector(0.089, 0.356, 0.128), color = Color(0, 0, 0, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["trigger trigger"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body", pos = Vector(0, 0.971, 5.172), angle = Angle(0, 0, 0), size = Vector(0.017, 0.082, 0.017), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["ironsight+"] = { type = "Model", model = "models/hunter/tubes/circle2x2d.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "slide", pos = Vector(0.754, 0.108, 2.464), angle = Angle(0, 90, 0), size = Vector(0.009, 0.009, 0.114), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["handle+"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body", pos = Vector(0, 1.618, 7.83), angle = Angle(0, 0, 76.448), size = Vector(0.034, 0.034, 0.068), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["hammer body"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "slide", pos = Vector(0.232, 0, 2.796), angle = Angle(-16.253, 0, 0), size = Vector(0.123, 0.101, 0.032), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["body"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(9.826, 2.039, -3.129), angle = Angle(0, 85.43, -88.373), size = Vector(0.046, 0.046, 0.189), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["hammer body+"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "slide", pos = Vector(0.827, 0, 1.837), angle = Angle(0, 90, 90), size = Vector(0.103, 0.148, 0.035), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["thing that i dont now what its called"] = { type = "Model", model = "models/props_interiors/Radiator01a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "slide", pos = Vector(0.045, -0.482, 0.953), angle = Angle(0, 90, 90), size = Vector(0.039, 0.065, 0.025), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["ironsight glow++"] = { type = "Model", model = "models/hunter/plates/plate.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "ironsight", pos = Vector(0.254, 0.363, -0.178), angle = Angle(0, 0, 0), size = Vector(0.016, 0.041, 0.016), color = Color(255, 0, 0, 255), surpresslightning = true, material = "models/debug/debugwhite", skin = 0, bodygroup = {} },
	["body++++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "slide", pos = Vector(0.163, 0, -3.645), angle = Angle(0, 90, 0), size = Vector(0.046, 0.061, 0.143), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["hammer hole"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "slide", pos = Vector(0.065, 0, 2.621), angle = Angle(0, 90, 16.252), size = Vector(0.041, 0.075, 0.071), color = Color(0, 0, 0, 255), surpresslightning = true, material = "models/debug/debugwhite", skin = 0, bodygroup = {} },
	["barrel"] = { type = "Model", model = "models/hunter/tubes/tube1x1x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body", pos = Vector(0, -1.028, -0.787), angle = Angle(0, 0, 0), size = Vector(0.013, 0.013, 0.013), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["hammer"] = { type = "Model", model = "models/Mechanics/robotics/b2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "slide", pos = Vector(0.086, 0, 3.138), angle = Angle(51.57, 0, -90), size = Vector(0.016, 0.035, 0.03), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["ironsight glow+"] = { type = "Model", model = "models/hunter/plates/plate.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "ironsight", pos = Vector(0.103, 0.324, -0.178), angle = Angle(0, 90, 0), size = Vector(0.016, 0.086, 0.016), color = Color(255, 0, 0, 255), surpresslightning = true, material = "models/debug/debugwhite", skin = 0, bodygroup = {} },
	["ironsight glow"] = { type = "Model", model = "models/hunter/plates/plate.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "ironsight", pos = Vector(-0.036, 0.363, -0.178), angle = Angle(0, 0, 0), size = Vector(0.016, 0.041, 0.016), color = Color(255, 0, 0, 255), surpresslightning = true, material = "models/debug/debugwhite", skin = 0, bodygroup = {} },
	["barrel hole"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "barrel", pos = Vector(0, 0, 0.079), angle = Angle(0, 0, 0), size = Vector(0.019, 0.019, 0.019), color = Color(0, 0, 0, 255), surpresslightning = true, material = "models/debug/debugwhite", skin = 0, bodygroup = {} },
	["body+++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body", pos = Vector(0, -0.524, -0.23), angle = Angle(0, 0, 30.85), size = Vector(0.046, 0.061, 0.017), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} }
}