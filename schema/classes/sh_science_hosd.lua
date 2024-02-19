CLASS.name = "Head of Science & Discovery"
CLASS.faction = FACTION_SCIENCE
CLASS.isDefault = false
CLASS.limit = 1
CLASS.weapons = {}

function CLASS:OnSet(client)
    local character = client:GetCharacter()
	if (character) then
		character:SetModel("models/humans_bmcer/pm/scientist.mdl")
	end
    client:Spawn()
    client:SetHealth(100)
    client:SetMaxHealth(100)
    client:SetArmor(0)
    client:SetMaxArmor(0)
    client:SetSlowWalkSpeed(100)
    client:SetWalkSpeed(160)
    
end

function CLASS:OnSet(client)
	local char = client:GetCharacter()
	local inv = char:GetInventory()

	-- Declare table 
	local itemFilter = {'firearmslicense', 'hevcertificate', 'crowbar', 'repairtorch', 'drill', 'gravitygun', 'model327r8'} -- ad anyting else
	-- First use HasItems takes in a table
	if not inv:HasItems(itemFilter) then
		local id = Schema:ZeroNumber(math.random(1, 9999), 5)
		--for _, v in pairs(itemFilter) do --Going to use this function only for sid for now
		--	inv:Add(v, 1)
		--end

	    inv:Add("firearmslicense", 1, { 
            name = char:GetName(),
	    })


	    inv:Add("hevcertificate", 1, { 
            name = char:GetName(),
	    })

		inv:Add("crowbar", 1)

		inv:Add("repairtorch", 1)

		inv:Add("drill", 1)

		inv:Add("gravitygun", 1)

		inv:Add("model327r8", 1)
	end
end

function CLASS:CanSwitchTo(client)
    return client:HasClassWhitelist(self.index)
end

CLASS_HOSD = CLASS.index