local util = {}

-- Adds an ingredient to a recipe by name.
-- Usage: util.add_ingredient("recipe-name", "item-name", amount, is_fluid?, override_existing?)
function util.add_ingredient(recipe_name, ingredient_name, amount, is_fluid, override_existing)
    local recipe = data.raw.recipe[recipe_name]
    if not recipe then
        log("❌ Recipe '" .. recipe_name .. "' not found!")
        return false
    end

    -- Normalize recipe data (in case it's a normal/expensive format)
    local recipe_data = recipe.normal or recipe
    if not recipe_data.ingredients then
        log("❌ Recipe '" .. recipe_name .. "' has no ingredients table!")
        return false
    end

    -- Check if ingredient is already present
    for i, ing in pairs(recipe_data.ingredients) do
        local existing_name = ing.name or ing[1]
        if existing_name == ingredient_name then
            if override_existing then
                if ing.name then
                    ing.amount = amount
                    ing.type = is_fluid and "fluid" or "item"
                else
                    -- Replace short form with long form
                    recipe_data.ingredients[i] = {
                        type = is_fluid and "fluid" or "item",
                        name = ingredient_name,
                        amount = amount
                    }
                end
                return true
            end
            return false -- Already present, not overridden
        end
    end

    -- Add new ingredient
    table.insert(recipe_data.ingredients, {
        type = is_fluid and "fluid" or "item",
        name = ingredient_name,
        amount = amount
    })

    return true
end

return util
