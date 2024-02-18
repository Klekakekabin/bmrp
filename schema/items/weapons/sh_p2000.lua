ITEM.name = "P2000"
ITEM.description = "A semi-automatic pistol with the serial number #%s engraved upon the frame."
ITEM.model = "models/weapons/w_binocularsbp.mdl"
ITEM.class = "arccw_go_p2000"
ITEM.weaponCategory = "pistol"
ITEM.width = 1
ITEM.height = 1
ITEM.weight = 3.6
ITEM.noBusiness = true

function ITEM:GetDescription()
	return string.format(self.description, self:GetData("id", "00000000"))
end