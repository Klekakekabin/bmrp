ITEM.name = "AWSM"
ITEM.description = "A sniper with the serial number #%s engraved upon the frame."
ITEM.model = "models/weapons/w_binocularsbp.mdl"
ITEM.class = "arccw_go_awp"
ITEM.weaponCategory = "sniper"
ITEM.width = 3
ITEM.height = 1
ITEM.weight = 14
ITEM.noBusiness = true

function ITEM:GetDescription()
	return string.format(self.description, self:GetData("id", "00000000"))
end