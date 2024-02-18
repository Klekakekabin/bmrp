ITEM.name = "SCAR-H"
ITEM.description = "A rifle with the serial number #%s engraved upon the frame."
ITEM.model = "models/weapons/w_binocularsbp.mdl"
ITEM.class = "arccw_go_scar"
ITEM.weaponCategory = "rifle"
ITEM.width = 3
ITEM.height = 1
ITEM.weight = 11.75
ITEM.noBusiness = true

function ITEM:GetDescription()
	return string.format(self.description, self:GetData("id", "00000000"))
end