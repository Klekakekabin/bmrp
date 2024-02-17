CLASS.name = "Staff on Duty"
CLASS.faction = FACTION_MISC
CLASS.isDefault = true

function CLASS:OnSet(client)
    local character = client:GetCharacter()
	if (character) then
		character:SetModel("models/player/infoplayerrealism.mdl")
	end
    client:Spawn()
    client:SetHealth(9999999999)
    client:SetMaxHealth(9999999999)
    client:SetArmor(9999999999)
    client:SetMaxArmor(9999999999)
    
end

function CLASS:CanSwitchTo(client)
    return client:HasClassWhitelist(self.index)
end

CLASS_STAFFONDUTY = CLASS.index