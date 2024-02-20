CLASS.name = "Antlion"
CLASS.faction = FACTION_XEN
CLASS.isDefault = false
CLASS.limit = 5
CLASS.weapons = {"swep_am_monster"}

function CLASS:OnSet(client)
    local character = client:GetCharacter()
	if (character) then
		character:SetModel("models/echo/hl2_antlion_pm.mdl")
	end
    client:Spawn()
    client:SetHealth(75)
    client:SetMaxHealth(75)
    client:SetArmor(0)
    client:SetMaxArmor(0)
    client:SetPos(Vector(-10350,12773,-6750))
    client:SetSlowWalkSpeed(140)
    client:SetWalkSpeed(200)
    
end

function CLASS:CanSwitchTo(client)
    return client:HasClassWhitelist(self.index)
end

CLASS_ANTLION = CLASS.index