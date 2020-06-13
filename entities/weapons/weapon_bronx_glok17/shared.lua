
AddCSLuaFile( "shared.lua" )

SWEP.Wattle 					= true
---------
SWEP.PrintName 					= "Glok-17"
SWEP.Category 					= "Wattle Bronx"
SWEP.Base 						= "weapon_bronxbase_bullet"
SWEP.Spawnable 					= true
SWEP.AdminOnly 					= false
SWEP.m_WeaponDeploySpeed 		= 1.5

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

SWEP.Primary.ClipSize			= 17
SWEP.Primary.DefaultClip 		= 153
SWEP.Primary.Ammo 				= "pistol"
SWEP.Primary.Automatic 			= false

SWEP.Secondary.ClipSize 		= -1
SWEP.Secondary.DefaultClip 		= -1
SWEP.Secondary.Ammo 			= "none"
SWEP.Secondary.Automatic 		= true
--Melee stuff
SWEP.Secondary.Damage = 18
SWEP.Secondary.Delay = .75
SWEP.Secondary.Sound = Sound("weapons/slam/throw.wav")

SWEP.UseHands 					= true
SWEP.AccurateCrosshair 			= false
---------
SWEP.HoldType = "pistol"

SWEP.Primary.Damage 			= 36
SWEP.Primary.DamageFalloff		= 0.001
SWEP.Primary.Sound				= Sound("Weapon_Pistol.NPC_Single")
SWEP.Primary.NumShots			= 1
SWEP.Primary.Delay				= 60/550
SWEP.Primary.Cone				= 0.0075
SWEP.Primary.ClumpCone			= 0
SWEP.Primary.Tracer				= 1


SWEP.RecoilPitchAdd 			= 1.5
SWEP.RecoilPitchMul 			= 0.1
SWEP.RecoilYawAdd 				= 0.5
SWEP.RecoilYawMul 				= 0.01

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
	["slide"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "v_weapon.FIVESEVEN_SLIDE", rel = "", pos = Vector(0, 0.488, 0.239), angle = Angle(0, 0, 0), size = Vector(0.097, 0.303, 0.097), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["handle"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "v_weapon.FIVESEVEN_PARENT", rel = "body", pos = Vector(0, 2.091, 1.432), angle = Angle(0, 0, -13.202), size = Vector(0.074, 0.363, 0.173), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["barrel+"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "v_weapon.FIVESEVEN_PARENT", rel = "body", pos = Vector(0, -0.925, -1.576), angle = Angle(0, 0, 0), size = Vector(0.079, 0.064, 0.185), color = Color(123, 123, 123, 255), surpresslightning = false, material = "phoenix_storms/grey_chrome", skin = 0, bodygroup = {} },
	["ironsight dot"] = { type = "Model", model = "models/dav0r/hoverball.mdl", bone = "v_weapon.FIVESEVEN_PARENT", rel = "ironsight", pos = Vector(0.079, 0.079, 0), angle = Angle(0, 0, 0), size = Vector(0.016, 0.016, 0.016), color = Color(255, 255, 255, 255), surpresslightning = true, material = "models/debug/debugwhite", skin = 0, bodygroup = {} },
	["trigger"] = { type = "Model", model = "models/hunter/tubes/tube1x1x1d.mdl", bone = "v_weapon.FIVESEVEN_TRIGGER", rel = "", pos = Vector(0.216, -0.134, -0.875), angle = Angle(-24.262, 90, -90), size = Vector(0.052, 0.037, 0.009), color = Color(85, 85, 85, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["mag"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "v_weapon.FIVESEVEN_CLIP", rel = "", pos = Vector(0, 1.909, 0.092), angle = Angle(0, 0, -13.152), size = Vector(0.067, 0.256, 0.092), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["ironsight"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "v_weapon.FIVESEVEN_PARENT", rel = "slide", pos = Vector(-0.295, -1.17, -0.658), angle = Angle(0, 90, 0), size = Vector(0.018, 0.034, 0.018), color = Color(85, 85, 85, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["body"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "v_weapon.FIVESEVEN_PARENT", rel = "", pos = Vector(0, -2.063, -3.231), angle = Angle(0, 0, 0), size = Vector(0.096, 0.037, 0.483), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["ironsight dot++"] = { type = "Model", model = "models/dav0r/hoverball.mdl", bone = "v_weapon.FIVESEVEN_PARENT", rel = "ironsight++", pos = Vector(0.079, 0, 0), angle = Angle(0, 0, 0), size = Vector(0.016, 0.016, 0.016), color = Color(255, 255, 255, 255), surpresslightning = true, material = "models/debug/debugwhite", skin = 0, bodygroup = {} },
	["ironsight+"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "v_weapon.FIVESEVEN_PARENT", rel = "slide", pos = Vector(0.294, -1.17, -0.658), angle = Angle(0, 90, 0), size = Vector(0.018, 0.034, 0.018), color = Color(85, 85, 85, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["slide++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "v_weapon.FIVESEVEN_SLIDE", rel = "slide", pos = Vector(0, 2.838, 0.37), angle = Angle(0, 0, 0), size = Vector(0.097, 0.184, 0.034), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["mag+"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "v_weapon.FIVESEVEN_CLIP", rel = "mag", pos = Vector(0, 1.75, 0.092), angle = Angle(0, 0, 0.101), size = Vector(0.067, 0.02, 0.162), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["trigger body"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "v_weapon.FIVESEVEN_PARENT", rel = "body", pos = Vector(0, 1.435, -0.686), angle = Angle(0, 0, 0), size = Vector(0.068, 0.024, 0.203), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["body+"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "v_weapon.FIVESEVEN_PARENT", rel = "body", pos = Vector(0, 0.004, -3.631), angle = Angle(0, 0, 0), size = Vector(0.081, 0.03, 0.358), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["slide+++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "v_weapon.FIVESEVEN_SLIDE", rel = "slide", pos = Vector(0, 5.495, 0), angle = Angle(0, 0, 0), size = Vector(0.097, 0.263, 0.097), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["slide+"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "v_weapon.FIVESEVEN_SLIDE", rel = "slide", pos = Vector(0.372, 2.838, 0), angle = Angle(90, 0, 0), size = Vector(0.097, 0.184, 0.034), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["ironsight++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "v_weapon.FIVESEVEN_PARENT", rel = "slide", pos = Vector(0, 6.953, -0.575), angle = Angle(-38.061, 90, 0), size = Vector(0.018, 0.014, 0.018), color = Color(85, 85, 85, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["barrel"] = { type = "Model", model = "models/hunter/tubes/tube1x1x1.mdl", bone = "v_weapon.FIVESEVEN_PARENT", rel = "body", pos = Vector(0, -0.796, -6.095), angle = Angle(0, 0, 0), size = Vector(0.017, 0.017, 0.072), color = Color(123, 123, 123, 255), surpresslightning = false, material = "phoenix_storms/grey_chrome", skin = 0, bodygroup = {} },
	["handle thingy"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.FIVESEVEN_PARENT", rel = "handle", pos = Vector(0, -2.106, 0.426), angle = Angle(0, 0, 13.88), size = Vector(0.039, 0.017, 0.039), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["trigger body+"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "v_weapon.FIVESEVEN_PARENT", rel = "body", pos = Vector(0, 0.796, -1.703), angle = Angle(0, 0, 90), size = Vector(0.068, 0.024, 0.119), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["ironsight dot+"] = { type = "Model", model = "models/dav0r/hoverball.mdl", bone = "v_weapon.FIVESEVEN_PARENT", rel = "ironsight+", pos = Vector(0.079, -0.08, 0), angle = Angle(0, 0, 0), size = Vector(0.016, 0.016, 0.016), color = Color(255, 255, 255, 255), surpresslightning = true, material = "models/debug/debugwhite", skin = 0, bodygroup = {} },
	["barrel++"] = { type = "Model", model = "models/props_junk/PopCan01a.mdl", bone = "v_weapon.FIVESEVEN_PARENT", rel = "body", pos = Vector(0, -0.255, -4.739), angle = Angle(0, 0, 0), size = Vector(0.027, 0.027, 0.363), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["handle+"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.FIVESEVEN_PARENT", rel = "body", pos = Vector(0, 0.966, 1.838), angle = Angle(0, 0, 71.872), size = Vector(0.028, 0.028, 0.068), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} }
}

SWEP.WElements = {
	["slide"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body", pos = Vector(0, -0.763, 1.261), angle = Angle(0, 0, 90), size = Vector(0.097, 0.303, 0.097), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["handle"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body", pos = Vector(0, 2.091, 1.432), angle = Angle(0, 0, -13.202), size = Vector(0.074, 0.363, 0.173), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["barrel+"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body", pos = Vector(0, -0.925, -1.576), angle = Angle(0, 0, 0), size = Vector(0.079, 0.064, 0.185), color = Color(123, 123, 123, 255), surpresslightning = false, material = "phoenix_storms/grey_chrome", skin = 0, bodygroup = {} },
	["ironsight++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "slide", pos = Vector(0, 6.953, -0.575), angle = Angle(-38.061, 90, 0), size = Vector(0.018, 0.014, 0.018), color = Color(85, 85, 85, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["trigger"] = { type = "Model", model = "models/hunter/tubes/tube1x1x1d.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body", pos = Vector(0, 0, -1.474), angle = Angle(-26.701, 90, -90), size = Vector(0.052, 0.037, 0.009), color = Color(85, 85, 85, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["body+"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body", pos = Vector(0, 0.004, -3.631), angle = Angle(0, 0, 0), size = Vector(0.081, 0.03, 0.358), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["ironsight"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "slide", pos = Vector(-0.295, -1.17, -0.658), angle = Angle(0, 90, 0), size = Vector(0.018, 0.034, 0.018), color = Color(85, 85, 85, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["body"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(4.322, 1.511, -2.415), angle = Angle(0, 85.074, -89.795), size = Vector(0.096, 0.037, 0.483), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["ironsight dot++"] = { type = "Model", model = "models/dav0r/hoverball.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "ironsight++", pos = Vector(0.079, 0, 0), angle = Angle(0, 0, 0), size = Vector(0.016, 0.016, 0.016), color = Color(255, 255, 255, 255), surpresslightning = true, material = "models/debug/debugwhite", skin = 0, bodygroup = {} },
	["ironsight+"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "slide", pos = Vector(0.294, -1.17, -0.658), angle = Angle(0, 90, 0), size = Vector(0.018, 0.034, 0.018), color = Color(85, 85, 85, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["slide++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "slide", pos = Vector(0, 2.838, 0.37), angle = Angle(0, 0, 0), size = Vector(0.097, 0.184, 0.034), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["barrel hole"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "barrel", pos = Vector(0, 0, 0.159), angle = Angle(0, 0, 0), size = Vector(0.028, 0.028, 0.028), color = Color(0, 0, 0, 255), surpresslightning = true, material = "models/debug/debugwhite", skin = 0, bodygroup = {} },
	["ironsight dot+"] = { type = "Model", model = "models/dav0r/hoverball.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "ironsight+", pos = Vector(0.079, -0.08, 0), angle = Angle(0, 0, 0), size = Vector(0.016, 0.016, 0.016), color = Color(255, 255, 255, 255), surpresslightning = true, material = "models/debug/debugwhite", skin = 0, bodygroup = {} },
	["barrel++"] = { type = "Model", model = "models/props_junk/PopCan01a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body", pos = Vector(0, -0.255, -4.619), angle = Angle(0, 0, 0), size = Vector(0.027, 0.027, 0.363), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["slide+++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "slide", pos = Vector(0, 5.495, 0), angle = Angle(0, 0, 0), size = Vector(0.097, 0.263, 0.097), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["handle thingy"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "handle", pos = Vector(0, -2.106, 0.426), angle = Angle(0, 0, 13.88), size = Vector(0.039, 0.017, 0.039), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["barrel"] = { type = "Model", model = "models/hunter/tubes/tube1x1x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body", pos = Vector(0, -0.796, -6.095), angle = Angle(0, 0, 0), size = Vector(0.017, 0.017, 0.072), color = Color(123, 123, 123, 255), surpresslightning = false, material = "phoenix_storms/grey_chrome", skin = 0, bodygroup = {} },
	["slide+"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "slide", pos = Vector(0.372, 2.838, 0), angle = Angle(90, 0, 0), size = Vector(0.097, 0.184, 0.034), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["trigger body+"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body", pos = Vector(0, 0.796, -1.703), angle = Angle(0, 0, 90), size = Vector(0.068, 0.024, 0.119), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["ironsight dot"] = { type = "Model", model = "models/dav0r/hoverball.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "ironsight", pos = Vector(0.079, 0.079, 0), angle = Angle(0, 0, 0), size = Vector(0.016, 0.016, 0.016), color = Color(255, 255, 255, 255), surpresslightning = true, material = "models/debug/debugwhite", skin = 0, bodygroup = {} },
	["trigger body"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body", pos = Vector(0, 1.435, -0.686), angle = Angle(0, 0, 0), size = Vector(0.068, 0.024, 0.203), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["handle+"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body", pos = Vector(0, 0.966, 1.838), angle = Angle(0, 0, 71.872), size = Vector(0.028, 0.028, 0.068), color = Color(123, 123, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} }
}