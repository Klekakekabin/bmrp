CLASS.name = "Survey Team"
CLASS.faction = FACTION_SCIENCE
CLASS.isDefault = false
CLASS.limit = 4
CLASS.weapons = {"meleearts_bludgeon_crowbar", "weapon_pathway_marker", "weapon_physcannon", "weapon_vj_flaregun", "weapon_industrial_drill", "arccw_go_mp5", "arccw_go_glock", "meleearts_blade_throwingknife"}

function CLASS:OnSet(client)
    local character = client:GetCharacter()
	if (character) then
		character:SetModel("models/humans_bmcer/pm/scientist.mdl")
	end
    
    client:SetHealth(100)
    client:SetMaxHealth(100)
    client:SetArmor(50)
    client:SetMaxArmor(200)
    client:SetSlowWalkSpeed(100)
    client:SetWalkSpeed(160)
    client:Spawn()
end

function CLASS:CanSwitchTo(client)
    return client:HasClassWhitelist(self.index)
end

CLASS_SURVEY = CLASS.index