AddCSLuaFile()

EFFECT.Author = "BFG"
EFFECT.Life = 0
/*---------------------------------------------------------
	EFFECT:Init(data)
---------------------------------------------------------*/
function EFFECT:Init(data)
	self.PlayerEnt 		= data:GetEntity()
	self.WeaponEnt 		= self.PlayerEnt:GetActiveWeapon()
	self.Attachment 	= data:GetAttachment()
	self.Origin 		= data:GetOrigin()

	self.Forward 		= data:GetNormal()
	self.Angle 			= self.Forward:Angle()
	self.Right 			= self.Angle:Right()
	self.Up 			= self.Angle:Up()
end

local Flash = Material("sprites/bronx/powbubble.png")

function EFFECT:Render()
	render.SetMaterial(Flash)
	render.DrawSprite( self:GetTracerShootPos(self.Origin, self.WeaponEnt, self.Attachment ), self.size or 30, self.size or 30, Color(255,255,255,225))
end

--[[
function EFFECT:Think()
	self.Life = self.Life + FrameTime() * 10
	self.size = math.random(10,25)
	return (self.Life < 1)	
end
--]]

function EFFECT:Think()
	self.Life = self.Life + FrameTime() * 16
	self.size = math.random(7,25)	
	return (self.Life < 1)	
end