CLASS.name = "Operations Manager"
CLASS.faction = FACTION_OTA
CLASS.isDefault = false
CLASS.limit = 1
CLASS.weapons = {"weapon_vj_flaregun", "arccw_go_r8", "weapon_stungun"}

function CLASS:OnSet(client)
    local character = client:GetCharacter()
	if (character) then
		character:SetModel("models/humans_bmcer/pm/guard_bodyguard.mdl")
	end
	client:Spawn()
    client:SetHealth(100)
    client:SetMaxHealth(100)
    client:SetArmor(50)
    client:SetMaxArmor(0)
    client:SetSlowWalkSpeed(100)
    client:SetWalkSpeed(160)
    
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

CLASS_OPMANAGER = CLASS.index