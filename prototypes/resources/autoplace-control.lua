-- Control so the map gen UI shows it
data:extend({
    {
        type = "autoplace-control",
        name = "raw-silica",
        localised_name = { "", "[entity=raw-silica] ", { "autoplace-control-name.raw-silica" } },
        category = "resource",
        richness = true,
        order = "b[raw-silica]"
    },
})

-- Tell Nauvis to include it
data.raw.planet.nauvis.map_gen_settings.autoplace_controls["raw-silica"] = {}
data.raw.planet.nauvis.map_gen_settings.autoplace_settings.entity.settings["raw-silica"] = {}
