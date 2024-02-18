-- Gonna change this later
ITEM.name = "Black Mesa Employee ID"
ITEM.model = Model("models/props_tse/props_basement/key_card01.mdl")
ITEM.description = "An employee of the Black Mesa Research Facility's identification card, numbered ID #%s, assigned to %s."
ITEM.noBusiness = true
ITEM.category = "Documents"
ITEM.weight = 0.2

function ITEM:GetDescription()
	return string.format(self.description, self:GetData("id", "00000"), self:GetData("name", "nobody"))
end