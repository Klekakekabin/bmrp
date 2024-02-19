ITEM.name = "HECU Sentry"
ITEM.isGrenade = true
ITEM.description = "An autonomous sentry gun used by the Hazardous Environment Combat Unit to guard areas of strategic value."
ITEM.model = "models/npcs/sentry_ground.mdl"
ITEM.class = "weapon_grenade" -- don't change this, it is important
ITEM.weaponCategory = "utility"
ITEM.width = 1
ITEM.weight = 12.5
ITEM.height = 1
ITEM.functions.Equip = {
    name = "Equip",
    tip = "equipTip",
    icon = "icon16/tick.png",
    OnRun = function(item)
        item:Equip(item.player)
        if SERVER then
            item.player:Give("weapon_bm_sg_deployer") -- here put the grenade you want
        end
        return true
    end,
    OnCanRun = function(item)
        local client = item.player

        return !IsValid(item.entity) and IsValid(client) and item:GetData("equip") != true and
            hook.Run("CanPlayerEquipItem", client, item) != false
    end
}