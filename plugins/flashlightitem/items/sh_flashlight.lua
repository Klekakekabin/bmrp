
ITEM.name = "Flashlight"
ITEM.model = Model("models/Items/battery.mdl")
ITEM.width = 1
ITEM.height = 2
ITEM.description = "A standard flashlight that can be toggled."
ITEM.category = "Tools"
ITEM.nobusiness = true
ITEM.weight = 1

ITEM:Hook("drop", function(item)
	item.player:Flashlight(false)
end)
