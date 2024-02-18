ITEM.name = "M92FS"
ITEM.description = "A semi-automatic pistol with the serial number #%s engraved upon the frame."
ITEM.model = "models/weapons/w_binocularsbp.mdl"
ITEM.class = "arccw_go_m9"
ITEM.weaponCategory = "pistol"
ITEM.width = 1
ITEM.height = 1
ITEM.weight = 3.25
ITEM.noBusiness = true

function ITEM:GetDescription()
	return string.format(self.description, self:GetData("id", "00000000"))
end