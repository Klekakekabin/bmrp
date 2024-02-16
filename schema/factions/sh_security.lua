------------------------------------------------------------------------------------
FACTION.name = "Black Mesa Security Force"
------------------------------------------------------------------------------------
FACTION.description = "The Black Mesa Security Force is responsible for upholding law and maintaining the safety of staff at the Black Mesa Research Facility."
------------------------------------------------------------------------------------
FACTION.color = Color(53, 70, 181, 255)
------------------------------------------------------------------------------------
FACTION.isDefault = false
------------------------------------------------------------------------------------
FACTION.pay = 20
------------------------------------------------------------------------------------
FACTION.models = { --TODO
	"models/humans_bmcer/pm/guard.mdl",
	"models/humans_bmcer/pm/guard_02.mdl",
	"models/humans_bmcer/pm/guard_female.mdl",
	"models/humans_bmcer/pm/guard_jacket.mdl",
}
------------------------------------------------------------------------------------
function FACTION:OnCharacterCreated(client, character)
	local id = Schema:ZeroNumber(math.random(1, 99999), 5)
	local inventory = character:GetInventory()

	character:SetData("cid", id)

	inventory:Add("cid", 1, {
		name = character:GetName(),
		id = id
	})
end
------------------------------------------------------------------------------------
function FACTION:OnSpawn(client)
	local char = client:GetCharacter()
	local inv = char:GetInventory()

	-- Declare table 
	local itemFilter = {'cid', 'driverslicense', 'flashlight', 'radio', 'handcuffs'} -- ad anyting else
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

		inv:Add("flashlight", 1)

		inv:Add("radio", 1)

		inv:Add("handcuffs", 1)

	end
end
------------------------------------------------------------------------------------
FACTION_BMSF = FACTION.index
------------------------------------------------------------------------------------