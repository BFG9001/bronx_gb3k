
hook.Add("Think", "1WGCC_GamemodeCycler", function()
		local state = GetGlobalString(CURRENT_GAMESTATE, "Debug")
		if SERVER and (state == "EndRound_Win" or state == "EndRound_Loss") then
			local ready = 0
			for k, v in pairs(player.GetHumans()) do
				if v.wgcc_ReadyForNextGamemode then
					ready = ready + 1
				end
			end
			if ready >= #player.GetHumans() then
				PrintMessage(HUD_PRINTTALK, "Changing to next gamemode!")
				hook.Call("wgcc_fin_nextgamemode")
			end
		elseif SERVER then
			for k, v in pairs(player.GetAll()) do
				v.wgcc_ReadyForNextGamemode = nil
			end
		end
	end)

hook.Add("PlayerSay", "1WGCC_GamemodeCycler_Voter", function(ply, text, teamChat)
		local state = GetGlobalString(CURRENT_GAMESTATE, "Debug")
		if SERVER and (state == "EndRound_Win" or state == "EndRound_Loss") then
			if string.StartWith(string.lower(text), "!nextgm") then
				ply.wgcc_ReadyForNextGamemode = true
				PrintMessage(HUD_PRINTTALK, ply:Nick() .. " is ready to switch gamemodes!")
			end
		end
	end)

hook.Add("HUDPaint", "1WGCC_GamemodeCycler_Notify", function()
		local state = GetGlobalString(CURRENT_GAMESTATE, "Debug")
		if (state == "EndRound_Win" or state == "EndRound_Loss") and (CurTime() > 300) then
			draw.SimpleTextOutlined("To vote for gamemode rotation, say !nextgm in chat. The vote must be unanimous.", "BronxHUDComic", ScrW()/2, ScrH() * (3/4), Color(255,255,255), TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, 1, Color(0,0,0))
		end	
end)