ITEM.name = "Tesla Grenade"
ITEM.isGrenade = true
ITEM.description = "An explosive device charged by tesla energy developed at the Black Mesa Research Facility."
ITEM.model = "models/tiberium/tib_antidote.mdl"
ITEM.class = "weapon_grenade" -- don't change this, it is important
ITEM.weaponCategory = "grenade"
ITEM.width = 1
ITEM.weight = 2.1
ITEM.height = 1
ITEM.functions.Equip = {
    name = "Equip",
    tip = "equipTip",
    icon = "icon16/tick.png",
    OnRun = function(item)
        item:Equip(item.player)
        if SERVER then
            item.player:Give("weapon_tesla_nade") -- here put the grenade you want
        end
        return true
    end,
    OnCanRun = function(item)
        local client = item.player

        return !IsValid(item.entity) and IsValid(client) and item:GetData("equip") != true and
            hook.Run("CanPlayerEquipItem", client, item) != false
    end
}