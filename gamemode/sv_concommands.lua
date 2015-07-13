local function DropWeapon(ply, cmd, argTab, argString)
	local dropWep = ply:GetActiveWeapon()
	ply:ConCommand("lastinv")
	ply:DropWeapon(dropWep)
	dropWep:SetOwner(nil)
end

concommand.Add("+menu", DropWeapon, nil, FCVAR_CLIENTCMD_CAN_EXECUTE)
concommand.Add("dropweapon", DropWeapon, nil, FCVAR_CLIENTCMD_CAN_EXECUTE)



local function ShowRadioMenu()

end