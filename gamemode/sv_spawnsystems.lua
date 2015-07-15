

local NPCWeightedTable = {
	"npc_bronx_tyrone",
	"npc_bronx_tyrone",
	"npc_bronx_tyrone",
	"npc_bronx_tyrone"
}
local function CreateNPC(pos, ang)
	local npc = ents.Create(table.Random(NPCWeightedTable))
		npc:SetPos(pos)
		npc:SetAngles(ang)
		npc:Spawn()
end

function GM:SpawnClusterNPCs(ClusterSize, seedIndex)
	local ClusterSize = ClusterSize or 10
	local seed = seedIndex or math.random( 1, #GAMEMODE.MAPDATA.EnemySpawn )
	local Cluster = {}
	for i = 1, ClusterSize do
		local calcIndex = seed + (i - 1)
		if calcIndex > #GAMEMODE.MAPDATA.EnemySpawn then
			calcIndex = calcIndex - #GAMEMODE.MAPDATA.EnemySpawn
		end
		table.ForceInsert(Cluster, calcIndex)
	end
	for k, v in pairs(Cluster) do
		Cluster[k] = GAMEMODE.MAPDATA.EnemySpawn[v]
	end
	for k, data in pairs(Cluster) do
		CreateNPC(data.Pos, data.Ang)
	end
end

function GM:CheckSpot(num, checkTable)
	checkTable = checkTable or GAMEMODE.MAPDATA.ObjSpawn
	local pos = checkTable[num].Pos
	local trace = util.TraceLine({start = pos + Vector(0,0,16), endpos = pos})
	if IsValid(trace.Entity) and trace.Entity:GetClass() == "ent_bronx_ghettoblaster" then
		return false
	end

	//return true if there is nothing conflicting
	return true

end

function GM:SpawnBoomBoxes(count)
	local spawnData = GAMEMODE.MAPDATA.ObjSpawn
		count = math.min(count, table.Count(spawnData))
	for i = 1, count do
	
		local Rand = math.random(1, table.Count(spawnData))

		while (!self:CheckSpot(Rand, spawnData)) do
			Rand = math.random(1, table.Count(spawnData))
		end
		
		--PlacedObjTable[i] = Rand
		
		local Obj = ents.Create("ent_bronx_ghettoblaster")
		Obj:SetPos(spawnData[Rand].Pos)
		Obj:SetAngles(spawnData[Rand].Ang)
		Obj:Spawn()
	 
	end
end


local ItemTable = {
	"item_ammo_pistol_large",
	--"item_ammo_ar2_large",
	"item_ammo_pistol",
	"item_ammo_pistol",
	"item_ammo_pistol",
	"item_ammo_pistol",
	"item_box_buckshot",
	"item_box_buckshot",
	"item_box_buckshot",
	"item_box_buckshot",
	"item_healthvial",
	"item_healthvial",
	--"item_healthkit",
	"item_box_buckshot",
	"item_battery",
	"item_battery",
	"item_battery",
	"item_ammo_smg1",
	"item_ammo_smg1",
	"item_ammo_smg1",
	"item_ammo_smg1_large",
	"item_ammo_smg1"
}
local WeaponLoot = {
	"weapon_bronx_caws870", 
	"weapon_bronx_ma41",
	"weapon_bronx_glok17",
	"weapon_bronx_mack11"
}
function GM:SpawnLootDrop(count)
		local spawnData = GAMEMODE.MAPDATA.LootSpawn
		count = math.min(count, table.Count(spawnData))
	for i = 1, count do
	
		local Rand = math.random(1, table.Count(spawnData))

		local weaponChance = math.random(1, 100)
		if weaponChance <= 8 then 
			lootitem = ents.Create(table.Random(WeaponLoot))
		else
			lootitem = ents.Create(table.Random(ItemTable))
		end
		lootitem:SetPos(spawnData[Rand].Pos)
		lootitem:SetAngles(spawnData[Rand].Ang)
		lootitem:Spawn()
	 
	end
end

hook.Add("OnEntityCreated", "Bronx_LargeAmmoColorer", function(ent)
		if string.StartWith(ent:GetClass(), "item") and string.EndsWith(ent:GetClass(), "large") then
			ent:SetColor(Color(125,255,125))
		end
	end)