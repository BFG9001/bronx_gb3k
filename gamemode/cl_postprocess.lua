local colorData = {
	["$pp_colour_brightness"] = .1,
	["$pp_colour_contrast"] = 1,
	["$pp_colour_colour"] = 2,
	["$pp_colour_mulr"] = 0,
	["$pp_colour_mulg"] = 1,
	["$pp_colour_mulb"] = 0
}

function GM:RenderScreenspaceEffects()
	DrawColorModify( colorData )
	DrawSobel( .9 )
end
