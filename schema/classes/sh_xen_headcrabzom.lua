CLASS.name = "Headcrab Zombie"
CLASS.faction = FACTION_XEN
CLASS.isDefault = false
CLASS.limit = 3
CLASS.weapons = {"weapon_sillyzombieclaw"}

function CLASS:OnSet(client)
    local character = client:GetCharacter()
	if (character) then
		character:SetModel("models/player/zombie_guard_pm.mdl")
	end
    client:Spawn()
    client:SetHealth(100)
    client:SetMaxHealth(100)
    client:SetArmor(0)
    client:SetMaxArmor(0)
    client:SetPos(Vector(-10350,12773,-6750))
    client:SetSlowWalkSpeed(100)
    client:SetWalkSpeed(120)
    
end

function CLASS:CanSwitchTo(client)
    return client:HasClassWhitelist(self.index)
end

CLASS_HEADZOMBIE = CLASS.index