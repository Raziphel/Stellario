data:extend({
    {
        type = "recipe",
        name = "silicon-smelting",
        category = "smelting",
        energy_required = 8,
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
    }
})
