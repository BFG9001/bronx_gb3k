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
	
	for i = 1,2 do
		local particle = emitter:Add("particle/particle_smokegrenade", start)
		particle:SetVelocity(2000*LocalPlayer():GetAimVector() + VectorRand()*2000)
		particle:SetDieTime(0.5)
		particle:SetStartAlpha(100)
		particle:SetStartSize(6)
		particle:SetEndSize(6)
		particle:SetRoll(math.Rand(180,480))
		particle:SetRollDelta(math.Rand(-1,1))
		particle:SetColor(200,200,200)	
		particle:SetAirResistance(10000)
	end
	
	emitter:Finish()

	return false
end

/*---------------------------------------------------------
	EFFECT:Render()
---------------------------------------------------------*/
function EFFECT:Render()
end
