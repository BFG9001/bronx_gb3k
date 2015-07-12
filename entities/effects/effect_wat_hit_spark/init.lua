
//local Flare = Material( "sprites/yellowflare" )

local params = {
	["$basetexture"] = "sprites/yellowflare",
	["$nodecal"] = 1,
	["$model"] = 1,
	["$additive"] = 1,
	["$nocull"] = 1,
}
local Flare = CreateMaterial("WatHitFlare","UnlitGeneric",params);

local LifeTime = 0.1

/*---------------------------------------------------------
	EFFECT:Init(data)
---------------------------------------------------------*/
function EFFECT:Init(data)
	self.Origin 		= data:GetOrigin()

	self.Forward 		= data:GetNormal()
	self.Angle 			= self.Forward:Angle()
	self.Right 			= self.Angle:Right()
	self.Up 			= self.Angle:Up()
	
	self.DieTime 		= CurTime() + LifeTime - (LocalPlayer():Ping()/1000)
end

/*---------------------------------------------------------
	EFFECT:Think()
---------------------------------------------------------*/
function EFFECT:Think()
	if(!IsValid(self)) then return false end
	return CurTime() < self.DieTime
end

/*---------------------------------------------------------
	EFFECT:Render()
---------------------------------------------------------*/
function EFFECT:Render()
	if(!IsValid(self)) then return end
	//cam.Start3D2D( self.Origin, self.Angle, 1 )
		//surface.SetDrawColor( 255, 255, 255, 255*((self.DieTime-CurTime())/LifeTime) )
		//surface.SetMaterial(Flare)
		//surface.DrawTexturedRect( 0, 0, 16, 16 )
	//cam.End3D2D()
	
	render.SetMaterial( Flare );
	render.DrawSprite( self.Origin, 15, 15, Color(255,255,0,255*((self.DieTime-CurTime())/LifeTime)) );
end
