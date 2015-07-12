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

/*---------------------------------------------------------
	EFFECT:Think()
---------------------------------------------------------*/
function EFFECT:Think()

	local start 		= self:GetTracerShootPos(self.Origin, self.WeaponEnt, self.Attachment)

	local emitter 		= ParticleEmitter(start)
	
	for i = 1, 3 do
		local rotator = 120 * i
		local angle = LocalPlayer():EyeAngles():Up():Angle()
		angle:RotateAroundAxis(LocalPlayer():GetAimVector(), rotator - 180) --BFG here, if you need to change the rotation of the prongs, simply edit the angle that is subtracted from "rotator".
		local direction = angle:Forward()
		for i = 1,5 do
			local particle = emitter:Add("effects/muzzleflash"..math.Rand(1,4), start)
			particle:SetVelocity(LocalPlayer():GetVelocity() + 60*i*direction)
			particle:SetDieTime(0.04)
			particle:SetStartAlpha(255)
			particle:SetStartSize(5)
			particle:SetEndSize(1)
			particle:SetRoll(math.Rand(180,480))
			particle:SetRollDelta(math.Rand(-1,1))
			particle:SetColor(255,255,255)	
			particle:SetAirResistance(20)
		end
	end

	emitter:Finish()

	return false
end

/*---------------------------------------------------------
	EFFECT:Render()
---------------------------------------------------------*/
function EFFECT:Render()
end
