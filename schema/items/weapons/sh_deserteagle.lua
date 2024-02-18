ITEM.name = "Desert Eagle"
ITEM.description = "A semi-automatic pistol with the serial number #%s engraved upon the frame."
ITEM.model = "models/weapons/w_binocularsbp.mdl"
ITEM.class = "arccw_go_deagle"
ITEM.weaponCategory = "pistol"
ITEM.width = 2
ITEM.height = 1
ITEM.weight = 4.8
ITEM.noBusiness = true

function ITEM:GetDescription()
	return string.format(self.description, self:GetData("id", "00000000"))
end