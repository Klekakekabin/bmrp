ITEM.name = "Battery"
ITEM.description = "A battery used to charge the Hazardous Environment suit."
ITEM.model = "models/weapons/w_battery.mdl"
ITEM.width = 2
ITEM.height = 2
ITEM.noBusiness = true
ITEM.weight = 3

ITEM.functions.Place = {
    OnRun = function( item )
        local client = item.player
        local trace = client:GetEyeTraceNoCursor()
        local entity = ents.Create("ent_item_battery")

        entity:SetModel(item.model)
		entity:SetPos(trace.HitPos)
        entity:SetOwner(client)
		entity:Spawn()

        return true
    end
}
