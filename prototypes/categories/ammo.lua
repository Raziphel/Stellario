data:extend {
    {
        type = "item-group",
        name = "ammo",
        icon = "__base__/graphics/technology/uranium-ammo.png",
        icon_size = 256,
        icon_mipmaps = 4,
        order = "e-a"
    },
}

-- move ammo subgroup to this group
data.raw["item-subgroup"]["ammo"].group = "ammo"
data.raw["item-subgroup"]["capsule"].group = "ammo"
