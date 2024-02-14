CLASS.name = "Security Specialist"
CLASS.faction = FACTION_BMSF
CLASS.isDefault = false
CLASS.limit = 2
CLASS.weapons = {""}

function CLASS:OnSet(client)
    local character = client:GetCharacter()
	if (character) then
		character:SetModel("")
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

CLASS_SPECIALIST = CLASS.index