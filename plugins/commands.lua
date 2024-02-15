--[[
	This script is part of Black Mesa Roleplay schema by Zoephix and
	exclusively made for LimeFruit (www.limefruit.net)

	© Copyright 2021: Zoephix. do not share, use, re-distribute or modify
	without written permission from Zoephix.
--]]

local PLUGIN = PLUGIN

PLUGIN.name = "Custom Commands"
PLUGIN.author = "Zoephix"
PLUGIN.description = "Custom commands we felt the schema or framework was missing."

if (CLIENT) then
	concommand.Add("ix_toggleclassicthirdperson", function()
		local bEnabled = !ix.option.Get("thirdpersonClassic", false)
		ix.option.Set("thirdpersonClassic", bEnabled)
	end)
end

-- Allows players to communicate via the pager
ix.command.Add("Page", {
	description = "@cmdPM",
	arguments = {
		ix.type.player,
		ix.type.text
	},
	CanSay = function(self, speaker, text)
		if GetGlobalBool("ComFailed") then
			speaker:ChatPrint("[PAGER] Error: Server connection lost.")
			return false
		end
	end,
	OnRun = function(self, client, target, text)
		if ((client.ixNextPM or 0) < CurTime()) then
			ix.chat.Send(client, "page", text, false, {client, target})
			
			client.ixNextPM = CurTime() + 0.5
			target.ixLastPM = client
			
			target:EmitSound("HL1/fvox/beep.wav", 70, 100)
		end
	end
})

ix.chat.Register("page", {
	format = "[PAGER] %s: %s",
	color = Color(64, 127, 250),
	filter = "page",
	deadCanChat = false
})

-- Remove Item
ix.command.Add("RemoveItem", {
	adminOnly = true,
	arguments = {
		ix.type.string
	},
	OnRun = function(self, client, itemName)
		local inv = client:GetCharacter():GetInv()
		
		if (inv) then
			local itemRemoved = false
			
			for _, item in pairs(inv:GetItems(true)) do
				if (not itemRemoved and string.find(string.lower(item.name), string.lower(itemName))) then
					item:remove()
					itemRemoved = true
					
					client:Notify("Removed " .. item.name .. " from your inventory.")
				end
			end
		end
	end
})

-- Force Save Data
ix.command.Add("ForceSave", {
	superAdminOnly = true,
	OnRun = function(self, client)
		if SERVER then
			hook.Run("SaveData")
			
			for k, v in ipairs(player.GetAll()) do
				if v:GetCharacter() then
					v:GetCharacter():Save()
				end
			end
			
			client:Notify("You've force-saved all data and plugins.")
			ix.log.AddRaw(client:Name().." ("..client:SteamName()..") has force-saved all data and plugins.", true, FLAG_WARNING)
		end
	end
})

-- Searching for handcuffed characters
ix.command.Add("Search", {
	description = "Search People who are restrained.",
	OnRun = function(self, client, target)
		local data = {}
		data.start = client:GetShootPos()
		data.endpos = data.start + client:GetAimVector() * 96
		data.filter = client
		
		local target = util.TraceLine(data).Entity
		
		if (IsValid(target) and target:IsPlayer() and target:IsRestricted() and client:Team() == FACTION_BMSF) then
			if (!client:IsRestricted()) then
				Schema:SearchPlayer(client, target)
			else
				return "You cannot do this right now!"
			end
		end
	end
})

-- Door kicking
ix.command.Add("DoorKick", {
	description = "Kick a door open.",
	OnRun = function(self, client)
		if (client:Team() == FACTION_BMSF) then
            local aimVector = client:GetAimVector()
			
            local data = {}
                data.start = client:GetShootPos()
                data.endpos = data.start + aimVector*96
                data.filter = client
            local entity = util.TraceLine(data).Entity
			
            if (IsValid(entity) and entity:GetClass() == "prop_door_rotating") then
                if (client:ForceSequence("doorBracer_BustThru")) then
                    timer.Simple(0.75, function()
                        if (IsValid(client) and IsValid(entity)) then
                            entity:EmitSound("physics/wood/wood_crate_break"..math.random(1, 5)..".wav", 150)
                            entity:BlastDoor(aimVector * (360 + client:GetCharacter():GetAttribute("str", 0)*5))
                        end
                    end)
                end
            else
                return "@dNotValid"
            end
        else
            return "@mustBeSecurity"
        end
	end
})

-- Plays a sound from the P.A announcement locations
local announcerSoundLocations = ix.plugin.list["announcer"].SoundLocations

ix.command.Add("PASound", {
	staffOnly = true,
	description = "Plays a sound from the P.A announcement locations.",
	arguments = bit.bor(ix.type.text),
	OnRun = function(self, client, text)
		for _, location in pairs(announcerSoundLocations) do
			sound.Play(text, location, 100, 100, 1)
		end
		
		client:Notify("You have played a sound!")
	end
})

-- VOX sounds
local sl = string.lower

ix.command.Add("VOXSound", {
	staffOnly = true,
	description = "Plays text-to-speech VOX from the P.A announcement locations.",
	arguments = bit.bor(ix.type.text),
	OnRun = function(self, client, text)
		local time = 0
		for k, v in ipairs(string.Explode(" ", text)) do
			v = sl(v)

			local sndDir = "vox_overhead_voicelines/" .. v .. ".wav"

			if (k != 1) then
				time = time + SoundDuration(sndDir) + .1
			end

			timer.Simple(time, function()
				for _, location in pairs(announcerSoundLocations) do
					sound.Play(sndDir, location, 100, 100, 1)
				end
			end)
		end

		client:Notify("You have played a sound!")
	end
})

-- Discord
ix.command.Add("Discord", {
	OnRun = function(self, client)
		client:SendLua([[gui.OpenURL("https://discord.gg/DaX5N6qYTp")]])
	end
})

-- Content
ix.command.Add("Content", {
	OnRun = function(self, client)
		client:SendLua([[gui.OpenURL("https://steamcommunity.com/sharedfiles/filedetails/?id=3136626521")]])
	end
})

-- Dev Commands
concommand.Add("dev_GetEntPos", function( ply, command, arguments )
	if (ply:IsSuperAdmin()) then
		print(LocalPlayer():GetEyeTrace().Entity:GetPos().x, LocalPlayer():GetEyeTrace().Entity:GetPos().y, LocalPlayer():GetEyeTrace().Entity:GetPos().z)
	end
end)

concommand.Add("dev_GetEntAngles", function( ply, command, arguments )
	if (ply:IsSuperAdmin()) then
		print(math.ceil(LocalPlayer():GetEyeTrace().Entity:GetAngles().x) .. ", " .. math.ceil(LocalPlayer():GetEyeTrace().Entity:GetAngles().y) .. ", " .. math.ceil(LocalPlayer():GetEyeTrace().Entity:GetAngles().z ))
	end
end)

concommand.Add("dev_GetRoundEntPos", function( ply, command, arguments )
	if (ply:IsSuperAdmin()) then
		print(math.ceil(LocalPlayer():GetEyeTrace().Entity:GetPos().x) .. ", " .. math.ceil(LocalPlayer():GetEyeTrace().Entity:GetPos().y) .. ", " .. math.ceil(LocalPlayer():GetEyeTrace().Entity:GetPos().z))
	end
end)

concommand.Add("dev_GetPos", function( ply, command, arguments )
	if (ply:IsSuperAdmin()) then
		print(math.ceil(LocalPlayer():GetPos().x) .. ", " .. math.ceil(LocalPlayer():GetPos().y) .. ", " .. math.ceil(LocalPlayer():GetPos().z))
	end
end)

concommand.Add("dev_GetCameraOrigin", function( ply, command, arguments )
	if (ply:IsSuperAdmin()) then
		print("origin = (" .. math.ceil(LocalPlayer():GetPos().x) .. ", " .. math.ceil(LocalPlayer():GetPos().y) .. ", " .. math.ceil(LocalPlayer():GetPos().z) .. ")")
		print("angles = (" .. math.ceil(LocalPlayer():GetAngles().x) .. ", " .. math.ceil(LocalPlayer():GetAngles().y) .. ", " .. math.ceil(LocalPlayer():GetAngles().z) .. ")")
	end
end)