CLASS.name = "Security Recruit"
CLASS.faction = FACTION_BMSF
CLASS.isDefault = false
CLASS.weapons = {"weapon_stungun", "meleearts_blade_kabarknife"}

function CLASS:OnSet(client)
    client:Spawn()
    client:SetHealth(100)
    client:SetMaxHealth(100)
    client:SetArmor(100)
    client:SetMaxArmor(100)
    client:SetSlowWalkSpeed(100)
    client:SetWalkSpeed(160)
    
end

function CLASS:CanSwitchTo(client)
    return client:HasClassWhitelist(self.index)
end

CLASS_SRECRUIT = CLASS.index