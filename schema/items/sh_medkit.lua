ITEM.name = "Medkit"
ITEM.description = "A kit containing medical supplies."
ITEM.model = "models/weapons/bm/w_medkit.mdl"
ITEM.width = 2
ITEM.height = 2
ITEM.noBusiness = true
ITEM.category = "Utility"
ITEM.weight = 2

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
