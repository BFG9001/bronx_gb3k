
function EFFECT:Init(data)

	if(!self:IsValid()) then return end

	self.Parent = data:GetEntity()
	if !(IsValid(self.Parent)) then return end
	self.Entity:SetParent(self.Parent)
	self.Entity:SetModel("models/weapons/w_grenade.mdl")
	local radius = tonumber(data:GetRadius()) or 100
	if(radius > 1) then
		self.Size = radius
	end
	self.Entity:SetRenderBounds(Vector()*self.Size*(-2),Vector()*self.Size*2)

	
	local light = DynamicLight( self:EntIndex() )
            light.Pos            = data:GetOrigin()
            light.Size            = 300
            light.Decay            = 0
            light.R                = 25
            light.G                = 255
            light.B                = 25
            light.Brightness    = 2
            light.DieTime        = CurTime() + 0.025
          
	
end
