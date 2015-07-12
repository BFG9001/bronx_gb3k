AddCSLuaFile( "cl_init.lua" )
AddCSLuaFile( "shared.lua" )
 
include( 'shared.lua' )

function GM:PlayerSpawn( ply )
    self.BaseClass:PlayerSpawn( ply )   
 
    ply:SetGravity  ( 1 )  
    ply:SetMaxHealth( 100 )  
 
    ply:SetWalkSpeed( 190 )  
    ply:SetRunSpeed ( 290 ) 

    ply:AllowFlashlight(true)
 
end

function GM:PlayerLoadout( ply )
	
end

function GM:PlayerInitialSpawn( ply )
	   ply:PrintMessage( HUD_PRINTTALK, "Welcome to the Bronx, " .. ply:Name() .. ", where only the stronx survive." )
	   if GetGlobalString(CURRENT_GAMESTATE) == "RoundActive" then ply:KillSilent() end
end

function GM:GetFallDamage( ply, speed )
	speed = speed - 580
	return speed * (100/(1024-580))
end