data:extend(
{
    {
        type = "technology",
        name = "personal-thunder-strike-defense-equipment",
        --icon_size = 256,
        icons = util.technology_icon_constant_equipment("__personal-thunder-strike-defense__/graphics/technology/personal-thunder-strike-defense-equipment.png"),
        effects = {
            {
                type = "unlock-recipe",
                recipe = "personal-thunder-strike-defense-equipment"
            }
        },
        prerequisites = { "discharge-defense-equipment", "tesla-weapons" },
        unit =
        {
            count = 500,
            ingredients =
            {
                { "automation-science-pack",      1 },
                { "logistic-science-pack",        1 },
                { "chemical-science-pack",        1 },
                { "military-science-pack",        1 },
                { "utility-science-pack",         1 },
                { "space-science-pack",           1 },
                { "electromagnetic-science-pack", 1 }
            },
            time = 60
        }
    }
})
