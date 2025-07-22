data:extend({
  -- Normal resource
  {
    type = "autoplace-control",
    name = "silica",
    localised_name = { "", "[entity=silica] ", { "autoplace-control-name.silica" } },
    category = "resource",
    richness = true,
    order = "b[silica]"
  },
})

data.raw.planet["nauvis"].map_gen_settings.autoplace_controls["silica"] = {}
