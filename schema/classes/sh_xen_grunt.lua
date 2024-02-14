CLASS.name = "Alien Grunt"
CLASS.faction = FACTION_XEN
CLASS.isDefault = false
CLASS.limit = 2
CLASS.weapons = {"weapon_bmx_hivehand"}

function CLASS:OnSet(client)
    local character = client:GetCharacter()
	if (character) then
		character:SetModel("models/player/bm_agrunt.mdl")
	end
    
    client:SetHealth(400)
    client:SetMaxHealth(400)
    client:SetArmor(250)
    client:SetMaxArmor(250)
    --client:SetSlowWalkSpeed(100)
    --client:SetWalkSpeed(160)
    client:Spawn()
end

function CLASS:CanSwitchTo(client)
    return client:HasClassWhitelist(self.index)
end

CLASS_GRUNT = CLASS.index
