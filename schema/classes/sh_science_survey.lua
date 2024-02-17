CLASS.name = "Survey Team"
CLASS.faction = FACTION_SCIENCE
CLASS.isDefault = false
CLASS.limit = 4
CLASS.weapons = {"meleearts_bludgeon_crowbar", "weapon_pathway_marker", "weapon_physcannon", "weapon_vj_flaregun", "weapon_industrial_drill", "arccw_go_mp5", "arccw_go_glock", "meleearts_blade_throwingknife"}

function CLASS:OnSet(client)
    local character = client:GetCharacter()
	if (character) then
		character:SetModel("models/humans_bmcer/pm/scientist.mdl")
	end
    client:Spawn()
    client:SetHealth(100)
    client:SetMaxHealth(100)
    client:SetArmor(50)
    client:SetMaxArmor(200)
    client:SetSlowWalkSpeed(100)
    client:SetWalkSpeed(160)
    
end

function CLASS:OnSet(client)
	local char = client:GetCharacter()
	local inv = char:GetInventory()

	-- Declare table 
	local itemFilter = {'firearmslicense', 'hevcertificate'} -- ad anyting else
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
	end
end

function CLASS:CanSwitchTo(client)
    return client:HasClassWhitelist(self.index)
end

CLASS_SURVEY = CLASS.index