ITEM.name = "Tripmine"
ITEM.isGrenade = true
ITEM.description = "An explosive device connected to a laser tripwire."
ITEM.model = "models/weapons/w_tripmine.mdl"
ITEM.class = "weapon_grenade" -- don't change this, it is important
ITEM.weaponCategory = "grenade"
ITEM.width = 2
ITEM.weight = 3
ITEM.height = 1
ITEM.functions.Equip = {
    name = "Equip",
    tip = "equipTip",
    icon = "icon16/tick.png",
    OnRun = function(item)
        item:Equip(item.player)
        if SERVER then
            item.player:Give("weapon_bm_tripmine") -- here put the grenade you want
        end
        return true
    end,
    OnCanRun = function(item)
        local client = item.player

        return !IsValid(item.entity) and IsValid(client) and item:GetData("equip") != true and
            hook.Run("CanPlayerEquipItem", client, item) != false
    end
}