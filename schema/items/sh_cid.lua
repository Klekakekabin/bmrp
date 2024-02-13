-- Gonna change this later
ITEM.name = "Employee ID"
ITEM.model = Model("models/gibs/metal_gib4.mdl")
ITEM.description = "A Black Mesa Employee identification card with ID #%s, assigned to %s."
ITEM.noBusiness = true
ITEM.weight = 0.2

function ITEM:GetDescription()
	return string.format(self.description, self:GetData("id", "00000"), self:GetData("name", "nobody"))
end