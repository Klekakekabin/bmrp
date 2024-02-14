CLASS.name = "Anomalous Materials"
CLASS.faction = FACTION_SCIENCE
CLASS.isDefault = false
CLASS.limit = 5
CLASS.weapons = {"weapon_bm_flashlight", "weapon_fextinguisher", "meleearts_axe_crafted", "weapon_bm_reflector", "gmod_camera", "weapon_physcannon"}

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

CLASS_ANOMMAT = CLASS.index