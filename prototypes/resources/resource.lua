local resource_autoplace = require("resource-autoplace")
local base_sounds = require("__base__.prototypes.entity.sounds")


local stone_driving_sound =
{
    sound =
    {
        filename = "__base__/sound/driving/vehicle-surface-stone.ogg",
        volume = 0.8,
        advanced_volume_control = { fades = { fade_in = { curve_type = "cosine", from = { control = 0.5, volume_percentage = 0.0 }, to = { 1.5, 100.0 } } } }
    },
    fade_ticks = 6
}


local oil_driving_sound =
{
    sound =
    {
        filename = "__base__/sound/driving/vehicle-surface-oil.ogg",
        volume = 0.8,
        advanced_volume_control = { fades = { fade_in = { curve_type = "cosine", from = { control = 0.5, volume_percentage = 0.0 }, to = { 1.5, 100.0 } } } }
    },
    fade_ticks = 6
}

local function define_basic_resource(name, resource_parameters, autoplace_parameters)
    return {
        type = "resource",
        name = name,
        icon = resource_parameters.icon,
        icon_size = 64,
        icon_mipmaps = 4,
        flags = { "placeable-neutral" },
        order = resource_parameters.order,
        tree_removal_probability = resource_parameters.tree_removal_probability or 1,
        tree_removal_max_distance = 32 * 32,
        minable = {
            mining_time = resource_parameters.mining_time or 1,
            results = resource_parameters.results or {
                { type = "item", name = name, amount = 1 }
            }
        },
        subgroup = resource_parameters.subgroup or "raw-resource",
        walking_sound = resource_parameters.walking_sound or base_sounds.ore,
        driving_sound = resource_parameters.driving_sound or stone_driving_sound,
        collision_mask = resource_parameters.collision_mask or nil,
        collision_box = { { -0.1, -0.1 }, { 0.1, 0.1 } },
        selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
        autoplace = resource_autoplace.resource_autoplace_settings({
            name = name,
            order = autoplace_parameters.order or resource_parameters.order,
            base_density = autoplace_parameters.base_density or 100,
            regular_rq_factor_multiplier = autoplace_parameters.regular_rq_factor_multiplier or 1.1,
            starting_rq_factor_multiplier = autoplace_parameters.starting_rq_factor_multiplier or 1.5,
            random_spot_size_minimum = autoplace_parameters.random_spot_size_minimum or 0.1,
            random_spot_size_maximum = autoplace_parameters.random_spot_size_maximum or 0.2,
            candidate_spot_count = autoplace_parameters.candidate_spot_count or 22,
            has_starting_area_placement = autoplace_parameters.has_starting_area_placement or true,
            tile_restriction = autoplace_parameters.tile_restriction
        }),
        stage_counts = resource_parameters.stage_counts or { 15000, 9500, 5500, 2900, 1300, 400, 150, 80 },
        stages = {
            sheet = {
                filename = resource_parameters.stages_filename,
                priority = "extra-high",
                size = resource_parameters.stages_size or 64,
                frame_count = 8,
                variation_count = 8,
                scale = resource_parameters.stages_scale or 0.5
            }
        },
        map_color = resource_parameters.map_color,
        mining_visualisation_tint = resource_parameters.mining_visualisation_tint,
        factoriopedia_simulation = resource_parameters.factoriopedia_simulation
    }
end



data:extend({
    define_basic_resource("silica", {
        icon = "__StellarioAssets__/graphics/icons/silica.png",
        order = "d[silica]",
        stages_filename = "__StellarioAssets__/graphics/resources/silica-patches.png",
        map_color = { r = 0.925, g = 0.925, b = 0.900 },                    -- pale gray-white, a bit off-white
        mining_visualisation_tint = { r = 1.000, g = 1.000, b = 1.000, a = 1.000 }, -- pure white glow
        results = {
            { type = "item", name = "silica", amount = 1 }
        }
    }, {
        base_density = 100,
        has_starting_area_placement = true,
        regular_rq_factor_multiplier = 1.10,
        starting_rq_factor_multiplier = 1.5,
        random_spot_size_minimum = 0.1,
        random_spot_size_maximum = 0.2,
        candidate_spot_count = 22
    })
})
