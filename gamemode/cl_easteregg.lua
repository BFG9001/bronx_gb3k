local masks = {
	Material("sprites/bronx/easteregg/asset.png"),
	Material("sprites/bronx/easteregg/pao.png"),
	Material("sprites/bronx/easteregg/shia.png"),
	Material("sprites/bronx/easteregg/thatcat.png")
}

hook.Add("OnEntityCreated", "Bronx_EasterEgg_Masks", function(ent)
		local chance = math.random(1,100)
		if ent.IsBronxCitizen and (chance < 50) then
			ent.BronxEasterEggMask = table.Random(masks)
			hook.Add("PostDrawOpaqueRenderables", ent, function(depth, skybox)
					local npc = ent
					local att = npc:GetAttachment(npc:LookupAttachment("eyes"))
					if not att then return end
					cam.Start3D2D(att.Pos + (att.Ang:Forward() * 7), att.Ang * -1, .5)
						surface.SetMaterial(npc.BronxEasterEggMask)
						surface.DrawTexturedRect(-64, -64, 128, 128)
					cam.End3D2D()
				end)
		end
	end)
