ITEM.name = "MAP-APS"
ITEM.isGrenade = true
ITEM.description = "A tactical device capable of intercepting and destroying incoming projectiles."
ITEM.model = "models/weapons/arccw/w_eq_mapaps.mdl"
ITEM.class = "weapon_grenade" -- don't change this, it is important
ITEM.weaponCategory = "grenade"
ITEM.width = 2
ITEM.weight = 2
ITEM.height = 4
ITEM.functions.Equip = {
    name = "Equip",
    tip = "equipTip",
    icon = "icon16/tick.png",
    OnRun = function(item)
        item:Equip(item.player)
        if SERVER then
            item.player:Give("arccw_eq_mapaps") -- here put the grenade you want
        end
        return true
    end,
    OnCanRun = function(item)
        local client = item.player

        return !IsValid(item.entity) and IsValid(client) and item:GetData("equip") != true and
            hook.Run("CanPlayerEquipItem", client, item) != false
    end
}