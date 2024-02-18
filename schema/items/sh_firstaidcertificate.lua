ITEM.name = "First Aid Certificate"
ITEM.model = Model("models/props/cs_office/offcertificatea.mdl")
ITEM.description = "A certificate awarded to %s for completing first aid training."
ITEM.noBusiness = true
ITEM.category = "Documents"
ITEM.weight = 0.5

function ITEM:GetDescription()
	return string.format(self.description, self:GetData("name", "nobody"))
end