AddCSLuaFile()

ENT.Base 			= "npc_bronx_base"
ENT.Spawnable		= true
ENT.PrintName = "Tyrone"
ENT.Model = "models/Humans/Group01/Male_01.mdl"
ENT.StartingHealth = 60
ENT.AttackDistance = 50
ENT.AttackDamage = 2.25
ENT.AttackDelay = .5
ENT.StunTime = 1.1
local meleeSwingTime = .45

ENT.WeaponModels = { "models/weapons/w_knife_t.mdl", "models/props_canal/mattpipe.mdl", "models/weapons/w_crowbar.mdl" }

function ENT:OnInit()
	if SERVER then --don't ask me why doing this with a CS Model doesn't work
	self:SetName("Tyrone")
	
	self.weaponmodel = ents.Create("prop_physics")
	self.weaponmodel:SetModel( table.Random(self.WeaponModels))
	self.weaponmodel:SetParent(self)
	--weaponmodel:Spawn()
	self.weaponmodel:AddEffects(EF_BONEMERGE)
	end
	self.RunAnim = false
	--self:SetTrigger(true)
end

function ENT:BehaveUpdate( fInterval )


	if ( !self.BehaveThread ) then return end
	local quicktrace = util.TraceLine({start = self:GetPos() + Vector(0,0,20), endpos = self:GetPos() + Vector(0,0,20) + (self:GetAngles():Forward() * 24)})
	if IsValid(quicktrace.Entity) and quicktrace.Entity:GetClass() == "func_breakable" then --To go through walkable glass barriers
		quicktrace.Entity:TakeDamage(100)
	end
	
	if self.NextAttack < CurTime() and not self.Attacking then
		local ent = ents.FindInSphere( self:GetPos(), 120 )
		for k,v in pairs( ent ) do
			--if (self:PlayerCheck(v) || v:IsNPC()) and IsValid(v) then
			if !IsValid(v) then return end
			if ((v:IsPlayer() or v:IsNPC()) and v:Health() > 0) or v.IsWatermelon then
				self.loco:FaceTowards( v:GetPos() )
				--self.loco:Jump( )
				self.Attacking = true
				self.StuckTime = nil --Don't use stuck behavior if attacking
				self:ResetSequence( "swing" )
				self.RunAnim = false
				self:SetPlaybackRate( 1 )

				
				timer.Simple( self:SequenceDuration() + meleeSwingTime, function()
					if IsValid(v) and IsEntity(v) and IsValid(self) then
						if self:GetPos():Distance(v:GetPos()) > self.AttackDistance + 1 then
							if not self.RunAnim and (not self.Attacking) and (not self:GetNWBool("Stunned", false)) then
								self:StartActivity( ACT_RUN )
								self.RunAnim = true
							end	
						end
					end
				 end)
				timer.Simple( meleeSwingTime , function() if IsValid(self) and (self:Health() > 0) then
					self.NextAttack = CurTime() + (self.AttackDelay)
					self:MeleeAttack()
						end
					end)
				--self.Isjumping = true
			end
		end	
	end

	local ok, message = coroutine.resume( self.BehaveThread )
	if ( ok == false ) then


		self.BehaveThread = nil
		Msg( self, "error: ", message, "\n" );


	end
end

function ENT:PlayerCheck(ent)
	if ent:IsPlayer() then
		if ent:Alive() then
			return true
		end
	end
end

--local NextAttack = CurTime()

function ENT:FilterForTrace()
	return ents.FindByClass( "npc_bronx_tyrone*" )
end

function ENT:MeleeAttack()
	if self:GetNWBool("Stunned", false) then return end
	timer.Simple(self:SequenceDuration() - meleeSwingTime, function() if not IsValid(self) then return end self.Attacking = false end)
	--if (self.NextAttack > CurTime()) then return end
	local target = self:GetNearestTargetFromTable(self:BuildTargetTable())
	if IsValid(target) then

		self.loco:FaceTowards( target:GetPos() )

		local pos = self:GetPos() + self:GetUp() * 50
		local ang = (target:LocalToWorld(target:OBBCenter()) - (self:GetPos() + self:GetUp() * 50)):Angle():Forward()
 
		local tracedata = {}
		tracedata.start = pos
		tracedata.endpos = pos + (ang * self.AttackDistance)
		tracedata.filter = self:FilterForTrace()
		tracedata.mins = self:OBBMins() * .4
		tracedata.maxs = self:OBBMaxs() * .4
 
	local trace = util.TraceLine( tracedata )

	if trace.Hit and trace.HitNonWorld then
		if trace.Entity:IsValid() and not (self:GetClass() == trace.Entity:GetClass()) then
			local target = trace.Entity
			if SERVER then
				local dmginfo = DamageInfo()
				dmginfo:SetDamage(self.AttackDamage)
				dmginfo:SetDamageForce(VectorRand())
				dmginfo:SetAttacker(self)
				dmginfo:SetInflictor(self)
				dmginfo:SetDamageType(DMG_CLUB)
				
				--target:TakeDamage(self.Secondary.Damage, self.Owner, self)
				target:TakeDamageInfo(dmginfo)

				--local phys = target:GetPhysicsObject()
				--phys:SetVelocity(self.Owner:GetAimVector() * 1337)
			end
			if (trace.MatType == MAT_FLESH ) then
				self:EmitSound("Flesh.ImpactHard")	
				local effectdata = EffectData()
				local pos = self:GetPos()
					pos = pos + self:GetForward() * 5
					pos = pos + self:GetUp() * 69
				effectdata:SetOrigin(trace.HitPos)
				effectdata:SetStart(trace.HitPos)
				effectdata:SetScale(1)
				
				util.Effect( "BloodImpact", effectdata )
			else
				--util.Decal("ManhackCut", traceline.StartPos + traceline.HitNormal, traceline.HitPos - traceline.HitNormal)
				self:EmitSound("Weapon_Knife.HitWall")
			end

		end

	elseif trace.HitWorld then
		self:EmitSound("Weapon_Knife.HitWall")
		--util.Decal("ManhackCut", traceline.StartPos + traceline.HitNormal, traceline.HitPos - traceline.HitNormal)	
	end
	
		

	end
end

function ENT:OnStun()
	self.NextAttack = CurTime() + self.AttackDelay
	self.Attacking = false
end

function ENT:RunBehaviour()


	while ( true ) do
		local target = self:GetNearestTargetFromTable(self:BuildTargetTable())

		if self:GetNWBool("Stunned", false) then
			coroutine.wait(self.StunTime)
		end

		if (target) then
			pos = target:GetPos()
			if not self.RunAnim and (not self.Attacking) then
				self:StartActivity( ACT_RUN )
				self.RunAnim = true
			end	
			--self:OnLandOnGround()
			self.loco:SetDesiredSpeed( 340 )			-- run speed	
			local opts = {	lookahead = 300,
							tolerance = 20,
							draw = false,
							maxage = 0.1,
							repath = 0.1	}
				
			self:MoveToPos( pos, opts )													-- move to position (yielding)
			
			self:BronxTalk()
			
		else


			-- some activity to signify that we didn't find shit
			if not self.RunAnim then
				self:StartActivity( ACT_RUN )
				self.RunAnim = true
			end								-- walk anims
			self.loco:SetDesiredSpeed( 340 )						-- walk speeds
			self:MoveToPos( self:GetPos() + Vector( math.Rand( -1, 1 ), math.Rand( -1, 1 ), 0 ) * 200 ) -- walk to a random place within about 200 units (yielding)

			self:BronxTalk()
			
		end


		coroutine.yield()


	end


end


function ENT:OnLandOnGround()


	self.Isjumping = false
	self:StartActivity( ACT_RUN )
	
	
end


function ENT:OnKilled( damageinfo )

	hook.Call("OnNPCKilled", GAMEMODE, self, damageinfo:GetAttacker(), damageinfo:GetInflictor())
	-- Drop weapon on death for coolness
	self:DropWeapon(damageinfo)
	
	self.weaponmodel:Remove()
	self:BecomeRagdoll( damageinfo )


end

function ENT:DropWeapon( dmginfo )
	//local weapondropeffect = ents.CreateClientProp( self.weaponmodel:GetModel() ) --why do clientside props or models never work
if SERVER then
	local weapondropeffect = ents.Create( "prop_physics" )
	local pos = self:GetPos() + self:GetAngles():Right() * 10 + self:GetAngles():Forward() * 10 + self:GetAngles():Up() * 50
	//local pos = self.weaponmodel:GetPos()
	//local ang = self.weaponmodel:GetAngles()
	weapondropeffect:SetModel(self.weaponmodel:GetModel())
	weapondropeffect:SetPos(pos)
	weapondropeffect:SetCollisionGroup(COLLISION_GROUP_WEAPON)
	weapondropeffect:Spawn()
	timer.Simple( 7 , function() if IsValid(weapondropeffect) then
		weapondropeffect:Remove()
		end
	end)
end

end


--
-- List the NPC as spawnable
--
list.Set( "NPC", "Melee Tyrone", 	{	Name = "Standard Tyrone", 
										Class = "npc_bronx_tyrone_normal",
										Category = "Bronx"
									})
