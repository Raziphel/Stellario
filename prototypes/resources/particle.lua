local function particle_pictures(tint)
  return
  {
    {
      filename = "__StellarioAssets__/graphics/resources/particles/ore-particle-1.png",
      priority = "extra-high",
      tint = tint,
      width = 16,
      height = 16,
      frame_count = 1,
    },
    {
      filename = "__StellarioAssets__/graphics/resources/particles/ore-particle-2.png",
      priority = "extra-high",
      tint = tint,
      width = 16,
      height = 16,
      frame_count = 1,
    },
    {
      filename = "__StellarioAssets__/graphics/resources/particles/ore-particle-3.png",
      priority = "extra-high",
      tint = tint,
      width = 16,
      height = 16,
      frame_count = 1,
    },
    {
      filename = "__StellarioAssets__/graphics/resources/particles/ore-particle-4.png",
      priority = "extra-high",
      tint = tint,
      width = 16,
      height = 16,
      frame_count = 1,
    }
  }
end

local function particle(name, tint)
  return
  {
    type = "optimized-particle",
    name = name,
    flags = { "not-on-map" },
    life_time = 180,
    pictures = particle_pictures(tint),
    shadows = {
      {
        filename = "__StellarioAssets__/graphics/resources/particles/ore-particle-shadow-1.png",
        priority = "extra-high",
        width = 16,
        height = 16,
        frame_count = 1,
      },
      {
        filename = "__StellarioAssets__/graphics/resources/particles/ore-particle-shadow-2.png",
        priority = "extra-high",
        width = 16,
        height = 16,
        frame_count = 1,
      },
      {
        filename = "__StellarioAssets__/graphics/resources/particles/ore-particle-shadow-3.png",
        priority = "extra-high",
        width = 16,
        height = 16,
        frame_count = 1
      },
      {
        filename = "__StellarioAssets__/graphics/resources/particles/ore-particle-shadow-4.png",
        priority = "extra-high",
        width = 16,
        height = 16,
        frame_count = 1,
      }
    }
  }
end

data:extend({
  particle("raw-silica-particle", { r = 1.0, g = 1.0, b = 1.0, a = 1.0 }),
})
