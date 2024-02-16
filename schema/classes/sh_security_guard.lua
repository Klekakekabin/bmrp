CLASS.name = "Security Guard"
CLASS.faction = FACTION_BMSF
CLASS.isDefault = false
CLASS.limit = 8
CLASS.weapons = {"arccw_go_fiveseven", "weapon_stungun", "meleearts_blade_kabarknife"}

function CLASS:OnSet(client)
    local character = client:GetCharacter()
	if (character) then
		character:SetModel("models/humans_bmcer/pm/guard.mdl")
	end
    
    client:SetHealth(100)
    client:SetMaxHealth(100)
    client:SetArmor(100)
    client:SetMaxArmor(100)
    client:SetSlowWalkSpeed(100)
    client:SetWalkSpeed(160)
    client:Spawn()
end

function CLASS:OnSet(client)
	local char = client:GetCharacter()
	local inv = char:GetInventory()

	-- Declare table 
	local itemFilter = {'firearmslicense'} -- ad anyting else
	-- First use HasItems takes in a table
	if not inv:HasItems(itemFilter) then
		local id = Schema:ZeroNumber(math.random(1, 9999), 5)
		--for _, v in pairs(itemFilter) do --Going to use this function only for sid for now
		--	inv:Add(v, 1)
		--end

	    inv:Add("firearmslicense", 1, { 
            name = char:GetName(),
	    })
	end
end

function CLASS:CanSwitchTo(client)
    return client:HasClassWhitelist(self.index)
end

CLASS_GUARD = CLASS.index