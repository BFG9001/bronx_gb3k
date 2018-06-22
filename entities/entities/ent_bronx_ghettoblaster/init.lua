local model = "models/sligwolf/grocel/radio/ghettoblaster.mdl" -- What model should it be?
local classname = "ent_bronx_ghettoblaster" -- This should be the name of the folder containing this file.
local ShouldSetOwner = false -- Set the entity's owner?
local StartingHP = 300
-------------------------------
AddCSLuaFile( "cl_init.lua" )
AddCSLuaFile( "shared.lua" )
include( 'shared.lua' )
-------------------------------

--------------------
-- Spawn Function --
--------------------
function ENT:SpawnFunction( ply, tr )

	if ( !tr.Hit ) then return end
	local SpawnPos = tr.HitPos + tr.HitNormal * 25
	local ent = ents.Create( classname )
	ent:SetPos( SpawnPos )
	ent:Spawn()
	ent:Activate()
	if ShouldSetOwner then
		ent.Owner = ply
	end
	return ent
	
end

----------------
-- Initialize --
----------------
function ENT:Initialize()
	
	self:SetModel( model )
	self:PhysicsInit( SOLID_VPHYSICS )
	self:SetMoveType( MOVETYPE_NONE )
	self:SetSolid( SOLID_VPHYSICS )
	local phys = self:GetPhysicsObject()
	if (phys:IsValid()) then
		phys:Wake()
	end
	self:SetHealth(StartingHP)
end

-----------------
-- Take Damage -- 
-----------------
function ENT:OnTakeDamage( dmginfo )
	--self:TakePhysicsDamage( dmginfo )
	self:SetHealth(self:Health()-dmginfo:GetDamage())
	local percent = self:Health()/StartingHP
	local col = 255 * percent
	self:SetColor(Color(col, col, col, 255))
end

------------
-- On use --
------------
function ENT:Use( activator, caller )

end

-----------
-- Think --
-----------
function ENT:Think()
	if(!self:IsValid()) then return end

	if(self:Health() <= 0) then
		local FX = EffectData()
			FX:SetOrigin(self:GetPos() + Vector( 0, 0, 60 ))
		util.Effect("effect_bronx_explosionpow", FX)
		util.Effect("HelicopterMegaBomb", FX)
		--BroadcastLua( 'chat.AddText( Color( 50, 255, 50), "A radio has been destroyed!")')
		--BroadcastLua( 'surface.PlaySound("buttons/bell1.wav")' )
		SafeRemoveEntity(self)
	end
end

-----------
-- Touch --
-----------
function ENT:Touch(ent)

end

--------------------
-- PhysicsCollide -- 
--------------------
function ENT:PhysicsCollide( data, physobj )

end