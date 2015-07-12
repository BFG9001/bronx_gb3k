AddCSLuaFile()
/* -----------
SOME DOCUMENTATION 
AUTHORS: Awcmon, BFG9000

animations that are suitable for attack:
Melee: Swing, Throw1, Throwitem, 
-------------*/




if(SERVER) then
	resource.AddFile("sound/bronx/watchwhereyouwalkin2.wav")
	resource.AddFile("sound/bronx/whatyousay.wav")
	resource.AddFile("sound/bronx/asswhoopininsurance.wav")
	resource.AddFile("sound/bronx/backedintoyourcar.wav")
	resource.AddFile("sound/bronx/faggotass.wav")
	resource.AddFile("sound/bronx/gotaproblem.wav")
	resource.AddFile("sound/bronx/ismellnewshoes.wav")
	resource.AddFile("sound/bronx/eatadick.wav")
	resource.AddFile("sound/bronx/whatchugonnado.wav")
	resource.AddFile("sound/bronx/whatdidyousay.wav")
end

ENT.NextAttack = CurTime()

ENT.Author = "BFG"
ENT.Base 			= "base_nextbot"
ENT.PrintName = "Generic Bronx Denizen"
ENT.Spawnable		= true
ENT.AutomaticFrameAdvance = true
ENT.Model = "models/Humans/Group01/Male_01.mdl"
ENT.StartingHealth = 50
ENT.StunTime = 1


function ENT:Initialize()
	self:SetName(self.PrintName)

	self:SetNWBool("Stunned", false)

	self:SetModel( self.Model );
//	self:SetSkin(math.random(0,1))
	self:SetHealth(self.StartingHealth)
	
	self.loco:SetDeathDropHeight(500)	//default 200
	self.loco:SetAcceleration(900)		//default 400
	self.loco:SetDeceleration(900)		//default 400
	self.loco:SetStepHeight(18)			//default 18
	self.loco:SetJumpHeight(58)		//default 58
	
	self.Isjumping = false
	
	self.TalkTimer = CurTime()

	self:OnInit()
end

function ENT:OnInit()
end


function ENT:PlayerCheck(ent)
	if ent:IsPlayer() then
		if ent:Alive() then
			return true
		end
	end
end

function ENT:OnStuck()
	if not self.StuckTime then
		self.StuckTime = CurTime()
	end
	if self.StuckTime and (CurTime() - self.StuckTime) > 8 then
		self.ShouldHandleStuck = true
	end
end

function ENT:HandleStuck() --Didn't figure out how to use this thing until I checked presidentmattdamon's old code. thanks.
	if not self.ShouldHandleStuck then return end
	self:SetPos(self:GetPos()+Vector(math.random(-32,32),math.random(-32,32),math.random(0,10)))
	if not self.loco:IsStuck() then
		self:ClearStuck()
		self.StuckTime = nil 
		self.ShouldHandleStuck = false
	end
	coroutine.yield()
end

function ENT:UnStuck()
	self.StuckTime = nil 
	self.ShouldHandleStuck = false
end

function ENT:IsValidTarget(ent)
	if (!ent:IsValid()) then return false end

	return ((ent:IsPlayer() and ent:Alive()) or
	        (ent:IsNPC() and ent:Health() > 0))
end

function ENT:GetNearestTargetFromTable(tab)
	local maxAcquireDistSqr = 9999999
	local target
	for _, ent in pairs(tab) do
		if (not self:IsValidTarget(ent)) then continue end

		local distSqr = ent:GetPos():DistToSqr(self:GetPos())
		if distSqr < maxAcquireDistSqr then
			target = ent
			maxAcquireDistSqr = distSqr
		end
	end
	return target

end

function ENT:BronxTalk()
	local BronxSounds = {
		"bronx/whatyousay.wav",
		"bronx/watchwhereyouwalkin2.wav",
		"bronx/asswhoopininsurance.wav",
		"bronx/backedintoyourcar.wav",
		"bronx/faggotass.wav",
		"bronx/gotaproblem.wav",
		"bronx/ismellnewshoes.wav",
		"bronx/eatadick.wav",
		"bronx/whatchugonnado.wav",
		"bronx/whatdidyousay.wav"
	}
			
	if(CurTime() > self.TalkTimer) then
		self:EmitSound(table.Random(BronxSounds),100,math.random(90,110))
		self.TalkTimer = self.TalkTimer + math.random(5,30)
//		self.TalkTimer = self.TalkTimer + 2
	end
end


function ENT:OnLandOnGround()


	self.Isjumping = false
	self:StartActivity( ACT_RUN )
	
	
end

function ENT:BuildTargetTable()
	local targets = player.GetAll()
		table.Add( targets, ents.FindByClass("ent_bronx_watermelonbomb") )

	return targets
end

ENT.StunAnimSequence = "preskewer"
function ENT:BronxMeleeStun()
	self:OnStun()
	self:SetNWBool("Stunned", true)
	self:ResetSequence(self.StunAnimSequence or "fear_reaction")
	timer.Simple(self.StunTime - .1, function() if not IsValid(self) then return end self:SetNWBool("Stunned", false) end)
end

function ENT:OnStun()

end

function ENT:OnKilledEX(damageinfo)
end


function ENT:OnKilled( damageinfo )

	hook.Call("OnNPCKilled", GAMEMODE, self, damageinfo:GetAttacker(), damageinfo:GetInflictor())
	self:OnKilledEX( damageinfo )

	self:BecomeRagdoll( damageinfo )


end

ENT.IsBronxCitizen = true



--[[
list.Set( "NPC", "Melee Tyrone", 	{	Name = "Standard Tyrone", 
										Class = "npc_bronx_tyrone_normal",
										Category = "Bronx"
									})
--]]