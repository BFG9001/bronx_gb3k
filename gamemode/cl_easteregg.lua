print("Eastereggs Loaded")
local masks = {
	"sprites/bronx/easteregg/asset.png",
	"sprites/bronx/easteregg/pao.png",
	"sprites/bronx/easteregg/shia.png",
	"sprites/bronx/easteregg/thatcat.png"
}

hook.Add("OnEntityCreated", "Bronx_EasterEgg_Masks", function(ent)
		--print"entitycreated called"
		local chance = math.random(1,100)
		--print(ent.IsBronxCitizen)
		if string.StartWith(ent:GetClass(), "npc_bronx") and (chance < 21) then
			print("Easter Egg hatched.")
			ent.BronxEasterEggMask = table.Random(masks)

		end
	end)

hook.Add("PostDrawOpaqueRenderables", "Bronx_RenderEasterEggs", function(depth, skybox)
	for k, npc in pairs(ents.FindByClass("npc_*")) do
		if not npc.BronxEasterEggMask then continue end
		local att = npc:GetAttachment(npc:LookupAttachment("eyes"))
		if att then
			render.SetMaterial(Material(npc.BronxEasterEggMask))
			render.DrawSprite(att.Pos + (att.Ang:Forward() * 5), 16, 16, Color(255,255,255))
		end
	end
end)

--[[		cam.Start3D2D(att.Pos + (att.Ang:Forward() * 7), att.Ang * -1, .5)
			surface.SetMaterial(npc.BronxEasterEggMask)
			surface.DrawTexturedRect(-64, -64, 128, 128)
		cam.End3D2D()
--]]