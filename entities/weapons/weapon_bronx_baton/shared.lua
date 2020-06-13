
AddCSLuaFile( "shared.lua" )

SWEP.Wattle 					= true
---------
SWEP.PrintName 					= "Baton"
SWEP.Category 					= "Wattle Bronx"
SWEP.Base 						= "weapon_bronxbase_melee"
SWEP.Spawnable 					= true
SWEP.AdminOnly 					= false
SWEP.m_WeaponDeploySpeed 		= 1

SWEP.Author 					= "BFG"
SWEP.Contact 					= ""
SWEP.Purpose 					= ""
SWEP.Instructions 				= ""

SWEP.ViewModel = "models/weapons/cstrike/c_knife_t.mdl"
SWEP.WorldModel = "models/weapons/w_knife_t.mdl"
SWEP.ViewModelFlip 				= false
SWEP.ViewModelFOV 				= 45
SWEP.ShowWorldModel = false

SWEP.Weight 					= 5
SWEP.AutoSwitchFrom 			= false
SWEP.AutoSwitchTo 				= false

SWEP.BobScale 					= 0
SWEP.SwayScale 					= 0
SWEP.BounceWeaponIcon 			= true
SWEP.DrawWeaponInfoBox 			= true
SWEP.DrawAmmo 					= false
SWEP.DrawCrosshair 				= false
SWEP.Slot 						= 0
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
SWEP.Secondary.Automatic 		= true
--Melee stuff
SWEP.Secondary.Damage = 11
SWEP.Secondary.Delay = .75
SWEP.Secondary.Sound = Sound("weapons/slam/throw.wav")

SWEP.UseHands 					= true
SWEP.AccurateCrosshair 			= false
---------
SWEP.HoldType = "melee2"

SWEP.Primary.Damage 			= 40
SWEP.Primary.DamageFalloff		= 0.001
--SWEP.Primary.Sound				= Sound("Weapon_Pistol.NPC_Single")
SWEP.Primary.NumShots			= 1
SWEP.Primary.Delay				= .5

SWEP.MeleeWepStunChancePercent = 75


SWEP.VMPosOffset 				= Vector(0,0,0)
SWEP.VMAngOffset				= Angle(0,0,0)
SWEP.SprintPos	 				= { Vector(4, 0, 3.119), Vector(1.48, 0, 3.16), Vector(2.599, 0, 2.839) }
SWEP.SprintAng					= { Angle(-14.775, 0, 0), Angle(-10.554, -9.146, 0), Angle(-14.664, -9.146, 0) }
SWEP.WalkPos 					= { Vector(-0.5,-1,-1), Vector(0,0,1), Vector(0.5,-1,-1) }
SWEP.WalkAng					= { Angle(-0.5,1,-2), Angle(0.5,0,2), Angle(-0.5,-1,3) }
SWEP.InspectPos 				= { Vector(12.229, -7.091, -5.801), Vector(0.36, -4.553, -11.716) }
SWEP.InspectAng 				= { Angle(28.993, 44.664, 26.545), Angle(38.395, 0, 0) }
SWEP.IronSightsPos 				= Vector(-6.675, -3.5, 3.85)
SWEP.IronSightsAng 				= Angle(0, 0, 0)
SWEP.SwayPosDiv					= 40
SWEP.SwayAngDiv					= 20

SWEP.MeleePos = { Vector(0,0,0), Vector(4.215, -7.862, -9.079), Vector(4.215, -7.862, 3.246) }
SWEP.MeleeAng = { Angle(0,0,0), Angle(28.361, 33.673, -1.783), Angle(-14.16, 70, -1.783) }

SWEP.HitSound = Sound("physics/plastic/plastic_barrel_impact_bullet2.wav")
SWEP.MeleeAnimEnum = ACT_VM_PRIMARYATTACK

SWEP.UseIrons					= false
SWEP.UseScope					= false
SWEP.Zoom 						= 45
SWEP.SetFATOnShoot 				= false
SWEP.CVFireAnimIroned			= false

SWEP.DTFloats 					= {}
SWEP.DTBools 					= {}
SWEP.DTInts 					= {}

SWEP.ViewModelBoneMods = {
	["ValveBiped.Bip01_L_UpperArm"] = { scale = Vector(1, 1, 1), pos = Vector(30, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_R_UpperArm"] = { scale = Vector(1, 1, 1), pos = Vector(0, -2.899, 0.059), angle = Angle(0, 0, 0) },
	["v_weapon.Knife_Handle"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(-8.506, 0, 0) },
	["ValveBiped.Bip01_R_Hand"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-29.246, -27.83, 79.499) }
}

SWEP.VElements = {
	["grip+"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.Knife_Handle", rel = "body", pos = Vector(-2.053, 4.263, 1.455), angle = Angle(0, -23.32, 90), size = Vector(0.041, 0.041, 0.009), color = Color(85, 85, 85, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["body"] = { type = "Model", model = "models/props_borealis/bluebarrel001.mdl", bone = "v_weapon.Knife_Handle", rel = "", pos = Vector(0.74, -0.239, 6.027), angle = Angle(-3.389, 0, 180), size = Vector(0.039, 0.039, 0.3), color = Color(85, 85, 85, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["grip"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.Knife_Handle", rel = "body", pos = Vector(-0.324, 0.579, 1.455), angle = Angle(0, -23.32, 90), size = Vector(0.032, 0.032, 0.092), color = Color(85, 85, 85, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} }
}

SWEP.WElements = {
	["body"] = { type = "Model", model = "models/props_borealis/bluebarrel001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(4.568, 1.12, -5.36), angle = Angle(-10.516, -147.65, 7.315), size = Vector(0.054, 0.054, 0.43), color = Color(85, 85, 85, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["grip"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body", pos = Vector(-0.24, 0.579, 3.226), angle = Angle(0, -23.32, 90), size = Vector(0.041, 0.041, 0.116), color = Color(85, 85, 85, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["grip+"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body", pos = Vector(-2.207, 5.142, 3.236), angle = Angle(0, -23.32, 90), size = Vector(0.052, 0.052, 0.009), color = Color(85, 85, 85, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} }
}