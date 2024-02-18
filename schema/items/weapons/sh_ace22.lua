ITEM.name = "ACE 22"
ITEM.description = "An automatic rifle with the serial number #%s engraved upon the frame."
ITEM.model = "models/weapons/w_binocularsbp.mdl"
ITEM.class = "arccw_go_ace"
ITEM.weaponCategory = "rifle"
ITEM.width = 1
ITEM.height = 3
ITEM.weight = 10.25
ITEM.noBusiness = true

function ITEM:GetDescription()
	return string.format(self.description, self:GetData("id", "00000000"))
end