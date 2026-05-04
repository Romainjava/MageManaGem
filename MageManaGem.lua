local _, addon = ...

SLASH_MGEM1 = "/delgem"

SlashCmdList["MGEM"] = function()
    if InCombatLockdown() then
        print(addon.L.COMBAT_ERROR)
        return
    end

    for b = 0, 4 do
        for s = 1, C_Container.GetContainerNumSlots(b) do
            local link = C_Container.GetContainerItemLink(b, s)
            if link and link:find("item:22044") then
                C_Container.PickupContainerItem(b, s)
                DeleteCursorItem()
                return
            end
        end
    end

    print(addon.L.GEM_NOT_FOUND)
end
