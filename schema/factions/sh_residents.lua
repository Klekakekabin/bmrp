------------------------------------------------------------------------------------
FACTION.name = "Black Mesa Residents"
------------------------------------------------------------------------------------
FACTION.description = "The residents of the Black Mesa Research Facility, located in the New Mexico desert."
------------------------------------------------------------------------------------
FACTION.color = Color(227, 90, 27, 255)
------------------------------------------------------------------------------------
FACTION.isDefault = true
------------------------------------------------------------------------------------
FACTION.pay = 10
------------------------------------------------------------------------------------
FACTION.models = { --TODO
	"models/humans_bmcer/pm/office_worker.mdl",
	"models/humans/pm/fem_office_worker.mdl",
}
------------------------------------------------------------------------------------
function FACTION:OnSpawn(client)
	local char = client:GetCharacter()
	local inv = char:GetInventory()

	-- Declare table 
	local itemFilter = {'vid'} -- ad anyting else
	-- First use HasItems takes in a table
	if not inv:HasItems(itemFilter) then
		local id = Schema:ZeroNumber(math.random(1, 99999), 5)
		--for _, v in pairs(itemFilter) do --Going to use this function only for sid for now
		--	inv:Add(v, 1)
		--end

	    inv:Add("vid", 1, { 
            name = char:GetName(),
            id = id
	    })
	end
end
------------------------------------------------------------------------------------
FACTION_RESIDENTS = FACTION.index
------------------------------------------------------------------------------------