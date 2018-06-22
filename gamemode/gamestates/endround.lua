local GAMESTATE = {}

local ROUNDEND_TIME = 30

GAMESTATE.Identifier = "EndRound_Win"

local function GetMVP()
	local plyTab = player.GetAll()
	local plyScores = {}
	for k, v in pairs(plyTab) do
		plyScores[v] = v:Frags()
	end
	return table.GetWinningKey(plyScores)
end

function GAMESTATE:Think()
	local timeleft, timeset = GetUniTimer()
	if timeleft == 0 and (timeset + 1 < CurTime()) then
		GAMEMODE:SetState("PreRound")
	end
end

function GAMESTATE:StateBegin()
	SetUniTimer(ROUNDEND_TIME)

	if SERVER then
		for k, v in pairs(ents.FindByClass("npc_*")) do
			v:TakeDamage(99999)
		end
	end
	SetGlobalEntity("Bronx_MVP", GetMVP())
end

function GAMESTATE:HUDPaint()
	local width, height = draw.SimpleTextOutlined(GetUniTimer(), "BronxHUDCoolvetica", 5, 5, Color(255,255,255), TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, 2, Color(0,0,0) )
	draw.SimpleTextOutlined("Get Ready for the next round...", "BronxHUDComic", 5, 8 + height, Color(255,255,255), TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, 1, Color(0,0,0))
	width, height = draw.SimpleTextOutlined("SUCCESS", "BronxHUDCoolvetica", ScrW()/2, ScrH()/2, Color(255,255,255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER, 2, Color(0,0,0) )
	draw.SimpleTextOutlined("MVP: " .. GetGlobalEntity("Bronx_MVP", LocalPlayer()):Nick() .. " with " .. GetGlobalEntity("Bronx_MVP", LocalPlayer()):Frags() .. " points", "BronxHUDComic", ScrW()/2, (ScrH()/2) + height, Color(255,255,255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER, 1, Color(0,0,0))
end

function GAMESTATE:PlayerDeathThink(ply)
	ply:SetObserverMode(OBS_MODE_CHASE)
	ply:SpectateEntity(ply)
	return false
end

function GAMESTATE:StartCommand(ply, cmd)
	--print("called")
	cmd:SetMouseX(0)
	cmd:SetMouseY(0)
	cmd:ClearMovement()

end

GM.GameStates[GAMESTATE.Identifier] = GAMESTATE




////////
--Loss
////////

local GAMESTATE = {}

GAMESTATE.Identifier = "EndRound_Loss"

local function GetLVP()
	local plyTab = player.GetAll()
	local plyScores = {}
	for k, v in pairs(plyTab) do
		plyScores[v] = v:Frags()
	end
	local leastPoints = math.huge
	for k, v in pairs(plyScores) do
		if v < leastPoints then
			leastPoints = v
		end
	end
	return table.KeyFromValue(plyScores, leastPoints)
end

function GAMESTATE:Think()
	local timeleft, timeset = GetUniTimer()
	if timeleft == 0 and (timeset + 1 < CurTime()) then
		GAMEMODE:SetState("PreRound")
	end
end

function GAMESTATE:StateBegin()
	SetUniTimer(ROUNDEND_TIME)

	SetGlobalEntity("Bronx_LVP", GetLVP())
end

function GAMESTATE:HUDPaint()
	local width, height = draw.SimpleTextOutlined(GetUniTimer(), "BronxHUDCoolvetica", 5, 5, Color(255,255,255), TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, 2, Color(0,0,0) )
	draw.SimpleTextOutlined("Get Ready for the next round...", "BronxHUDComic", 5, 8 + height, Color(255,255,255), TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, 1, Color(0,0,0))
	width, height = draw.SimpleTextOutlined("FAILURE", "BronxHUDCoolvetica", ScrW()/2, ScrH()/2, Color(255,255,255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER, 2, Color(0,0,0) )
	draw.SimpleTextOutlined("LVP: " .. GetGlobalEntity("Bronx_LVP", LocalPlayer()):Nick() .. " with " .. GetGlobalEntity("Bronx_LVP", LocalPlayer()):Frags() .. " points... sucker...", "BronxHUDComic", ScrW()/2, (ScrH()/2) + height, Color(255,255,255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER, 1, Color(0,0,0))
end

function GAMESTATE:PlayerDeathThink(ply)
	ply:SetObserverMode(OBS_MODE_CHASE)
	ply:SpectateEntity(ply)
	return false
end

function GAMESTATE:StartCommand(ply, cmd)
	--print("called")
	cmd:SetMouseX(0)
	cmd:SetMouseY(0)
	cmd:ClearMovement()

end

GM.GameStates[GAMESTATE.Identifier] = GAMESTATE