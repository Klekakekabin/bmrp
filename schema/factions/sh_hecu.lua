------------------------------------------------------------------------------------
FACTION.name = "Hazardous Environment Combat Unit"
------------------------------------------------------------------------------------
FACTION.description = "The Hazardous Environment Combat Unit is a United States Marine Corps Special Unit, trained in dealing with dangerous environments and unconventional enemies."
------------------------------------------------------------------------------------
FACTION.color = Color(38, 92, 43, 255)
------------------------------------------------------------------------------------
FACTION.isDefault = false
------------------------------------------------------------------------------------
FACTION.pay = 30
------------------------------------------------------------------------------------
FACTION.models = { --TODO
	"models/humans/pm/marine.mdl",
}
------------------------------------------------------------------------------------
function FACTION:OnSpawn(client)
	local char = client:GetCharacter()
	local inv = char:GetInventory()

	-- Declare table 
	local itemFilter = {'cidhecu', 'driverslicense', 'milflashlight', 'radio', 'zip_ties', 'binoculars'} -- ad anyting else
	-- First use HasItems takes in a table
	if not inv:HasItems(itemFilter) then
		local id = Schema:ZeroNumber(math.random(1, 99999), 5)
		--for _, v in pairs(itemFilter) do --Going to use this function only for sid for now
		--	inv:Add(v, 1)
		--end

	    inv:Add("cidhecu", 1, { 
            name = char:GetName(),
            id = id
	    })

	    inv:Add("driverslicense", 1, { 
            name = char:GetName(),
	    })

		inv:Add("milflashlight", 1)

		inv:Add("radio", 1)

		inv:Add("zip_ties", 1)

		inv:Add("binoculars", 1)

	end
end
------------------------------------------------------------------------------------
FACTION_HECU = FACTION.index
------------------------------------------------------------------------------------