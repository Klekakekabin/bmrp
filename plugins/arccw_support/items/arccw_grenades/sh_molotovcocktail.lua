ITEM.name = "Molotov Cocktail."
ITEM.isGrenade = true
ITEM.description = "A rag soaked in alcohol fit into a bottle, ready for ignition."
ITEM.model = "models/weapons/arccw_go/w_eq_molotov_thrown.mdl"
ITEM.class = "weapon_grenade" -- don't change this, it is important
ITEM.weaponCategory = "grenade"
ITEM.width = 1
ITEM.weight = 0.6
ITEM.height = 1
ITEM.functions.Equip = {
    name = "Equip",
    tip = "equipTip",
    icon = "icon16/tick.png",
    OnRun = function(item)
        item:Equip(item.player)
        if SERVER then
            item.player:Give("arccw_go_nade_molotov") -- here put the grenade you want
        end
        return true
    end,
    OnCanRun = function(item)
        local client = item.player

        return !IsValid(item.entity) and IsValid(client) and item:GetData("equip") != true and
            hook.Run("CanPlayerEquipItem", client, item) != false
    end
}