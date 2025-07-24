-- Control so the map gen UI shows it
data:extend({
    {
        type = "autoplace-control",
        name = "raw-silica",
        localised_name = { "", "[entity=raw-silica] ", { "autoplace-control-name.raw-silica" } },
        category = "resource",
        richness = true,
        order = "a[raw-silica]"
    },
    {
        type = "autoplace-control",
        name = "lead-ore",
        localised_name = { "", "[entity=lead-ore] ", { "autoplace-control-name.lead-ore" } },
        category = "resource",
        richness = true,
        order = "a[lead-ore]"
    },
})

-- Tell Nauvis to include these new resources!
data.raw.planet.nauvis.map_gen_settings.autoplace_controls["raw-silica"] = {}
data.raw.planet.nauvis.map_gen_settings.autoplace_settings.entity.settings["raw-silica"] = {}

data.raw.planet.nauvis.map_gen_settings.autoplace_controls["lead-ore"] = {}
data.raw.planet.nauvis.map_gen_settings.autoplace_settings.entity.settings["lead-ore"] = {}
