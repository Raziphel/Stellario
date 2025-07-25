local util = require("__Stellario__.util");





--[[
Ammo, Rockets, Shells, Grenades
]]

util.overhaul_recipe("firearm-magazine", {
    ingredients = {
        { type = "item", name = "lead-plate", amount = 4 }
    },
})

util.overhaul_recipe("rocket", {
    ingredients = {
        { type = "item", name = "steel-plate", amount = 2 },
        { type = "item", name = "explosives",  amount = 1 }
    },
})

util.overhaul_recipe("piercing-rounds-magazine", {
    ingredients = {
        { type = "item", name = "steel-plate",      amount = 1 },
        { type = "item", name = "copper-plate",     amount = 1 },
        { type = "item", name = "firearm-magazine", amount = 2 }
    },
})

data.raw["ammo"]["uranium-rounds-magazine"].ammo_type.action.action_delivery.target_effects = {
    {
        type = "damage",
        damage = { amount = 15, type = "physical" }
    },
    {
        type = "damage",
        damage = { amount = 10, type = "poison" }
    }
}
