ITEM.name = "Geiger Counter"
ITEM.description = "Used to detect and measure ionizing radiation."
ITEM.model = "models/props_generic/geigercounter.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.category = "Utility"
ITEM.noBusiness = true
ITEM.weight = 2.5

ITEM.functions.Place = {
    OnRun = function( item )
        local client = item.player
        local trace = client:GetEyeTraceNoCursor()
        local entity = ents.Create("ent_geigercounter")

        entity:SetModel(item.model)
		entity:SetPos(trace.HitPos)
        entity:SetOwner(client)
		entity:Spawn()

        return true
    end
}
