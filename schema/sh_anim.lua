------------------------------------------------------------------------------------
local models = {
    -- Enter Model strings

    -- Office of the Administrator
	"models/humans_bmcer/pm/office_worker.mdl",
	"models/humans_bmcer/pm/guard_bodyguard.mdl",
	"models/humans_bmcer/pm/admin_male.mdl",
	"models/humans/pm/fem_office_worker.mdl",
	
	-- Black Mesa Science Team

	"models/humans_bmcer/pm/scientist.mdl",
	"models/humans_bmcer/pm/scientist_02.mdl",
	"models/humans_bmcer/pm/scientist_casual.mdl",
	"models/humans_bmcer/pm/scientist_casual_02.mdl",
	"models/humans_bmcer/pm/scientist_cl.mdl",
	"models/humans_bmcer/pm/scientist_vest.mdl",
	"models/humans_bmcer/pm/scientist_vest_casual.mdl",
	"models/humans_bmcer/pm/scientist_vest_cl.mdl",
	"models/humans_bmcer/pm/scientist_female.mdl",
	"models/humans/pm/engineer.mdl",
	"models/humans/pm/engineer_female.mdl",
	"models/humans_bmcer/pm/scientist_cleansuit.mdl",
	"models/humans_bmcer/pm/kleka/scientist_cleansuit.mdl",
	"models/humans_bmcer/pm/kleka/scientist_cleansuit_hurt.mdl",

	-- Black Mesa Security Force

	"models/humans_bmcer/pm/guard.mdl",
	"models/humans_bmcer/pm/guard_02.mdl",
	"models/humans_bmcer/pm/guard_female.mdl",
	"models/humans_bmcer/pm/guard_jacket.mdl",
	"models/humans_bmcer/pm/guard_otis.mdl",
	"models/humans_bmcer/pm/guard_first_response.mdl",

	-- Xen

	"models/player/bm_agrunt.mdl",
	"models/player/bm_controller_pm.mdl",
	"models/player/bm_vortigaunt_pm.mdl",
	"models/player/zombie_guard_pm.mdl",
	"models/player/zombie_marine_pm.mdl",
	"models/player/zombie_sci.mdl",
	"models/echo/hl2_antlion_pm.mdl",

	-- Black Mesa Residents

	"models/sirgibs/ragdolls/bms_citizens/male_citizen_player.mdl",
	"models/sirgibs/ragdolls/bms_citizens/female_citizen_player.mdl",
	"models/sirgibs/ragdolls/bms_citizens/male_refugee_player.mdl",
	"models/sirgibs/ragdolls/bms_citizens/female_refugee_player.mdl",
	"models/humans_bmcer/pm/scientist_male_hoodiejeans.mdl",
	"models/humans_bmcer/pm/scientist_female_zipper.mdl",

	-- Hazardous Environment Combat Unit

	"models/humans_bmcer/pm/marine_engineer.mdl",
	"models/humans/pm/marine_romka.mdl",
	"models/humans/pm/marine_old.mdl",
	"models/humans/pm/marine.mdl",

	-- Lore Characters

	"models/humans_bmcer/pm/scientist_eli.mdl",
	"models/humans_bmcer/pm/scientist_kliener.mdl",
	"models/humans_bmcer/pm/scientist_coomer.mdl",
	"models/player/scientist_gordon.mdl",
	"models/player/scientist_rosenberg.mdl",
	"models/player/scientist_simmons.mdl",
	"models/player/scientist_walter.mdl",
	"models/player/guard_mordoch.mdl",
	"models/player/guard_otis.mdl",
	"models/player/guard_thick.mdl",
	"models/player/scientist_elly.mdl",
	"models/1000shells/hl2rp/rebels/special/emele/MarkIV_PM.mdl",
	"models/1000shells/hl2rp/rebels/special/eva/MarkIV_PM.mdl",
	"models/player/breen.mdl",
	"models/player/mossman.mdl",
	"models/player/mossman_arctic.mdl",
	"models/player/magnusson.mdl",
	"models/player/guard_barney.mdl",

	-- Event Characters

	"models/sirgibs/ragdolls/bms_citizens/male_rebel_player.mdl",
	"models/sirgibs/ragdolls/bms_citizens/female_rebel_player.mdl",
	"models/humans_bmcer/pm/admin_male02_hurt.mdl",
	"models/humans_bmcer/pm/admin_male_hurt.mdl",
	"models/humans_bmcer/pm/cafeteria_female.mdl",
	"models/humans_bmcer/pm/cafeteria_female_hurt.mdl",
	"models/humans_bmcer/pm/cafeteria_male.mdl",
	"models/humans_bmcer/pm/cafeteria_male_hurt.mdl",
	"models/humans_bmcer/pm/construction_worker.mdl",
	"models/humans_bmcer/pm/construction_worker_hurt.mdl",
	"models/humans_bmcer/pm/custodian.mdl",
	"models/humans_bmcer/pm/custodian_hurt.mdl",
	"models/humans_bmcer/pm/cwork.mdl",
	"models/humans_bmcer/pm/cwork_hurt.mdl",
	"models/humans_bmcer/pm/engineer.mdl",
	"models/humans_bmcer/pm/engineer_hurt.mdl",
	"models/humans_bmcer/pm/guard_female_hurt.mdl",
	"models/humans_bmcer/pm/guard_first_response_hurt.mdl",
	"models/humans_bmcer/pm/guard_jacket_hurt.mdl",
	"models/humans_bmcer/pm/guard_otis_hurt.mdl",
	"models/humans_bmcer/pm/logistic.mdl",
	"models/humans_bmcer/pm/office_worker_hurt.mdl",
	"models/humans_bmcer/pm/osha_inspector.mdl",
	"models/humans_bmcer/pm/osha_inspector_hurt.mdl",
	"models/humans_bmcer/pm/paramedic.mdl",
	"models/humans_bmcer/pm/pilot.mdl",
	"models/humans_bmcer/pm/scientist_casual_hurt.mdl",
	"models/humans_bmcer/pm/scientist_casual_hurt_02.mdl",
	"models/humans_bmcer/pm/scientist_cl_hurt.mdl",
	"models/humans_bmcer/pm/scientist_cleansuit_hurt.mdl",
	"models/humans_bmcer/pm/scientist_hurt.mdl",
	"models/humans_bmcer/pm/scientist_hurt_02.mdl",
	"models/humans_bmcer/pm/technician.mdl",
	"models/humans/pm/scientist_female_hurt.mdl",
	"models/humans/pm/custodian_female.mdl",
	"models/humans/pm/custodian_female_hurt.mdl",
	"models/humans/pm/engineer_hurt.mdl",
	"models/humans/pm/engineer_female_hurt.mdl",
	"models/humans/pm/contractor.mdl",
	"models/humans/pm/contractor_02.mdl",
	"models/humans/pm/contractor_female.mdl",
	"models/humans/pm/contractor_female_hurt.mdl",
	"models/humans/pm/contractor_female_hurt_02.mdl",
	"models/humans/pm/contractor_hurt.mdl",
	"models/humans/pm/contractor_hurt_02.mdl",
	"models/humans/pm/custodian.mdl",
	"models/humans/pm/custodian_hurt.mdl",
	"models/humans/pm/cwork.mdl",
	"models/humans/pm/cwork_female.mdl",
	"models/humans/pm/cwork_female_hurt.mdl",
	"models/humans/pm/cwork_hurt.mdl",
	"models/humans/pm/fem_office_worker_hurt.mdl",
	"models/humans/pm/fireman.mdl",
	"models/humans/pm/fireman_hurt.mdl",
	"models/armacham/scientists/scientists_1.mdl",
	"models/armacham/scientists/scientists_2.mdl",
	"models/armacham/scientists/scientists_3.mdl",
	"models/armacham/scientists/scientists_4.mdl",
	"models/armacham/scientists/scientists_5.mdl",
	"models/armacham/scientists/scientists_6.mdl",
	"models/armacham/scientists/scientists_7.mdl",
	"models/armacham/scientists/scientists_8.mdl",
	"models/armacham/scientists/scientists_9.mdl",
	"models/armacham/security/guard_1.mdl",
	"models/armacham/security/guard_2.mdl",
	"models/armacham/security/guard_3.mdl",
	"models/armacham/security/guard_4.mdl",
	"models/armacham/security/guard_5.mdl",
	"models/armacham/security/guard_6.mdl",
	"models/armacham/security/guard_7.mdl",
	"models/armacham/security/guard_8.mdl",
	"models/armacham/security/guard_9.mdl",
	"models/player/wilson.mdl",
	"models/greg.mdl",
	"models/player/gman_high.mdl",
	"models/player/zombie_classic.mdl",
	"models/player/zombie_fast.mdl",
	"models/player/hostage/hostage_04.mdl",
	"models/player/hostage/hostage_03.mdl",
	"models/player/hostage/hostage_02.mdl",
	"models/player/hostage/hostage_01.mdl",
	"models/player/wcc.mdl",
	"models/bloocobalt/science/army_08.mdl",
	"models/bloocobalt/science/army_09.mdl",
	"models/bloocobalt/science/navy_09.mdl",
	"models/bloocobalt/science/usaf_06.mdl",
	"models/bloocobalt/science/usmc_07.mdl",
	"models/humans/bms/blackopspm.mdl",
	"models/hastor/humans/femassassin/hassassin_pm.mdl",
	"models/kerry/ag_player/male_01_fbi.mdl",
	"models/kerry/ag_player/male_02_fbi.mdl",
	"models/kerry/ag_player/male_04_fbi.mdl",
	"models/kerry/ag_player/male_05_fbi.mdl",
	"models/kerry/ag_player/male_06_fbi.mdl",
	"models/kerry/ag_player/male_07_fbi.mdl",
	"models/kerry/ag_player/male_08_fbi.mdl",
	"models/kerry/ag_player/male_09_fbi.mdl",
	"models/player/icpd/fbi2/female_01.mdl",
	"models/player/icpd/fbi2/female_02.mdl",
	"models/player/icpd/fbi2/female_03.mdl",
	"models/player/icpd/fbi2/female_04.mdl",
	"models/player/icpd/fbi2/female_06.mdl",
	"models/player/icpd/fbi2/female_07.mdl",
	"models/player/icpd/fbi2/male_01.mdl",
	"models/player/icpd/fbi2/male_02.mdl",
	"models/player/icpd/fbi2/male_03.mdl",
	"models/player/icpd/fbi2/male_04.mdl",
	"models/player/icpd/fbi2/male_05.mdl",
	"models/player/icpd/fbi2/male_06.mdl",
	"models/player/icpd/fbi2/male_07.mdl",
	"models/player/icpd/fbi2/male_08.mdl",
	"models/player/icpd/fbi2/male_09.mdl",
	"models/sentry/senvmaf/senmafgoon1pm.mdl",
	"models/sentry/senvmaf/senmafgoon2pm.mdl",
	"models/sentry/senvmaf/senmafgoon3pm.mdl",
	"models/sentry/senvmaf/senrusgoon1pm.mdl",
	"models/sentry/senvmaf/senrusgoon2pm.mdl",
	"models/sentry/senvmaf/senrusgoon3pm.mdl",
	"models/sentry/senvmaf/senvmaf1male9pm.mdl",
	"models/sentry/senvmaf/senvmaf2male8pm.mdl",
	"models/sentry/senvmaf/senvmaf3male6pm.mdl",
	"models/sentry/senvmaf/senvmaf4male2pm.mdl",
	"models/dannio/atf/atfpolice.mdl",

	-- Staff
	
	"models/player/infoplayerrealism.mdl",

}
------------------------------------------------------------------------------------
for k, v in pairs(models) do
    ix.anim.SetModelClass(v, "player") -- Set model animations to player anim type
end
------------------------------------------------------------------------------------