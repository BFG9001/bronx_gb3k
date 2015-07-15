local ComicRectMat = Material("sprites/bronx/hud/comicvector.png")

surface.CreateFont("BronxHUDCoolvetica", {
	font = "Coolvetica",
	size = .055 * ScrH(),
	weight = 775
	})
surface.CreateFont("BronxHUDComic", {
	font = "Comic Sans MS",
	size = .032 * ScrH(),
	italic = true,
	weight = 775
	})

local FlatRed = Color(231, 76, 60)
local FlatBlue = Color(65,131,215)
local surface = surface
function GM:HUDPaint()
	self.BaseClass:HUDPaint()
	local H = ScrH()
	local W = ScrW()

	--HP Box
	local dWidth = W/5
	local dHeight = dWidth/2
	surface.SetDrawColor(FlatBlue)
	surface.SetMaterial(ComicRectMat)
	surface.DrawTexturedRect(0, H - dHeight + 2, dWidth, dHeight)

	--Weapon Info
	surface.SetDrawColor(FlatRed)
	surface.DrawTexturedRect(W - dWidth + 1, H - dHeight + 2, dWidth, dHeight)

	--HP Element
	local hpLength = dHeight * (4/5)
	local hpWidth = hpLength/3
	surface.SetDrawColor(FlatRed)
	surface.DrawRect( dWidth * (1/10), (H - dHeight/2) - hpWidth/2, hpLength, hpWidth )
	surface.DrawRect( dWidth * (1/10) + hpWidth, (H - dHeight * (9/10)), hpWidth, hpLength )

	surface.SetFont("BronxHUDCoolvetica")
	local text = tostring(LocalPlayer():Health())
	local foobar, heightAdd = surface.GetTextSize(text)
	local hpOriginX = (dWidth/10) + (hpLength/2) -- - (surface.GetTextSize(text)/2)
	local hpOriginY = (H - dHeight * (4/5)) + (hpLength/2) - (heightAdd * (2/3))
	draw.SimpleText(LocalPlayer():Health(), "BronxHUDCoolvetica", hpOriginX, hpOriginY, Color(255,255,255), TEXT_ALIGN_CENTER, TEXT_ALIGN_BOTTOM )

	--Armor Element
	surface.SetDrawColor(230, 126, 34)
	draw.NoTexture() --Because the wiki did it too
	local radius = hpLength/2
	local armorOriginX = (dHeight * (16/15)) + radius
	local armorOriginY = H - dHeight/2
	local polyTab = {}
	for i = 1, 6 do 
		local localX = math.sin( (-math.pi/3) * i ) * radius
		local localY = math.cos( (-math.pi/3) * i ) * radius
		local coord = {}
		coord.x = localX + armorOriginX
		coord.y = localY + armorOriginY
		table.ForceInsert(polyTab, coord)
	end
	--PrintTable(polyTab)
	surface.DrawPoly(polyTab)
	local text = tostring(LocalPlayer():Armor())
	draw.SimpleText(text, "BronxHUDCoolvetica", armorOriginX, armorOriginY, Color(255,255,255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
end

local suppressElements = {
	"CHudHealth",
	"CHudDamageIndicator",
	"CHudBattery"
}
hook.Add("HUDShouldDraw", "Bronx_HL2HUDSuppress", function(element)
		if table.HasValue(suppressElements, element) then
			return false
		end
	end)