local PLUGIN = PLUGIN

PLUGIN.name = "Disable Defaults"
PLUGIN.description = "Disbales default helix systems"
PLUGIN.author = "Cipher"
PLUGIN.schema = "Any"

if (SERVER) then return end

function PLUGIN:CanDrawAmmoHUD(weapon)
	return false
end

function PLUGIN:ShouldHideBars()
    return true
end