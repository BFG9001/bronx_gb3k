function PlayerForceDropWeapon(ply, wep)
	local dropWep = wep or ply:GetActiveWeapon()
	ply:ConCommand("lastinv")
	--ply:DropWeapon(dropWep)
	local NewWeapon = ents.Create(dropWep:GetClass())
		NewWeapon.DroppedWeaponTime = CurTime()
		NewWeapon.Primary.DefaultClip = dropWep:Clip1()
		NewWeapon.Secondary.DefaultClip = dropWep:Clip2()
		--NewWeapon:SetClip1(dropWep:Clip1())
		--NewWeapon:SetClip2(dropWep:Clip2())
		NewWeapon:SetPos(ply:GetShootPos())
		NewWeapon:Spawn()

		NewWeapon:GetPhysicsObject():SetVelocity(ply:GetAimVector() * 200)

	ply:StripWeapon(dropWep:GetClass())
end

local function DropWeapon(ply)
	PlayerForceDropWeapon(ply)
end
concommand.Add("+menu", DropWeapon, nil, FCVAR_CLIENTCMD_CAN_EXECUTE)
concommand.Add("dropweapon", DropWeapon, nil, FCVAR_CLIENTCMD_CAN_EXECUTE)



local function ShowRadioMenu()

end