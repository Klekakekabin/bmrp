CLASS.name = "Security Specialist"
CLASS.faction = FACTION_BMSF
CLASS.isDefault = false
CLASS.limit = 2
CLASS.weapons = {}

function CLASS:OnSet(client)
    local character = client:GetCharacter()
	if (character) then
		character:SetModel("models/humans_bmcer/pm/guard_first_response.mdl")
	end
    client:Spawn()
    client:SetHealth(100)
    client:SetMaxHealth(100)
    client:SetArmor(100)
    client:SetMaxArmor(100)
    client:SetSlowWalkSpeed(100)
    client:SetWalkSpeed(160)
    
end

function CLASS:OnSet(client)
	local char = client:GetCharacter()
	local inv = char:GetInventory()

	-- Declare table 
	local itemFilter = {'firearmslicense', 'ump45', 'p2000', 'stungun', 'm84stun', 'kabarknife', 'mapaqs'} -- ad anyting else
	-- First use HasItems takes in a table
	if not inv:HasItems(itemFilter) then
		local id = Schema:ZeroNumber(math.random(1, 9999), 5)
		--for _, v in pairs(itemFilter) do --Going to use this function only for sid for now
		--	inv:Add(v, 1)
		--end

	    inv:Add("firearmslicense", 1, { 
            name = char:GetName(),
	    })

		inv:Add("ump45", 1)

		inv:Add("p2000", 1)

		inv:Add("stungun", 1)

		inv:Add("m84stun", 1)

		inv:Add("kabarknife", 1)

		inv:Add("mapaqs", 1)
	end
end

function CLASS:CanSwitchTo(client)
    return client:HasClassWhitelist(self.index)
end

CLASS_SPECIALIST = CLASS.index