ITEM.name = "PP-9 Bizon-2"
ITEM.description = "A submachine gun with the serial number #%s engraved upon the frame."
ITEM.model = "models/weapons/w_binocularsbp.mdl"
ITEM.class = "arccw_go_bizon"
ITEM.weaponCategory = "smg"
ITEM.width = 2
ITEM.height = 1
ITEM.weight = 8.5
ITEM.noBusiness = true

function ITEM:GetDescription()
	return string.format(self.description, self:GetData("id", "00000000"))
end