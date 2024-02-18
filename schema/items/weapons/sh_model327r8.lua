ITEM.name = "Model 327 R8"
ITEM.description = "A semi-automatic revolver with the serial number #%s engraved upon the frame."
ITEM.model = "models/weapons/arccw_go/v_pist_r8.mdl"
ITEM.class = "arccw_go_r8"
ITEM.weaponCategory = "pistol"
ITEM.width = 1
ITEM.height = 1
ITEM.weight = 3.3
ITEM.noBusiness = true

function ITEM:GetDescription()
	return string.format(self.description, self:GetData("id", "00000000"))
end