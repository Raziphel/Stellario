data:extend({
    {
        type = "item",
        name = "silica",
        icon = "__StellarioAssets__/graphics/icons/silica.png",
        icon_size = 64,
        icon_mipmaps = 3,
        pictures = {
            {
                size = 64,
                filename = "__StellarioAssets__/graphics/icons/silica.png",
                scale = 1,
                mipmap_count = 4
            }
        },
        subgroup = "raw-material",
        order = "a[silica]",
        stack_size = 100,
        weight = 4.5 * kg,
    },
    {
        type = "item",
        name = "silicon",
        icon = "__StellarioAssets__/graphics/icons/silicon.png",
        icon_size = 64,
        icon_mipmaps = 3,
        pictures = {
            {
                size = 64,
                filename = "__StellarioAssets__/graphics/icons/silicon.png",
                scale = 1,
                mipmap_count = 4
            }
        },
        subgroup = "intermediate-product",
        order = "a[silicon]",
        stack_size = 100,
        weight = 4.5 * kg,
    },
    {
        type = "item",
        name = "lead-ore",
        icon = "__StellarioAssets__/graphics/icons/lead-ore.png",
        icon_size = 64,
        icon_mipmaps = 3,
        pictures = {
            { filename = "__StellarioAssets__/graphics/icons/lead-ore.png",   size = 64, scale = 0.5 },
            { filename = "__StellarioAssets__/graphics/icons/lead-ore-1.png", size = 64, scale = 0.5 },
            { filename = "__StellarioAssets__/graphics/icons/lead-ore-2.png", size = 64, scale = 0.5 },
            { filename = "__StellarioAssets__/graphics/icons/lead-ore-3.png", size = 64, scale = 0.5 },
        },
        subgroup = "raw-material",
        order = "a[lead-ore]",
        stack_size = 100,
        weight = 4.5 * kg,
    }
})
