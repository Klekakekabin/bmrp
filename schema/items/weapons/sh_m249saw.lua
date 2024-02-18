ITEM.name = "M249 SAW"
ITEM.description = "A light machine gun with the serial number #%s engraved upon the frame."
ITEM.model = "models/weapons/arccw_go/v_mach_m249para.mdl"
ITEM.class = "arccw_go_m249para"
ITEM.weaponCategory = "lmg"
ITEM.width = 3
ITEM.height = 1
ITEM.weight = 15.5
ITEM.noBusiness = true

function ITEM:GetDescription()
	return string.format(self.description, self:GetData("id", "00000000"))
end