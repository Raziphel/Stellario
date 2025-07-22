local function table_contains(tbl, val)
    for _, v in ipairs(tbl) do
        if v == val then return true end
    end
    return false
end

local setting = data.raw["string-setting"] and data.raw["string-setting"]["aai-loaders-mode"]

if setting and table_contains(setting.allowed_values, "expensive") then
    setting.forced_value = "expensive"
    setting.hidden = true
end

local setting2 = data.raw["string-setting"] and data.raw["string-setting"]["aai-loaders-lubricant-recipe"]

if setting2 and table_contains(setting2.allowed_values, "disabled") then
    setting2.forced_value = "disabled"
    setting2.hidden = true
end
