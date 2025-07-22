data:extend {
    {
        type = "item-group",
        name = "science",
        icon = "__space-age__/graphics/technology/research-productivity.png",
        icon_size = 256,
        icon_mipmaps = 4,
        order = "c-z]"
    },
    {
        type = "item-subgroup",
        name = "basic-science-pack",
        group = "science",
        order = "a[basic-science]"
    },
    {
        type = "item-subgroup",
        name = "lab",
        group = "science",
        order = "ea",
    }
}

-- Move dem dare science packs!
data.raw["item-subgroup"]["science-pack"].group = "science"
data.raw["item"]["lab"].subgroup = "lab"
data.raw["item"]["biolab"].subgroup = "lab"
