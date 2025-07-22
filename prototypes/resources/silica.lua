local resource_autoplace = require("__core__.lualib.resource-autoplace")


data:extend({
    {
        type = "resource",
        name = "silica",
        icon = "__stellarioassets__/graphics/icons/silica.png",
        flags = { "placeable-neutral" },
        order = "d[silica-ore]",
        tree_removal_probability = 1,
        tree_removal_max_distance = 32 * 32,
        minable =
        {
            mining_time = 1,
            results =
            {
                {
                    type = "item",
                    name = "silica-ore",
                    amount = 1
                }
            },
        },
        subgroup = "raw-resource",
        walking_sound = sounds.ore,
        driving_sound = stone_driving_sound,
        collision_mask = nil,
        collision_box = { { -0.1, -0.1 }, { 0.1, 0.1 } },
        selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
        autoplace = resource_autoplace.resource_autoplace_settings
            {
                name = "silica-ore",
                order = "d[silica-ore]",
                base_density = 100,
                -- base_spots_per_km = autoplace_parameters.base_spots_per_km2,
                has_starting_area_placement = true,
                regular_rq_factor_multiplier = 1.10,
                starting_rq_factor_multiplier = 1.5,
                random_spot_size_minimum = .1,
                random_spot_size_maximum = .2,
                candidate_spot_count = 22,
                -- tile_restriction = autoplace_parameters.tile_restriction
            },
        stage_counts = { 15000, 9500, 5500, 2900, 1300, 400, 150, 80 },
        stages =
        {
            sheet =
            {
                filename = "__stellarioassets__/graphics/resources/silica-patches.png",
                priority = "extra-high",
                size = 64,
                frame_count = 8,
                variation_count = 8,
                scale = 0.5
            }
        },
        map_color = { r = 0.803, g = 0.388, b = 0.215 },
        mining_visualisation_tint = { r = 0.895, g = 0.965, b = 1.000, a = 1.000 },
        -- factoriopedia_simulation = resource_parameters.factoriopedia_simulation
    },
})
