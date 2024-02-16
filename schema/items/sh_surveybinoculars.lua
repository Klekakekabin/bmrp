ITEM.name = "Survey Binoculars"
ITEM.description = "Used to view an area from a distance."
ITEM.model = "models/props_generic/bm_supplycrate01.mdl"
ITEM.width = 2
ITEM.height = 1
ITEM.noBusiness = true
ITEM.weight = 8.5

ITEM.functions.Place = {
    OnRun = function( item )
        local client = item.player
        local trace = client:GetEyeTraceNoCursor()
        local entity = ents.Create("ent_survey_binocular")

        entity:SetModel(item.model)
		entity:SetPos(trace.HitPos)
        entity:SetOwner(client)
		entity:Spawn()

        return true
    end
}
