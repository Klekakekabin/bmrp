CLASS.name = "Vortigaunt"
CLASS.faction = FACTION_XEN
CLASS.isDefault = false
CLASS.limit = 3
CLASS.weapons = {"weapon_vortbeam"}

function CLASS:OnSet(client)
    local character = client:GetCharacter()
	if (character) then
		character:SetModel("models/player/bm_vortigaunt_pm.mdl")
	end
    client:Spawn()
    client:SetHealth(125)
    client:SetMaxHealth(125)
    client:SetArmor(50)
    client:SetMaxArmor(50)
    --client:SetSlowWalkSpeed(100)
    --client:SetWalkSpeed(160)
    
end

function CLASS:CanSwitchTo(client)
    return client:HasClassWhitelist(self.index)
end

CLASS_VORTIGAUNT = CLASS.index