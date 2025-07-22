data:extend {
    {
        type = "item-group",
        name = "bioprocessing",
        icon = "__space-age__/graphics/technology/fish-breeding.png",
        icon_size = 256,
        icon_mipmaps = 4,
        order = "e-b"
    }
}

-- move gleba things into the bioprocessing tab
data.raw["item-subgroup"]["agriculture-processes"].group = "bioprocessing"
data.raw["item-subgroup"]["agriculture-products"].group = "bioprocessing"
data.raw["item-subgroup"]["nauvis-agriculture"].group = "bioprocessing"
