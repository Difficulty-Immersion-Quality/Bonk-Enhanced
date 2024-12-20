Ext.Osiris.RegisterListener("StatusApplied", 4, "after", function(targetGuid, statusId, _, _)
    local pleaselord = Osi.DB_PartyMembers:Get(nil)[1][1]
    if statusId == "BONK_ENHANCED_DOWNED" then
        Ext.Utils.Print("BONK_ENHANCED_DOWNED status applied to: " .. tostring(targetGuid) .. " by: " .. tostring(pleaselord))
        Osi.ApplyStatus(targetGuid, "XPMACHINE_STATUS", -1, 1, pleaselord)
    end
end)