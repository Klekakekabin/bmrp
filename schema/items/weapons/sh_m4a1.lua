ITEM.name = "M4A1"
ITEM.description = "An automatic rifle with the serial number #%s engraved upon the frame."
ITEM.model = "models/weapons/arccw_go/v_rif_m4a1.mdl"
ITEM.class = "arccw_go_m4"
ITEM.weaponCategory = "rifle"
ITEM.width = 1
ITEM.height = 3
ITEM.weight = 10.75
ITEM.noBusiness = true

function ITEM:GetDescription()
	return string.format(self.description, self:GetData("id", "00000000"))
end