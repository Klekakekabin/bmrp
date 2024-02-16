CLASS.name = "Head of Science & Discovery"
CLASS.faction = FACTION_SCIENCE
CLASS.isDefault = false
CLASS.limit = 1
CLASS.weapons = {"meleearts_bludgeon_crowbar", "meleearts_axe_crafted", "weapon_lvsrepair", "weapon_industrial_drill", "weapon_bm_reflector", "weapon_physcannon"}

function CLASS:OnSet(client)
    local character = client:GetCharacter()
	if (character) then
		character:SetModel("models/humans_bmcer/pm/scientist.mdl")
	end
    
    client:SetHealth(100)
    client:SetMaxHealth(100)
    client:SetArmor(0)
    client:SetMaxArmor(0)
    client:SetSlowWalkSpeed(100)
    client:SetWalkSpeed(160)
    client:Spawn()
end

function CLASS:CanSwitchTo(client)
    return client:HasClassWhitelist(self.index)
end

CLASS_HOSD = CLASS.index