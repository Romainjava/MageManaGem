local _, addon = ...

SLASH_MGEM1 = "/delgem"

local MANA_EMERALD_ID = 22044
local MANA_EMERALD_LINK = "item:" .. MANA_EMERALD_ID

SlashCmdList["MGEM"] = function()
    if InCombatLockdown() then
        print(addon.L.COMBAT_ERROR)
        return
    end

    for b = 0, 4 do
        for s = 1, C_Container.GetContainerNumSlots(b) do
            local itemInfo = C_Container.GetContainerItemInfo(b, s)
            local link = itemInfo and itemInfo.hyperlink or C_Container.GetContainerItemLink(b, s)

            if (itemInfo and itemInfo.itemID == MANA_EMERALD_ID) or (link and link:find(MANA_EMERALD_LINK, 1, true)) then
                C_Container.PickupContainerItem(b, s)
                DeleteCursorItem()
                return
            end
        end
    end

    print(addon.L.GEM_NOT_FOUND)
end
