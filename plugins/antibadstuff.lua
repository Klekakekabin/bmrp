------------------------------------------------------------------------------------
local PLUGIN = PLUGIN
------------------------------------------------------------------------------------
PLUGIN.name = "Anti-Bhop / Item\'s collide disabler / Anti-Family Share"
------------------------------------------------------------------------------------
PLUGIN.author = 'Bilwin'
------------------------------------------------------------------------------------
ix.config.Add("familyShare", true, "Whether or not to prevent family share accounts from joining the server.", nil, {
    category = "Anti-Family Share"
})
------------------------------------------------------------------------------------
ix.config.Add("notifyAdmins", true, "Whether or not to notify admins when a family share account attempts to join the server.", nil, {
    category = "Anti-Family Share"
})
------------------------------------------------------------------------------------
ix.config.Add("itemsCollide", true, "Whether or not Helix items should collide when dropped.", nil, {
    category = "Anti-Collision"
})
------------------------------------------------------------------------------------
if not (SERVER) then return end 
------------------------------------------------------------------------------------
function PLUGIN:PlayerAuthed(ply, steamid, uniqueID) --> Family share check will alert admins with the players name and steam64 ID
    local steamID64 = util.SteamIDTo64(steamid)

    if not ( ix.config.Get("familyShare", true) ) then return end
    
    if not (ply:OwnerSteamID64() == steamID64) then
        ply:Kick("Family share accounts are not allowed on this server.")
        if ( ix.config.Get("notifyAdmins", true) ) then
            for k, v in pairs(player.GetAll()) do
                
                if not ( IsValid(v) ) then continue end

                if not ( v:IsAdmin() ) then continue end

                v:ChatNotify("Family share account " .. ply:Name() .. " (" .. steamID64 .. ") attempted to join the server.")
            end
        end
    end
end
------------------------------------------------------------------------------------
function PLUGIN:ShouldCollide(f, t) --> Basic Collision check for items so we wont have item craming in a single corner and the server dies ( only helix items )

    if not ( ix.config.Get("itemsCollide", true) ) then return end
    
    if f:GetClass() == 'ix_item' && t:GetClass() == 'ix_item' then
        return false
    end
end
------------------------------------------------------------------------------------