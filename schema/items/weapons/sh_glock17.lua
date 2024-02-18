ITEM.name = "Glock 17"
ITEM.description = "A semi-automatic pistol with the serial number #%s engraved upon the frame."
ITEM.model = "models/weapons/w_binocularsbp.mdl"
ITEM.class = "arccw_go_glock"
ITEM.weaponCategory = "pistol"
ITEM.width = 1
ITEM.height = 1
ITEM.weight = 4.25
ITEM.noBusiness = true

function ITEM:GetDescription()
	return string.format(self.description, self:GetData("id", "00000000"))
end