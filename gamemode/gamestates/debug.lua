local GAMESTATE = {}

GAMESTATE.Identifier = "Debug"


function GAMESTATE:DoPlayerDeath(ply, attacker, dmginfo)
	print(tostring(attacker) .. " killed " .. ply:Nick() )
end

local weaponlist = {
	caws870 = "weapon_bronx_caws870",
	ma41 = "weapon_bronx_ma41",
	mack11 = "weapon_bronx_mack11"
}
function GAMESTATE:PlayerSay(ply, txt, teamC, ded)
	if string.StartWith(txt, "!tyrone") then
		local tyrone = ents.Create("npc_bronx_tyrone")
			tyrone:SetPos(ply:GetEyeTrace().HitPos)
			tyrone:Spawn()
			return ""
	end
	if string.StartWith(txt, "!give") then
		local strTab = string.Explode(" ", txt)
			ply:Give(strTab[2])
	end
	if string.StartWith(txt, "!ammo") then
		ply:SetAmmo(9999, ply:GetActiveWeapon().Primary.Ammo or "pistol" )
	end
	if string.StartWith(txt, "!radio") then
		local radio = ents.Create("ent_bronx_ghettoblaster")
			radio:SetPos(ply:GetEyeTrace().HitPos)
			radio:Spawn()
	end
	if string.StartWith(txt, "!start") then
		GAMEMODE:SetState("EndRound_Loss")
	end
end

function GAMESTATE:DrawHUD()

end




GM.GameStates[GAMESTATE.Identifier] = GAMESTATE