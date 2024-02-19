CLASS.name = "Fireteam Specialist"
CLASS.faction = FACTION_HECU
CLASS.isDefault = false
CLASS.limit = 1
CLASS.weapons = {}

function CLASS:OnSet(client)
    local character = client:GetCharacter()
	if (character) then
		character:SetModel("models/humans_bmcer/pm/marine_engineer.mdl")
	end
    client:Spawn()
    client:SetHealth(100)
    client:SetMaxHealth(100)
    client:SetArmor(150)
    client:SetMaxArmor(150)
    client:SetSlowWalkSpeed(100)
    client:SetWalkSpeed(160)
    
end

function CLASS:OnSet(client)
	local char = client:GetCharacter()
	local inv = char:GetInventory()

	-- Declare table 
	local itemFilter = {'firearmslicense', 'sigsg556', 'p250', 'bowieknife', 'flaregun', 'm67frag', 'anm14thermite', 'hecusentry'} -- ad anyting else
	-- First use HasItems takes in a table
	if not inv:HasItems(itemFilter) then
		local id = Schema:ZeroNumber(math.random(1, 9999), 5)
		--for _, v in pairs(itemFilter) do --Going to use this function only for sid for now
		--	inv:Add(v, 1)
		--end

	    inv:Add("firearmslicense", 1, { 
            name = char:GetName(),
	    })

		inv:Add("sigsg556", 1)

		inv:Add("p250", 1)

		inv:Add("bowieknife", 1)

		inv:Add("flaregun", 1)

		inv:Add("m67frag", 1)

		inv:Add("anm14thermite", 1)

		inv:Add("hecusentry", 1)
	end
end

function CLASS:CanSwitchTo(client)
    return client:HasClassWhitelist(self.index)
end

CLASS_HECUSPEC = CLASS.index