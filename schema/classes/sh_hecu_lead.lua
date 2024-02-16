CLASS.name = "Fireteam Leader"
CLASS.faction = FACTION_HECU
CLASS.isDefault = false
CLASS.limit = 1
CLASS.weapons = {"arccw_go_g3", "arccw_go_p250", "meleearts_blade_throwingknife", "weapon_vj_flaregun", "arccw_go_nade_smoke", "weapon_breachingcharge", "weapon_bm_sg_deployer", "weapon_bm_tripmine"}

function CLASS:OnSet(client)
    local character = client:GetCharacter()
	if (character) then
		character:SetModel("models/humans/pm/marine_romka.mdl")
	end
    
    client:SetHealth(100)
    client:SetMaxHealth(100)
    client:SetArmor(150)
    client:SetMaxArmor(150)
    client:SetSlowWalkSpeed(100)
    client:SetWalkSpeed(160)
    client:Spawn()
end

function CLASS:CanSwitchTo(client)
    return client:HasClassWhitelist(self.index)
end

CLASS_FTL = CLASS.index