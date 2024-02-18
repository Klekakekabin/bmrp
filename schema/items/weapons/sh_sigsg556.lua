ITEM.name = "SIG SG556"
ITEM.description = "An automatic rifle with the serial number #%s engraved upon the frame."
ITEM.model = "models/weapons/arccw_go/v_rif_sg556.mdl"
ITEM.class = "arccw_go_sg556"
ITEM.weaponCategory = "rifle"
ITEM.width = 1
ITEM.height = 3
ITEM.weight = 11.25
ITEM.noBusiness = true

function ITEM:GetDescription()
	return string.format(self.description, self:GetData("id", "00000000"))
end