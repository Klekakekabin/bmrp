ITEM.name = "Black Mesa Visitor Pass"
ITEM.model = Model("models/props_tse/props_basement/key_card01.mdl")
ITEM.description = "A visitor pass for the Black Mesa Research Facility, numbered Visitor #%s, assigned to %s."
ITEM.noBusiness = true
ITEM.weight = 0.2

function ITEM:GetDescription()
	return string.format(self.description, self:GetData("id", "00000"), self:GetData("name", "nobody"))
end