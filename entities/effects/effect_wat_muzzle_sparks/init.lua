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
	//Muzzle flash like sparks
	/*
	for i = 1,5 do
		local particle = emitter:Add("effects/spark", start)
		particle:SetVelocity(LocalPlayer():GetVelocity() + 250*i*LocalPlayer():GetAimVector())
		particle:SetDieTime(0.04)
		particle:SetStartAlpha(255)
		particle:SetStartSize(10)
		particle:SetEndSize(1)
		particle:SetRoll(math.Rand(180,480))
		particle:SetRollDelta(math.Rand(-1,1))
		particle:SetColor(255,255,255)	
		particle:SetAirResistance(20)
	end
	*/
	
	local numSparks = math.Rand(4,5)						//number of sparks
	local degsep = 360/numSparks							//degree separation
	for i = 1, numSparks do
		local rot = degsep*i + math.Rand(-20,20)			//rotation
//		local vel = 300
		local vel = math.Rand(100,300)						//sideways vel
	
		local particle = emitter:Add("effects/spark", start)
		particle:SetVelocity(LocalPlayer():GetVelocity() + 800*LocalPlayer():GetAimVector() + vel*math.sin(rot)*self.Up + vel*math.cos(rot)*self.Right )
		particle:SetDieTime(0.1)
		particle:SetStartAlpha(255)
		particle:SetStartSize(1)
		particle:SetEndSize(0)
		particle:SetRoll(rot + 90)
		particle:SetRollDelta(math.Rand(-1,1))
		particle:SetColor(255,255,255)	
		particle:SetAirResistance(1000)
		particle:SetGravity(Vector(0,0,-1500))
	end

	emitter:Finish()

	return false
end

/*---------------------------------------------------------
	EFFECT:Render()
---------------------------------------------------------*/
function EFFECT:Render()
end
