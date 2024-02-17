CLASS.name = "Research and Development"
CLASS.faction = FACTION_SCIENCE
CLASS.isDefault = false
CLASS.limit = 5
CLASS.weapons = {"meleearts_bludgeon_crowbar", "weapon_lvsrepair", "weapon_industrial_drill", "weapon_physcannon"}

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

function CLASS:CanSwitchTo(client)
    return client:HasClassWhitelist(self.index)
end

CLASS_RND = CLASS.index