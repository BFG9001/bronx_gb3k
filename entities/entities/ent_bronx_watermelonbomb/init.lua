-------------------------------
AddCSLuaFile( "cl_init.lua" )
AddCSLuaFile( "shared.lua" )
include( 'shared.lua' )
-------------------------------

ENT.Fuse = 10 --seconds
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
	
	self:SetModel( "models/props_junk/watermelon01.mdl" )
	self:PhysicsInit( SOLID_VPHYSICS )
	self:SetMoveType( MOVETYPE_VPHYSICS )
	self:SetSolid( SOLID_VPHYSICS )
	local phys = self:GetPhysicsObject()
	if (phys:IsValid()) then
		phys:Wake()
	end
	self:SetHealth(1)

	

	--self.bulleye = ents.Create("npc_bullseye")
	--self.bulleye:SetHealth(1e8)
	//self.bulleye:SetKeyValue( "spawnflags", "131072" )
	//self.bulleye:SetParent(self)
end

-----------------
-- Take Damage -- 
-----------------
function ENT:OnTakeDamage( dmginfo )
	dmginfo:ScaleDamage(0)
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
	if(!IsValid(self)) then return end
	if IsValid(self.bulleye) then
		self.bulleye:SetPos(self:GetPos())
	end
	if not self.NextBeep then
		self.NextBeep = CurTime()
	end
	
	if self.NextBeep <= CurTime() then
		//self:MuzzleFlash()
		self:EmitSound("buttons/button17.wav")
		self.NextBeep = self.NextBeep + .5
		local fxdata = EffectData()
			fxdata:SetOrigin(self:GetPos())
			fxdata:SetEntity(self)
			fxdata:SetRadius(4)
		util.Effect("effect_bronx_bombflash", fxdata, true)
	end


	if !self.NextTick then
		self.NextTick = CurTime()
	end
	if(self.Fuse <= 0) then
		local FX = EffectData()
		FX:SetOrigin(self:GetPos() + Vector(0, 0, 50))		
		util.Effect("effect_bronx_explosionpow", FX)
		util.Effect("HelicopterMegaBomb", FX)

		util.BlastDamage( self, self:GetOwner(), self:GetPos(), 250, 250)
		--SafeRemoveEntity(self.bulleye)
		SafeRemoveEntity(self)
		
	end

	if self.NextTick <= CurTime() then
		self.Fuse = self.Fuse - 1
		self.NextTick = CurTime() + 1
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
