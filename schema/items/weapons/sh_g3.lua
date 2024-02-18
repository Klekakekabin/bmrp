ITEM.name = "G3"
ITEM.description = "A rifle with the serial number #%s engraved upon the frame."
ITEM.model = "models/weapons/w_binocularsbp.mdl"
ITEM.class = "arccw_go_g3"
ITEM.weaponCategory = "rifle"
ITEM.width = 3
ITEM.height = 1
ITEM.weight = 13
ITEM.noBusiness = true

function ITEM:GetDescription()
	return string.format(self.description, self:GetData("id", "00000000"))
end