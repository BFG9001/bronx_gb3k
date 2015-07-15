--Items, weapons, and all that junk

GM.SpawnWeapons = {}
GM.SpawnWeapons["Primary"] = {"weapon_bronx_caws870", "weapon_bronx_ma41", "weapon_bronx_mack11"}
GM.SpawnWeapons["Secondary"] = {"weapon_bronx_glok17"}

function GM:PlayerLoadout( ply )
	--ply:Give(table.Random(self.SpawnWeapons["Primary"]))
	ply:Give(table.Random(self.SpawnWeapons["Secondary"]))
    ply:StripAmmo()
    hook.Call("PlayerLoadoutAmmo", GAMEMODE, ply)

end

function GM:PlayerLoadoutAmmo(ply)
    for k,v in pairs(ply:GetWeapons()) do
        if v.Primary and v.Primary.ClipSize > 0 then
            ply:GiveAmmo( v.Primary.ClipSize * 5, v.Primary.Ammo )
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

local MAXARMOR = 30
hook.Add("Think", "Bronx_RestrictMaxArmor", function()
		for k, v in pairs(player.GetAll()) do
			v:SetArmor(math.min(v:Armor(), MAXARMOR))
		end
	end)

local prefixes = {
	"item_ammo",
	"item_box_buckshot",
	"item_rpg_round"
}
--local AmmoTypes = game.BuildAmmoTypes()
local AmmoTypes = {
	"pistol",
	"smg1",
	"357",
	"rpg_round",
	"slam",
	"ar2altfire",
	"grenade",
	"ar2",
	"buckshot"
}
local MaxAmmoValues = { --Will implement this at a later date
	pistol = 300
}
function GM:PlayerCanPickupItem(ply, item)
	if item:GetClass() == "item_battery" then
		if ply:Armor() >= MAXARMOR then
			return false
		end
		return true
	end

	local ammoType = nil --For default ammo pickups
	for k, v in pairs(AmmoTypes) do
		ammoType = string.match(item:GetClass(), v, 1 )
		if ammoType then break end
	end
	--print(ammoType)
	local needsAmmoType = false
	for k,v in pairs(ply:GetWeapons()) do
		needsAmmoType = (v.Primary.Ammo == ammoType)
		--print(needsAmmoType)
		if not needsAmmoType then needsAmmoType = (v.Secondary.Ammo == ammoType) end
		if needsAmmoType then break end
	end
	local isInternalAmmoEnt
	for k, v in pairs(prefixes) do
		isInternalAmmoEnt = string.StartWith(item:GetClass(), v)
		if isInternalAmmoEnt then break end
	end
	--print(needsAmmoType)
	if isInternalAmmoEnt then
		return needsAmmoType
	end
	return true
end