if SERVER then
local function SwitchTo(ply)
	local weps = ply:GetWeapons()
	return weps[1]
end

function PlayerForceDropWeapon(ply, wep)
	if ((ply.NextWeaponDropTime or 0) > CurTime()) or (#ply:GetWeapons() < 1) then return end
	ply.NextWeaponDropTime = CurTime() + 1;
	local dropWep = wep or ply:GetActiveWeapon()
	--ply:ConCommand("lastinv")
	local switchWep = SwitchTo(ply)
	if switchWep then ply:SelectWeapon(switchWep:GetClass()) end
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

if game.SinglePlayer() then concommand.Add("+menu", DropWeapon, nil, FCVAR_CLIENTCMD_CAN_EXECUTE) end
concommand.Add("dropweapon", DropWeapon, nil, FCVAR_CLIENTCMD_CAN_EXECUTE)
end --if SERVER then


if CLIENT then
local CanDrop = true
hook.Add("PlayerBindPress", "Bronx_DropWeapon_Binder", function(ply, bind, pressed)
		if not IsValid(ply) then return end
		if bind == "+menu" and pressed then
			timer.Create("Bronx_DropWeaponSpamStopper", .5, 1, function() CanDrop = true end)
			if CanDrop then
				if false then ply:ChatPrint("This is your only weapon!") surface.PlaySound("buttons/button10.wav") return end
				RunConsoleCommand("dropweapon")
			end
			CanDrop = false
		end
	end)


local function ShowRadioMenu()

end

end