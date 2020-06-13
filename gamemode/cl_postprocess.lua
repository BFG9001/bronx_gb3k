local colorDataDefault = {
	["$pp_colour_brightness"] = 0,
	["$pp_colour_contrast"] = 1,
	["$pp_colour_colour"] = 2,
	["$pp_colour_mulr"] = 0,
	["$pp_colour_mulg"] = 1,
	["$pp_colour_mulb"] = 0
}

local colorDataBrighter = {
	["$pp_colour_brightness"] = .05,
	["$pp_colour_contrast"] = 1.25,
	["$pp_colour_colour"] = 1.5,
	["$pp_colour_mulr"] = 0,
	["$pp_colour_mulg"] = 0,
	["$pp_colour_mulb"] = 0
}

local COLORDATA = colorDataDefault
concommand.Add("bronx_brighten_enable", function(ply, cmd, args, argStr) if ply == LocalPlayer() then COLORDATA = colorDataBrighter end end)
concommand.Add("bronx_brighten_disable", function(ply, cmd, args, argStr) if ply == LocalPlayer() then COLORDATA = colorDataDefault end end)
function GM:RenderScreenspaceEffects()
	DrawColorModify( COLORDATA )
	DrawSobel( 1.2 )
end
