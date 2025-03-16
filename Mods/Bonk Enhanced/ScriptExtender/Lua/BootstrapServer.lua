Ext.Osiris.RegisterListener("StatusApplied", 4, "after", function(targetGuid, statusId, _, _)
    local partyMembers = Osi.DB_PartyMembers:Get(nil)
    local pleaselord = (partyMembers and partyMembers[1]) and partyMembers[1][1] or nil

    if statusId == "BONK_ENHANCED_DOWNED" and pleaselord then
        Ext.Utils.Print("BONK_ENHANCED_DOWNED status applied to: " .. tostring(targetGuid) .. " by: " .. pleaselord)
        Osi.ApplyStatus(targetGuid, "XPMACHINE_STATUS", -1, 1, pleaselord)
    end
end)
