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

	local viewmodel
	if (!self.PlayerEnt) then return end
	if(self.PlayerEnt == LocalPlayer() and self.PlayerEnt == GetViewEntity()) then
		viewmodel = self.PlayerEnt:GetViewModel()
	else
		if(self.PlayerEnt.GetActiveWeapon) then
			viewmodel = self.PlayerEnt:GetActiveWeapon()
		end
	end

	if(!IsValid(viewmodel)) then return end
	
	local attach = viewmodel:GetAttachment(2)
	
	if(!IsValid(attach)) then return end
	
	/*
	if(!self.PlayerEnt) then return end
	if(!IsValid(self.PlayerEnt:GetViewModel())) then return end
	local attach = self.PlayerEnt:GetViewModel():GetAttachment(2)		//replace with findshelleject method here
	
	if(!attach) then return end
	*/
	
	local start 		= attach.Pos

	local emitter 		= ParticleEmitter(start)
	
	local particle = emitter:Add("particle/particle_smokegrenade", start)
	particle:SetVelocity(self.Right*100 + self.PlayerEnt:GetVelocity())
//	particle:SetGravity(self.Right*6000)
	particle:SetDieTime(0.5)
	particle:SetStartAlpha(255)
	particle:SetEndAlpha(0)
	particle:SetStartSize(4)
	particle:SetEndSize(6)
	particle:SetRoll(math.Rand(180,480))
	particle:SetRollDelta(math.Rand(-1,1))
	particle:SetColor(255,255,255)	
	particle:SetAirResistance(800)
	
	emitter:Finish()

	return false
end

/*---------------------------------------------------------
	EFFECT:Render()
---------------------------------------------------------*/
function EFFECT:Render()
end
