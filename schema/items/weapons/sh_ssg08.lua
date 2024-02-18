ITEM.name = "SSG08"
ITEM.description = "A sniper with the serial number #%s engraved upon the frame."
ITEM.model = "models/weapons/arccw_go/v_snip_ssg08.mdl"
ITEM.class = "arccw_go_ssg08"
ITEM.weaponCategory = "sniper"
ITEM.width = 3
ITEM.height = 1
ITEM.weight = 8.5
ITEM.noBusiness = true

function ITEM:GetDescription()
	return string.format(self.description, self:GetData("id", "00000000"))
end