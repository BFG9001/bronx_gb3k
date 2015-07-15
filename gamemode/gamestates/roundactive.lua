local GAMESTATE = {}

GAMESTATE.Identifier = "RoundActive"

GAMESTATE.RoundTime = 600

function GAMESTATE:StateBegin()

end

function GAMESTATE:Think()

end

function GAMESTATE:StateFinish()

end

function GAMESTATE:HUDPaint()
	--draw.SimpleText("Time before Riot starts: " .. GetUniTimer(), "BronxHUDCoolvetica", 5, 5, Color(255,255,255), TEXT_ALIGN_LEFT, TEXT_ALIGN_BOTTOM, 1, Color(0,0,0) )
end


GM.GameStates[GAMESTATE.Identifier] = GAMESTATE