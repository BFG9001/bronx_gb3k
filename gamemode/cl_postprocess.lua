local colorData = {
	["$pp_colour_addr"] = 0.025,
	["$pp_colour_addg"] = 0.025,
	["$pp_colour_addb"] = .025,
	["$pp_colour_brightness"] = 0.05,
	["$pp_colour_contrast"] = 1.6,
	["$pp_colour_colour"] = 1.6,
	["$pp_colour_mulr"] = 0,
	["$pp_colour_mulg"] = 0,
	["$pp_colour_mulb"] = .1
}

function GM:RenderScreenspaceEffects()
	DrawColorModify( colorData )
	DrawSobel( 1 )
end
