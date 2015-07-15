
AddCSLuaFile( "shared.lua" )

SWEP.Wattle 					= true
---------
SWEP.PrintName 					= "Watermelon Pipebomb"
SWEP.Category 					= "Wattle Bronx"
SWEP.Base 						= "weapon_bronxbase_melee"
SWEP.Spawnable 					= true
SWEP.AdminOnly 					= false
SWEP.m_WeaponDeploySpeed 		= 1

SWEP.Author 					= "BFG"
SWEP.Contact 					= ""
SWEP.Purpose 					= ""
SWEP.Instructions 				= ""

SWEP.ViewModel = "models/weapons/c_grenade.mdl"
SWEP.WorldModel = "models/weapons/w_grenade.mdl"
SWEP.ViewModelFlip 				= false
SWEP.ViewModelFOV 				= 65
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
SWEP.Slot 						= 3
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
SWEP.Primary.Sound				= Sound("weapons/slam/throw.wav")
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
	["ValveBiped.Bip01_Spine4"] = { scale = Vector(1, 1, 1), pos = Vector(-3.889, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Grenade_body"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
}

SWEP.VElements = {
	["melonbody"] = { type = "Model", model = "models/props_junk/watermelon01.mdl", bone = "ValveBiped.Grenade_body", rel = "", pos = Vector(1.557, 1.399, -1.558), angle = Angle(-1.17, 73.636, -90), size = Vector(0.497, 0.497, 0.497), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["pinholder"] = { type = "Model", model = "models/weapons/w_eq_fraggrenade_thrown.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "melonbody", pos = Vector(-0.201, 0, 0.5), angle = Angle(0, -5.844, -94.676), size = Vector(1.6, 0.625, 1.2), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}

SWEP.WElements = {
	["pinholder"] = { type = "Model", model = "models/weapons/w_eq_fraggrenade_thrown.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "melonbody", pos = Vector(0, 0, 0.5), angle = Angle(-17.532, 3.506, -82.987), size = Vector(1.6, 0.82, 1.2), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["melonbody"] = { type = "Model", model = "models/props_junk/watermelon01.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(3.635, 3.635, 0.518), angle = Angle(-15.195, -143.767, -71.3), size = Vector(0.497, 0.497, 0.432), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}


function SWEP:PrimaryAttack()
	self:SetNextPrimaryFire(CurTime() + self.Primary.Delay)
	self.Thrown = true
	self:SendWeaponAnim(ACT_VM_THROW)
	self:ThrowMelonBomb()
	local owner = self:GetOwner()
	timer.Simple(self.Primary.Delay, function()
		if SERVER then
			owner:StripWeapon("weapon_bronx_melonbomb")
		end
	end)
end

function SWEP:ThrowMelonBomb()
	local bomb = ents.Create("ent_bronx_watermelonbomb")
		bomb:SetOwner(self:GetOwner())
		bomb:SetPos(self:GetOwner():GetShootPos())
		bomb:SetAngles(AngleRand())
		bomb:Spawn()

		bomb:GetPhysicsObject():SetVelocity((self:GetOwner():GetAimVector() * 500) + self:GetOwner():GetVelocity())
end