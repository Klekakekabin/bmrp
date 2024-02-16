ITEM.name = "HECU Radio"
ITEM.description = "A radio utilised by the United States Marine Corps' Hazardous Environment Combat Unit."
ITEM.model = "models/props_generic/bm_supplycrate01.mdl"
ITEM.width = 2
ITEM.height = 2
ITEM.noBusiness = true
ITEM.weight = 8

ITEM.functions.Place = {
    OnRun = function( item )
        local client = item.player
        local trace = client:GetEyeTraceNoCursor()
        local entity = ents.Create("ent_hecu_radio")

        entity:SetModel(item.model)
		entity:SetPos(trace.HitPos)
        entity:SetOwner(client)
		entity:Spawn()

        return true
    end
}
