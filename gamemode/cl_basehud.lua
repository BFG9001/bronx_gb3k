local ComicRectMat = Material("sprites/bronx/hud/comicvector.png")


local FlatRed = Color(231, 76, 60)
local FlatBlue = Color(65,131,215)
function GM:HUDPaint()
	local H = ScrH()
	local W = ScrW()

	--HP Box
	local dWidth = W/5
	local dHeight = dWidth/2
	surface.SetDrawColor(FlatRed)
	surface.SetMaterial(ComicRectMat)
	surface.DrawTexturedRect(0, H - dHeight + 2, dWidth, dHeight)

	--Weapon Info
	surface.SetDrawColor(FlatBlue)
	surface.DrawTexturedRect(W - dWidth + 1, H - dHeight + 2, dWidth, dHeight)
end


hook.Add("HUDShouldDraw", "Bronx_HL2HUDSuppress", function(element)

	end)