
SWEP.Base = "weapon_bronxbase_bullet"

/*---------------------------------------------------------
   Name: SWEP:Reload( )
   Desc: Reload is being pressed
---------------------------------------------------------*/
function SWEP:Reload()
	if self.Owner == nil then return false; end
	
	// are we reloading?
	if self:GetReloading() then return false; end
	
	if(self.Owner:KeyDown(IN_ATTACK)) then return end
	
	if self:GetFRT() + 1 > CurTime() then return false end
	
	if self.Owner:GetAmmoCount( self.Primary.Ammo ) <= 0 then return false end	// YOU REQUIRE MORE VESPENE GAS
	if self.Weapon:Clip1() >= self.Primary.ClipSize then return false end // TOO MUCH VESPENE GAS

	self.Weapon:SendWeaponAnim( ACT_SHOTGUN_RELOAD_START )
	self.Owner:SetAnimation( PLAYER_RELOAD )

	// Make shotgun shell visible
	self.Weapon:SetBodygroup(1,0)
	
//	self.Weapon:SetNextPrimaryFire(CurTime() + self.Weapon:SequenceDuration() )
	
	self:SetFRT(CurTime() + self.Weapon:SequenceDuration())
	self:SetFAT(CurTime() + self.Weapon:SequenceDuration())
	self.FAT = (CurTime() + self.Weapon:SequenceDuration())
	if(CLIENT) then
		self.FRT = (CurTime() + LocalPlayer():GetViewModel():SequenceDuration() - LocalPlayer():Ping()/1000)
	end
	self:SetReloading(true)
	return true
end


function SWEP:ReloadShell()

	// Add them to the clip
	self:SetClip1( self:Clip1() + 1 )
	self.Owner:RemoveAmmo( 1, self.Primary.Ammo  )
	
	// Play reload on different channel as otherwise steals channel away from fire sound
//	WeaponSound(RELOAD);
	self.Weapon:SendWeaponAnim( ACT_VM_RELOAD );
	
	self:SetFRT(CurTime() + self.Weapon:SequenceDuration())
	self:SetFAT(CurTime() + self.Weapon:SequenceDuration())
	self.FAT = (CurTime() + self.Weapon:SequenceDuration())
	if(CLIENT) then
		self.FRT = (CurTime() + LocalPlayer():GetViewModel():SequenceDuration() - LocalPlayer():Ping()/1000)
	end
	
end

function SWEP:FinishReload()
//	MsgN( IsFirstTimePredicted() , "\t", "FinishReload")
	
	// Make shotgun shell invisible
	self.Weapon:SetBodygroup(1,1)
	self:SetReloading(false)

	// Finish reload animation
	self.Weapon:SendWeaponAnim( ACT_SHOTGUN_RELOAD_FINISH )
	
	self:SetFRT(CurTime() + self.Weapon:SequenceDuration())
	self:SetFAT(CurTime() + self.Weapon:SequenceDuration())
	if(CLIENT) then
		self.FRT = (CurTime() + LocalPlayer():GetViewModel():SequenceDuration() - LocalPlayer():Ping()/1000)
	end
end

/*---------------------------------------------------------
   Pumps the shotgun
---------------------------------------------------------*/
function SWEP:Pump()
	MsgN("Pump")
	
//	self.Weapon:SetNetworkedBool("m_bNeedPump", false)
	
//	WeaponSound( SPECIAL1 );

	// Finish reload animation
	self.Weapon:SendWeaponAnim( ACT_SHOTGUN_PUMP );

	self.Weapon:SetNextPrimaryFire(CurTime() + self.Weapon:SequenceDuration() )

end

/*---------------------------------------------------------
   Name: SWEP:CheckReload( )
   Desc: CheckReload
---------------------------------------------------------*/
function SWEP:CheckReload()
end

/*---------------------------------------------------------
   Think does nothing
---------------------------------------------------------*/
function SWEP:Think()
	self:WatThink()
	self:ReloadThink()
end

function SWEP:ReloadThink()

//	self.BaseClass:BaseThink()

	if !self.Owner then return end

	if self:GetReloading() == true then

		if self.Owner:KeyDown(IN_ATTACK) and self.Weapon:Clip1() >= 1 then
		
			self:SetReloading(false)

		elseif self:GetFRT() <= CurTime() then

			// If out of ammo end reload
			if self.Owner:GetAmmoCount( self.Primary.Ammo ) <= 0 then

				self:FinishReload()
				return

			// If clip not full reload again
			elseif self.Weapon:Clip1() < self.Primary.ClipSize then

				self:ReloadShell()
				return

			// Clip full, stop reloading
			else
			
				self:FinishReload();
				return;
				
			end
		end
	else

		// Make shotgun shell invisible
		self.Weapon:SetBodygroup(1,1);

	end

end

//Credits to Acruid, who in turn, credits SourceSDK
