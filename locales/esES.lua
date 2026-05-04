local _, addon = ...

if GetLocale() == "esES" or GetLocale() == "esMX" then
    addon.L.COMBAT_ERROR = "No se puede eliminar la gema en combate."
    addon.L.GEM_NOT_FOUND = "Gema de maná no encontrada en las bolsas."
end
