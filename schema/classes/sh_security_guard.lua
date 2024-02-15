CLASS.name = "Security Guard"
CLASS.faction = FACTION_BMSF
CLASS.isDefault = false
CLASS.limit = 8
CLASS.weapons = {"arccw_go_fiveseven", "weapon_bm_flashlight", "weapon_stungun", "meleearts_blade_kabarknife"}

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

function CLASS:CanSwitchTo(client)
    return client:HasClassWhitelist(self.index)
end

CLASS_GUARD = CLASS.index