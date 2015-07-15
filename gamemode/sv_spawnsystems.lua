

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

function GM:SpawnBoomBoxes(count)
	local spawnData = GAMEMODE.MAPDATA.EnemySpawn
		count = math.min(count, table.Count(spawnData))
	for i = 1, num do
	
		local Rand = math.random(1, table.Count(spawnData))

		while (!self:CheckObjectives(Rand)) do
			Rand = math.random(1, table.Count(spawnData))
		end
		
		--PlacedObjTable[i] = Rand
		
		local Obj = ents.Create("ent_bronx_ghettoblaster")
		Obj:SetPos(spawnData[Rand].Pos)
		Obj:SetAngles(spawnData[Rand].Ang)
		Obj:Spawn()
	 
	end
end