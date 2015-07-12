
local LaserBeam = Material( "sprites/bluelaser1" )

TRACER_FLAG_USEATTACHMENT	= 0x0002;

function EFFECT:GetTracerOrigin( data )

	-- this is almost a direct port of GetTracerOrigin in fx_tracer.cpp
	local start = data:GetStart();
	
	-- use attachment?
	if( bit.band( data:GetFlags(), TRACER_FLAG_USEATTACHMENT ) == TRACER_FLAG_USEATTACHMENT ) then

		local entity = data:GetEntity();
		
		if( not IsValid( entity ) ) then return start; end
		if( not game.SinglePlayer() and entity:IsEFlagSet( EFL_DORMANT ) ) then return start; end
		
		if( entity:IsWeapon() and entity:IsCarriedByLocalPlayer() ) then
			-- can't be done, can't call the real function
			-- local origin = weapon:GetTracerOrigin();
			-- if( origin ) then
			-- 	return origin, angle, entity;
			-- end
			
			-- use the view model
			local pl = entity:GetOwner();
			if( IsValid( pl ) ) then
				local vm = pl:GetViewModel();
				if( IsValid( vm ) and not LocalPlayer():ShouldDrawLocalPlayer() ) then
					entity = vm;
				else
					-- HACK: fix the model in multiplayer
					if( entity.WorldModel ) then
						entity:SetModel( entity.WorldModel );
					end
				end
			end
		end

		local attachment = entity:GetAttachment( data:GetAttachment() );
		if( attachment ) then
			start = attachment.Pos;
		end

	end
	
	return start;

end


function EFFECT:Init( data )

//	if(!data:IsValid()) then return end
	if(!self:IsValid()) then return end

	self.StartPos = self:GetTracerOrigin( data );
	self.EndPos = data:GetOrigin();
	
	self.Entity:SetRenderBoundsWS( self.StartPos, self.EndPos );

	local diff = ( self.EndPos - self.StartPos );
	
	self.Normal = diff:GetNormal();
	self.StartTime = 0;
	self.LifeTime = 0.01
	
end


function EFFECT:Think()
	if(!IsValid(self)) then return end

	self.StartTime = self.StartTime + FrameTime(); 
	
	print("RIP")

	return self.StartTime < self.LifeTime;
	
end


function EFFECT:Render()

	if(!IsValid(self)) then return end

	render.SetMaterial( LaserBeam );
	render.DrawBeam( self.StartPos, self.EndPos, 10, 0, 1, Color(0, 0, 255, 255) );
	
end

--[[
TRACER_FLAG_USEATTACHMENT	= 0x0002;

EFFECT.Speed				= 16000;
EFFECT.Length				= 128;

local UnitsPerPuff = 20

function EFFECT:GetTracerOrigin( data )

	-- this is almost a direct port of GetTracerOrigin in fx_tracer.cpp
	local start = data:GetStart();
	
	-- use attachment?
	if( bit.band( data:GetFlags(), TRACER_FLAG_USEATTACHMENT ) == TRACER_FLAG_USEATTACHMENT ) then

		local entity = data:GetEntity();
		
		if( not IsValid( entity ) ) then return start; end
		if( not game.SinglePlayer() and entity:IsEFlagSet( EFL_DORMANT ) ) then return start; end
		
		if( entity:IsWeapon() and entity:IsCarriedByLocalPlayer() ) then
			-- can't be done, can't call the real function
			-- local origin = weapon:GetTracerOrigin();
			-- if( origin ) then
			-- 	return origin, angle, entity;
			-- end
			
			-- use the view model
			local pl = entity:GetOwner();
			if( IsValid( pl ) ) then
				local vm = pl:GetViewModel();
				if( IsValid( vm ) and not LocalPlayer():ShouldDrawLocalPlayer() ) then
					entity = vm;
				else
					-- HACK: fix the model in multiplayer
					if( entity.WorldModel ) then
						entity:SetModel( entity.WorldModel );
					end
				end
			end
		end

		local attachment = entity:GetAttachment( data:GetAttachment() );
		if( attachment ) then
			start = attachment.Pos;
		end

	end
	
	return start;

end


function EFFECT:Init( data )

//	if(!data:IsValid()) then return end
	if(!self:IsValid()) then return end

	self.StartPos = self:GetTracerOrigin( data );
	self.EndPos = data:GetOrigin();
	
	self.Entity:SetRenderBoundsWS( self.StartPos, self.EndPos );

	local diff = ( self.EndPos - self.StartPos );
	
	self.Normal = diff:GetNormal();
	self.StartTime = 0;
	self.LifeTime = ( diff:Length() + self.Length ) / self.Speed;
	

end


function EFFECT:Think()

	if(!IsValid(self)) then return end

	local emitter 		= ParticleEmitter(self.StartPos)
	/*
	for i = 1,math.Round(self.StartPos:Distance(self.EndPos)/UnitsPerPuff) do
		local dir = self.EndPos - self.StartPos
		local particle = emitter:Add("particle/particle_smokegrenade", self.StartPos + dir:GetNormalized()*(UnitsPerPuff*i))
		particle:SetVelocity(2000*LocalPlayer():GetAimVector() + VectorRand()*2000)
		particle:SetDieTime(0.6)
		particle:SetStartAlpha(100)
		particle:SetStartSize(6)
		particle:SetEndSize(6)
		particle:SetRoll(math.Rand(180,480))
		particle:SetRollDelta(math.Rand(-1,1))
		particle:SetColor(200,200,200)	
		particle:SetAirResistance(10000)
	end
	*/
	
	for i = 1,math.Round(self.StartPos:Distance(self.EndPos)/UnitsPerPuff) do
		local dir = self.EndPos - self.StartPos
		local particle = emitter:Add("particle/particle_smokegrenade", self.StartPos + dir:GetNormalized()*(UnitsPerPuff*i))
		particle:SetVelocity(20*LocalPlayer():GetAimVector() + VectorRand()*40)
		particle:SetDieTime(0.6)
		particle:SetStartAlpha(100)
		particle:SetStartSize(6)
		particle:SetEndSize(1)
		particle:SetRoll(math.Rand(180,480))
		particle:SetRollDelta(math.Rand(-1,1))
		particle:SetColor(200,200,200)	
		particle:SetAirResistance(10)
	end
	
	return false

end


function EFFECT:Render()
end
]]--
