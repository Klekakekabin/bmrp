------------------------------------------------------------------------------------
-- Custom Command for getting player info
ix.command.Add("PlyGetInfo", {
	description = "Gets the target player's information.",
	privilege = "Tropic - PlayerGetInfo",
	arguments = ix.type.player,
	OnRun = function(self, client, target)
		client:Notify("Character Name: " .. target:Name())
		client:Notify("Steam Name: " .. target:SteamName())
		client:Notify("SteamID: " .. target:SteamID())

		client:Notify("Health: " .. target:Health())
		client:Notify("Armor: " .. target:Armor())
	end
})
------------------------------------------------------------------------------------
CAMI.RegisterPrivilege({
    Name = "Tropic - PlayerGetInfo",
    MinAccess = "admin"
})
------------------------------------------------------------------------------------