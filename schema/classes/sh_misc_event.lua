CLASS.name = "Event Character"
CLASS.faction = FACTION_MISC
CLASS.isDefault = false

function CLASS:OnSet(client)
    local character = client:GetCharacter()
	if (character) then
		character:SetModel("models/player/infoplayerrealism.mdl")
	end
    client:Spawn()
end

function CLASS:CanSwitchTo(client)
    return client:HasClassWhitelist(self.index)
end

CLASS_STAFFONDUTY = CLASS.index