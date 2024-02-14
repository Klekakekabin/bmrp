CLASS.name = "Fireteam Marine"
CLASS.faction = FACTION_HECU
CLASS.isDefault = false
CLASS.limit = 3
CLASS.weapons = {"arccw_go_sg556", "arccw_go_usp", "meleearts_blade_throwingknife", "weapon_vj_flaregun", "arccw_go_nade_smoke", "weapon_breachingcharge", "weapon_bm_flashlight_milit", "weapon_rpw_binoculars", "weapon_bm_tripmine"}

function CLASS:OnSet(client)
    local character = client:GetCharacter()
	if (character) then
		character:SetModel("models/humans/pm/marine.mdl")
	end
    
    client:SetHealth(100)
    client:SetMaxHealth(100)
    client:SetArmor(125)
    client:SetMaxArmor(125)
    client:SetSlowWalkSpeed(100)
    client:SetWalkSpeed(160)
    client:Spawn()
end

function CLASS:CanSwitchTo(client)
    return client:HasClassWhitelist(self.index)
end

CLASS_MARINE = CLASS.index