if settings.startup["p4a-on-recipes"].value then
    for k, v in pairs(data.raw.module) do
        if v.name:find("productivity%-module") then
          v.limitation = nil
          v.limitation_message_key = nil
        end
        if mods["techno"] then
            if v.name:find("modul%-mo") then
                v.limitation = nil
                v.limitation_message_key = nil
            end
        end
    end
end

if settings.startup["p4a-on-beacons"].value then
    for k, v in pairs(data.raw.beacon) do
        table.insert(v.allowed_effects, "productivity")
    end
end
