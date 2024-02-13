------------------------------------------------------------------------------------
FACTION.name = "Black Mesa Science Team"
------------------------------------------------------------------------------------
FACTION.description = "" --TODO
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
	local itemFilter = {'cid'} -- ad anyting else
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
	end
end
------------------------------------------------------------------------------------
FACTION_SCIENCE = FACTION.index
------------------------------------------------------------------------------------