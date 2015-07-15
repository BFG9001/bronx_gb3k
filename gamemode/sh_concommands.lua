if SERVER then
local function SwitchTo(ply)
	local weps = ply:GetWeapons()
	return weps[1]
end

function PlayerForceDropWeapon(ply, wep)
	if #ply:GetWeapons() < 2 then return end
	local dropWep = wep or ply:GetActiveWeapon()
	--ply:ConCommand("lastinv")
	local switchWep = SwitchTo(ply)
	ply:SelectWeapon(switchWep:GetClass())
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
			if #ply:GetWeapons() < 2 then ply:ChatPrint("This is your only weapon!") return end
			RunConsoleCommand("dropweapon")
		end
	end)


local function ShowRadioMenu()

end

end