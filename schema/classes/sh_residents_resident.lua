CLASS.name = "Black Mesa Resident"
CLASS.faction = FACTION_RESIDENTS
CLASS.isDefault = true
CLASS.weapons = {""}

function CLASS:OnSet(client)
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

CLASS_RESIDENT = CLASS.index