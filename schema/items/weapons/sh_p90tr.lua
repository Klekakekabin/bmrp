ITEM.name = "P90 TR"
ITEM.description = "A submachine gun with the serial number #%s engraved upon the frame."
ITEM.model = "models/weapons/w_binocularsbp.mdl"
ITEM.class = "arccw_go_p90"
ITEM.weaponCategory = "smg"
ITEM.width = 2
ITEM.height = 1
ITEM.weight = 8.25
ITEM.noBusiness = true

function ITEM:GetDescription()
	return string.format(self.description, self:GetData("id", "00000000"))
end