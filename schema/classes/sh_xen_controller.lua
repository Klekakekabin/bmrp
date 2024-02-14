CLASS.name = "Xen Controller"
CLASS.faction = FACTION_XEN
CLASS.isDefault = false
CLASS.limit = 1
CLASS.weapons = {"weapon_bmx_controllerhand", "weapon_officerboost_normal", "weapon_officerboost_laststand"}

function CLASS:OnSet(client)
    local character = client:GetCharacter()
	if (character) then
		character:SetModel("models/player/bm_controller_pm.mdl")
	end
    
    client:SetHealth(300)
    client:SetMaxHealth(300)
    client:SetArmor(150)
    client:SetMaxArmor(150)
    --client:SetSlowWalkSpeed(100)
    --client:SetWalkSpeed(160)
    client:Spawn()
end

function CLASS:CanSwitchTo(client)
    return client:HasClassWhitelist(self.index)
end

CLASS_XCONTROLLER = CLASS.index