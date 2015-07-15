if SERVER then
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
		NewWeapon:SetAngles(ply:GetAngles())
		NewWeapon:Spawn()

		NewWeapon:GetPhysicsObject():SetVelocity(ply:GetAimVector() * 200)

	ply:StripWeapon(dropWep:GetClass())
end

local function DropWeapon(ply)
	PlayerForceDropWeapon(ply)
end

--concommand.Add("+menu", DropWeapon, nil, FCVAR_CLIENTCMD_CAN_EXECUTE)
concommand.Add("dropweapon", DropWeapon, nil, FCVAR_CLIENTCMD_CAN_EXECUTE)
end --if SERVER then


if CLIENT then
hook.Add("PlayerBindPress", "Bronx_DropWeapon_Binder", function(ply, bind, pressed)
		if not IsValid(ply) then return end
		if bind == "+menu" and pressed then
			--PlayerForceDropWeapon(ply)
			RunConsoleCommand("dropweapon")
		end
	end)


local function ShowRadioMenu()

end

end