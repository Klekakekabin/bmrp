local PLUGIN = PLUGIN

PLUGIN.SoundLocations = PLUGIN.SoundLocations or {
	--[[
		rp_tropic_blackmesa
	-- ]]
	Vector(5166.979492 -1750.827393 792.619385),
	Vector(3418.513428 1748.600708 790.202881),
	Vector(-2312.559570 -535.174683 452.030060),
	Vector(-1744.918823 -3850.578369 438.343811),
	Vector(63.372574 -2773.726807 166.589951),
	Vector(-1230.549438 -5137.847656 440.208191),
	Vector(-736.746338 -6509.715820 441.979584),
	Vector(-1497.189209 -7454.674316 429.151001),
	Vector(-1393.310059 -3626.892822 -1198.937500),
	Vector(-614.601013 -5605.236328 -1029.349365),
	Vector(1085.820923 -4963.137695 319.220062)
}

function PLUGIN:Think()
	if (!nextPlay or CurTime() > nextPlay) then
		local toPlaySound = "limefruit/announcements/"..math.Round(math.random(1,51))..".wav"

		for _, SoundLocation in pairs(self.SoundLocations) do
			sound.Play(toPlaySound, SoundLocation, 75, 100, 1)
		end

		nextPlay = CurTime() + math.random(30, 180)
	end
end
