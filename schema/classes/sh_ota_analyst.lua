CLASS.name = "Analyst"
CLASS.faction = FACTION_OTA
CLASS.isDefault = false
CLASS.limit = 3
CLASS.weapons = {"weapon_bm_flashlight", "gmod_camera", "weapon_vj_flaregun", "weapon_drr_radar"}

function CLASS:OnSet(client)
    local character = client:GetCharacter()
	if (character) then
		character:SetModel("models/humans_bmcer/pm/guard_bodyguard.mdl")
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

CLASS_ANALYST = CLASS.index