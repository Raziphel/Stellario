data:extend({
    {
        type = "recipe",
        name = "silicon-smelting",
        category = "smelting",
        energy_required = 4,
        enabled = true,
        ingredients = {
            { type = "item", name = "silica", amount = 2 }
        },
        results = {
            { type = "item", name = "silicon", amount = 1 }
        },
        main_product = "silicon",
        icon = "__StellarioAssets__/graphics/icons/silicon.png",
        icon_size = 64,
        order = "d[silicon]"
    },
    {
        type = "recipe",
        name = "lead-smelting",
        category = "smelting",
        energy_required = 6,
        enabled = true,
        ingredients = {
            { type = "item", name = "lead-ore", amount = 2 }
        },
        results = {
            { type = "item", name = "lead-plate", amount = 1 }
        },
        main_product = "lead-plate",
        icon = "__StellarioAssets__/graphics/icons/lead-plate.png",
        icon_size = 64,
        order = "d[lead-plate]"
    }
})
