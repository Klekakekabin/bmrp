CLASS.name = "Black Mesa Retiree"
CLASS.faction = FACTION_RESIDENTS
CLASS.isDefault = true
CLASS.weapons = {""}

function CLASS:OnSet(client)
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

CLASS_RITEREE = CLASS.index