
AddCSLuaFile( "shared.lua" )

SWEP.Wattle 					= true
---------
SWEP.PrintName 					= "JM Eagle P.G.I.W."
SWEP.Category 					= "Wattle Bronx"
SWEP.Base 						= "weapon_bronxbase_melee"
SWEP.Spawnable 					= true
SWEP.AdminOnly 					= false
SWEP.m_WeaponDeploySpeed 		= 1

SWEP.Author 					= "BFG"
SWEP.Contact 					= ""
SWEP.Purpose 					= ""
SWEP.Instructions 				= ""

SWEP.ViewModel = "models/weapons/c_stunstick.mdl"
SWEP.WorldModel = "models/props_canal/mattpipe.mdl"
SWEP.ViewModelFlip 				= false
SWEP.ViewModelFOV 				= 55
SWEP.ShowWorldModel = true

SWEP.Weight 					= 5
SWEP.AutoSwitchFrom 			= false
SWEP.AutoSwitchTo 				= false

SWEP.BobScale 					= 0
SWEP.SwayScale 					= 0
SWEP.BounceWeaponIcon 			= true
SWEP.DrawWeaponInfoBox 			= true
SWEP.DrawAmmo 					= false
SWEP.DrawCrosshair 				= false
SWEP.Slot 						= 1
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

SWEP.Primary.Damage 			= 80
SWEP.Primary.DamageFalloff		= 0.001
--SWEP.Primary.Sound				= Sound("Weapon_Pistol.NPC_Single")
SWEP.Primary.NumShots			= 1
SWEP.Primary.Delay				= 1


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

SWEP.UseIrons					= false
SWEP.UseScope					= false
SWEP.Zoom 						= 45
SWEP.SetFATOnShoot 				= false
SWEP.CVFireAnimIroned			= false

SWEP.DTFloats 					= {}
SWEP.DTBools 					= {}
SWEP.DTInts 					= {}

SWEP.ViewModelBoneMods = {
	["ValveBiped.Bip01_R_Finger31"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-3.254, -5.422, -5.422) },
	["ValveBiped.Bip01_R_Finger11"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 5.421, 0) },
	["ValveBiped.Bip01_R_Finger42"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 11.928, 0) },
	["ValveBiped.Bip01_R_Finger2"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 11.928, 0) },
	["ValveBiped.Bip01_R_Finger22"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 33.613, 0) },
	["ValveBiped.Bip01_R_Finger41"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 11.928, 0) },
	["ValveBiped.Bip01_R_Finger1"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 22.77, 0) },
	["ValveBiped.Bip01_R_Finger21"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 16.264, 0) },
	["ValveBiped.Bip01_R_Finger4"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 14.095, -9.759) },
	["ValveBiped.Bip01_R_Finger32"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 31.445, 11.928) },
	["ValveBiped.Bip01_R_Finger3"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 18.434, 0) },
	["ValveBiped.Bip01_R_Finger12"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 50.964, 0) },
	["ValveBiped.Bip01_R_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(0, 17.5, -6.731), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_R_Finger0"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-17.309, 0, 0) }
}

SWEP.VElements = {
	["pipe"] = { type = "Model", model = "models/props_canal/mattpipe.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(4.295, 2.148, -10.738), angle = Angle(-5.844, -180, 1.169), size = Vector(1.389, 1.389, 1.389), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}

SWEP.WElements = {}