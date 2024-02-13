------------------------------------------------------------------------------------
local models = {
    -- Enter Model strings

    -- General Security
    -- "models/player/guard_pack/guard_01.mdl",
	-- "models/player/guard_pack/guard_02.mdl",
	-- "models/player/guard_pack/guard_03.mdl",
	-- "models/player/guard_pack/guard_04.mdl",
	-- "models/player/guard_pack/guard_05.mdl",
	-- "models/player/guard_pack/guard_06.mdl",
	-- "models/player/guard_pack/guard_07.mdl",
	-- "models/player/guard_pack/guard_08.mdl",
	-- "models/player/guard_pack/guard_09.mdl",
	-- "models/scp_mtf_russian/mtf_rus_02.mdl",
	-- "models/pmc/pmc_4/pmc__03.mdl",
	-- "models/pmc/pmc_4/pmc__01.mdl",
	-- "models/player/cheddar/ambassador/goc_ambassador_09.mdl",

    "MODEL PATH",

}
------------------------------------------------------------------------------------
for k, v in pairs(models) do
    ix.anim.SetModelClass(v, "player") -- Set model animations to player anim type
end
------------------------------------------------------------------------------------