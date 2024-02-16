ITEM.name = "Door Mat"
ITEM.description = "A door mat decorated with the symbol of the Black Mesa Research Facility."
ITEM.model = "models/props_generic/bm_supplycrate01.mdl"
ITEM.width = 2
ITEM.height = 1
ITEM.noBusiness = true
ITEM.weight = 0.8

ITEM.functions.Place = {
    OnRun = function( item )
        local client = item.player
        local trace = client:GetEyeTraceNoCursor()
        local entity = ents.Create("ent_doormat")

        entity:SetModel(item.model)
		entity:SetPos(trace.HitPos)
        entity:SetOwner(client)
		entity:Spawn()

        return true
    end
}
