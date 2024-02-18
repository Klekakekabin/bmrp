-- Gonna change this later
ITEM.name = "Hazardous Environment Combat Unit ID"
ITEM.model = Model("models/elan/secretlab/cicard.mdl")
ITEM.description = "A United States Marine Corps identification tag, assigned to %s of the Santego Military Base, AZ."
ITEM.noBusiness = true
ITEM.category = "Documents"
ITEM.weight = 0.3

function ITEM:GetDescription()
	return string.format(self.description, self:GetData("name", "nobody"))
end