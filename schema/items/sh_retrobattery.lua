ITEM.name = "Retro Battery"
ITEM.description = "An old battery used to charge older variants of the Hazardous Environment suit."
ITEM.model = "models/items/bat1ery.mdl"
ITEM.width = 2
ITEM.height = 2
ITEM.noBusiness = true
ITEM.category = "Utility"
ITEM.weight = 6

ITEM.functions.Place = {
    OnRun = function( item )
        local client = item.player
        local trace = client:GetEyeTraceNoCursor()
        local entity = ents.Create("ent_item_battery_old")

        entity:SetModel(item.model)
		entity:SetPos(trace.HitPos)
        entity:SetOwner(client)
		entity:Spawn()

        return true
    end
}
