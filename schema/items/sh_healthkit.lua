ITEM.name = "Health Kit"
ITEM.description = "A larger kit containing medical supplies."
ITEM.model = "models/items/healthk1t.mdl"
ITEM.width = 3
ITEM.height = 3
ITEM.noBusiness = true
ITEM.category = "Utility"
ITEM.weight = 4

ITEM.functions.Place = {
    OnRun = function( item )
        local client = item.player
        local trace = client:GetEyeTraceNoCursor()
        local entity = ents.Create("ent_item_medkit")

        entity:SetModel(item.model)
		entity:SetPos(trace.HitPos)
        entity:SetOwner(client)
		entity:Spawn()

        return true
    end
}
