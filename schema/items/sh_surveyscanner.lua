ITEM.name = "Survey Scanner"
ITEM.description = "Used to analyse the surrounding area and upload information to the Black Mesa Science Team database."
ITEM.model = "models/props_generic/bm_supplycrate01.mdl"
ITEM.width = 2
ITEM.height = 1
ITEM.noBusiness = true
ITEM.weight = 13.5

ITEM.functions.Place = {
    OnRun = function( item )
        local client = item.player
        local trace = client:GetEyeTraceNoCursor()
        local entity = ents.Create("ent_survey_scanner")

        entity:SetModel(item.model)
		entity:SetPos(trace.HitPos)
        entity:SetOwner(client)
		entity:Spawn()

        return true
    end
}
