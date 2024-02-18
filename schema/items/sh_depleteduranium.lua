ITEM.name = "Depleted Uranium-235"
ITEM.description = "Depleted uranium contained within a lead case."
ITEM.model = "models/weapons/w_gaussammo.mdl"
ITEM.width = 3
ITEM.height = 1
ITEM.category = "Utility"
ITEM.noBusiness = true
ITEM.weight = 8

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
