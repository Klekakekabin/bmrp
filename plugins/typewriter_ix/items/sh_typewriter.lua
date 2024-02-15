ITEM.name = "Typewriter"
ITEM.description = "A machine with keys for producing alphabetical characters, numerals, \nand typographical symbols one at a time on paper inserted round a roller."
ITEM.model = "models/props_c17/cashregister01a.mdl"
ITEM.width = 2
ITEM.height = 2
ITEM.category = "Documents"
ITEM.noBusiness = true
ITEM.weight = 5

ITEM.functions.Use = {
	name = "Use",
	OnClick = function(item)
		vgui.Create("ixTypewriter")
	end,
	OnRun = function(item)
		return false
	end,
	OnCanRun = function(item)
		return IsValid(item.entity)
	end
}