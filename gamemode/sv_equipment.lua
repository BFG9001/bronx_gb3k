--Items, weapons, and all that junk

GM.SpawnWeapons = {}
GM.SpawnWeapons[1] = {"weapon_bronx_glok17"}

function GM:PlayerLoadout( ply )
	ply:Give(table.Random(self.SpawnWeapons[1]))
    ply:StripAmmo()
    hook.Call("PlayerLoadoutAmmo", GAMEMODE, ply)

end

function GM:PlayerLoadoutAmmo(ply)
    for k,v in pairs(ply:GetWeapons()) do
        if v.Primary and v.Primary.ClipSize > 0 then
            ply:SetAmmo( v.Primary.ClipSize * 9, v.Primary.Ammo )
        end
    end
end

function GM:PlayerCanPickupWeapon(ply, wep)
	if ply:HasWeapon(wep:GetClass()) then return false end
	if wep.DroppedWeaponTime and (CurTime() - wep.DroppedWeaponTime) < 1.5 then
		return false
	end

	local playerWeps = ply:GetWeapons()
	local slotCompare = wep.Slot
	for k, v in pairs(playerWeps) do 
		if v.Slot == slotCompare then
			return false
		end
	end
	return true
end