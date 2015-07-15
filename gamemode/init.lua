AddCSLuaFile( "cl_init.lua" )
AddCSLuaFile( "shared.lua" )
 
include( 'shared.lua' )



GM.Loot = {}
GM.Loot.Weapons = {""}
GM.Loot.Supply = {""}


local function GetRandomSpawn()

end

function GM:PlayerSpawn( ply )
    self.BaseClass:PlayerSpawn( ply )   
 
    ply:SetGravity  ( 1 )  
    ply:SetMaxHealth( 100 )  
 
    ply:SetWalkSpeed( 190 )  
    ply:SetRunSpeed ( 290 ) 

    ply:AllowFlashlight(true)

    ply:SetNoCollideWithTeammates(true)

    local spawnData = GAMEMODE.MAPDATA.PlayerSpawn[table.KeyFromValue(player.GetAll(), ply)]
    ply:SetPos(spawnData.Pos)
    ply:SetEyeAngles(spawnData.Ang)
 
end


function GM:PlayerInitialSpawn( ply )
	ply:PrintMessage( HUD_PRINTTALK, "Welcome to the Bronx, " .. ply:Name() .. ", where only the stronx survive." )
    if GetGlobalString(CURRENT_GAMESTATE) == "RoundActive" then    
        timer.Simple( .1 , function()
            ply:KillSilent() --Fixes reconnection exploit as well as other issues such as spawning at default info nodes as opposed to gamemode spawns.
        end)
    else
        timer.Simple( .1 , function()
            ply:KillSilent() --Fixes reconnection exploit as well as other issues such as spawning at default info nodes as opposed to gamemode spawns.
            --GAMEMODE:PlayerSpawn(ply)
            --hook.Call("PlayerSpawn", GAMEMODE, ply)
            ply:Spawn()
        end)
    end
end

function GM:GetFallDamage( ply, speed )
	speed = speed - 512
	return speed * (100/(1024-580))
end

function GM:InitPostEntity()
    self:SetupMapData()
end

function GM:PlayerShouldTakeDamage(ply, attacker)
    --print("PlayerShouldTakeDamage Called")
    if attacker:IsPlayer() --[[and (ply ~= attacker)]] then
        return false
    end
    return true
end

local playermodels = {
    'medic01',
    'medic02',
    'medic03',
    'medic04',
    'medic05',
    'medic06',
    'medic07',
    'medic08',
    'medic09',
    'medic10',
    'medic11',
    'medic12',
    'medic13',
    'medic14',
    'medic15'
}

function GM:PlayerSetModel(ply)
    ply:SetModel(player_manager.TranslatePlayerModel(table.Random(playermodels)))
end

function GM:OnNPCKilled(npc, att, inflict)

end

hook.Add("KeyPress", "Bronx_SpectateCycler", function(ply, key)
    if (key == IN_ATTACK) and !ply:Alive() then
        --print("Spectate")
        local specTable = player.GetAll()
        ply.SpectateIndex = ply.SpectateIndex or 1
        local specKey, specEnt = next(specTable, ply.SpectateIndex)
        ply:Spectate(OBS_MODE_CHASE)
        ply:SpectateEntity(specEnt)
        ply.SpectateIndex = specKey
    end
end)