ITEM.name = "MAG-7"
ITEM.description = "A shotgun with the serial number #%s engraved upon the frame."
ITEM.model = "models/weapons/w_binocularsbp.mdl"
ITEM.class = "arccw_go_mag7"
ITEM.weaponCategory = "shotgun"
ITEM.width = 3
ITEM.height = 1
ITEM.weight = 10
ITEM.noBusiness = true

function ITEM:GetDescription()
	return string.format(self.description, self:GetData("id", "00000000"))
end