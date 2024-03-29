------------------------------------------------------------------------------------
FACTION.name = "Office of the Administrator"
------------------------------------------------------------------------------------
FACTION.description = "The Office of the Administrator is responsible for the management of the Black Mesa Rsearch Facility under the guidance of the Administrator Wallace Breen."
------------------------------------------------------------------------------------
FACTION.color = Color(51, 51, 51, 255)
------------------------------------------------------------------------------------
FACTION.isDefault = false
------------------------------------------------------------------------------------
FACTION.pay = 50
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
	local itemFilter = {'cid', 'camera', 'radio', 'notepad', 'radar'} -- ad anyting else
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

	    inv:Add("driverslicense", 1, { 
            name = char:GetName(),
	    })

		inv:Add("camera", 1)

		inv:Add("radio", 1)

		inv:Add("notepad", 1)

		inv:Add("radar", 1)
	end
end
------------------------------------------------------------------------------------
FACTION_OTA = FACTION.index
------------------------------------------------------------------------------------