ITEM.name = "SuperNova"
ITEM.description = "A shotgun with the serial number #%s engraved upon the frame."
ITEM.model = "models/weapons/arccw_go/v_shot_nova.mdl"
ITEM.class = "arccw_go_nova"
ITEM.weaponCategory = "shotgun"
ITEM.width = 3
ITEM.height = 1
ITEM.weight = 7.25
ITEM.noBusiness = true

function ITEM:GetDescription()
	return string.format(self.description, self:GetData("id", "00000000"))
end