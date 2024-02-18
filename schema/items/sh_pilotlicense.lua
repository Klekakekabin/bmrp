ITEM.name = "Piloting License"
ITEM.model = Model("models/gibs/metal_gib4.mdl")
ITEM.description = "A piloting license issued in New Mexico, U.S.A in 1998. The license belongs to %s."
ITEM.noBusiness = true
ITEM.category = "Documents"
ITEM.weight = 0.2

function ITEM:GetDescription()
	return string.format(self.description, self:GetData("name", "nobody"))
end