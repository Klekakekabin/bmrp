------------------------------------------------------------------------------------
function Schema:ZeroNumber(number, length)
	local amount = math.max(0, length - string.len(number))
	return string.rep("0", amount)..tostring(number)
end
------------------------------------------------------------------------------------
function Schema:PlayerDeath(cl, inf, attack)
	if IsValid(attack) then
		timer.Simple(5, function()
			if IsValid(cl) then
				cl:Spawn()
			end
		end)
	end
end
------------------------------------------------------------------------------------
function Schema:SetCharBodygroup(ply, index, value)
    if not ( IsValid(ply) ) then
        return
    end

    local char = ply:GetCharacter()

    if not ( char ) then
        return
    end

    index = index or 1
    value = value or 1

    local groupsData = char:GetData("groups", {})
    groupsData[index] = value

    char:SetData("groups", groupsData)
    ply:SetBodygroup(index, value)
end
------------------------------------------------------------------------------------