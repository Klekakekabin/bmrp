ITEM.name = "Scale"
ITEM.description = "Used to measure weight in a laboratory setting."
ITEM.model = "models/props_generic/bm_supplycrate01.mdl"
ITEM.width = 2
ITEM.height = 2
ITEM.noBusiness = true
ITEM.category = "Utility"
ITEM.weight = 3.5

ITEM.functions.Place = {
    OnRun = function( item )
        local client = item.player
        local trace = client:GetEyeTraceNoCursor()
        local entity = ents.Create("ent_lab_scale")

        entity:SetModel(item.model)
		entity:SetPos(trace.HitPos)
        entity:SetOwner(client)
		entity:Spawn()

        return true
    end
}
