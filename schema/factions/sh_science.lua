------------------------------------------------------------------------------------
FACTION.name = "Black Mesa Science Team"
------------------------------------------------------------------------------------
FACTION.description = "The Black Mesa Science Team is responsible for new development and discovery at the Black Mesa Research Facility."
------------------------------------------------------------------------------------
FACTION.color = Color(194, 190, 76, 255)
------------------------------------------------------------------------------------
FACTION.isDefault = false
------------------------------------------------------------------------------------
FACTION.pay = 25
------------------------------------------------------------------------------------
FACTION.models = { --TODO
	"models/humans_bmcer/pm/scientist.mdl",
	"models/humans_bmcer/pm/scientist_02.mdl",
	"models/humans_bmcer/pm/scientist_casual.mdl",
	"models/humans_bmcer/pm/scientist_casual_02.mdl",
	"models/humans_bmcer/pm/scientist_cl.mdl",
	"models/humans_bmcer/pm/scientist_vest.mdl",
	"models/humans_bmcer/pm/scientist_vest_casual.mdl",
	"models/humans_bmcer/pm/scientist_vest_cl.mdl",
	"models/humans_bmcer/pm/scientist_female.mdl",
}
------------------------------------------------------------------------------------
function FACTION:OnSpawn(client)
	local char = client:GetCharacter()
	local inv = char:GetInventory()

	-- Declare table 
	local itemFilter = {'cid', 'flashlight', 'radio', 'camera', 'notepad', 'fireextinguisher'} -- ad anyting else
	-- First use HasItems takes in a table
	if not inv:HasItems(itemFilter) then
		local id = Schema:ZeroNumber(math.random(1, 99999), 5)
		--for _, v in pairs(itemFilter) do --Going to use this function only for sid for now
		--	inv:Add(v, 1)
		--end

	    inv:Add("cid", 1, { 
            name = char:GetName(),
            id = id
	    })

		inv:Add("camera", 1)

		inv:Add("radio", 1)

		inv:Add("flashlight", 1)

		inv:Add("notepad", 1)

		inv:Add("fireextinguisher", 1)

	end
end
------------------------------------------------------------------------------------
FACTION_SCIENCE = FACTION.index
------------------------------------------------------------------------------------