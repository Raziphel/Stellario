local util = {}

--[[
Completely overhauls a flat recipe (non-difficulty-based). Only modifies the fields you specify.

Usage:
util.overhaul_recipe("iron-gear-wheel", {
        ingredients = {
            { type = "item", name = "iron-plate", amount = 4 }
        },
        results = {
            { type = "item", name = "iron-gear-wheel", amount = 1 }
        },
        energy_required = 2,
        category = "advanced-crafting",
        enabled = true
    })
]]
function util.overhaul_recipe(recipe_name, new_data)
    local recipe = data.raw.recipe[recipe_name]

    if new_data.ingredients then
        recipe.ingredients = table.deepcopy(new_data.ingredients)
    end

    if new_data.results then
        recipe.results = table.deepcopy(new_data.results)
        recipe.result = nil
        recipe.result_count = nil
    elseif new_data.result then
        recipe.result = new_data.result
        recipe.result_count = new_data.result_count or 1
        recipe.results = nil
    end

    if new_data.energy_required ~= nil then
        recipe.energy_required = new_data.energy_required
    end

    if new_data.category ~= nil then
        recipe.category = new_data.category
    end

    if new_data.enabled ~= nil then
        recipe.enabled = new_data.enabled
    end

    return true
end

return util
