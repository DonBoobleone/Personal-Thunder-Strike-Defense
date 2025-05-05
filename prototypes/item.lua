local item_sounds = require("__base__.prototypes.item_sounds")

data:extend({
  {
    type = "item",
    name = "personal-thunder-strike-defense-equipment",
    icons =
    {
      { icon = "__base__/graphics/icons/discharge-defense-equipment.png", icon_size = 64, scale = 0.5, shift = {0, 0} },
      { icon = "__space-age__/graphics/icons/lightning.png", icon_size = 64, scale = 0.33, shift = {8, 0} },
      { icon = "__space-age__/graphics/icons/lightning.png", icon_size = 64, scale = 0.33, shift = {-8, 0} }
    },
    place_as_equipment_result = "personal-thunder-strike-defense-equipment",
    subgroup = "military-equipment",
    order = "b[active-defense]-b[discharge-defense-equipment]-b[equipment]",
    inventory_move_sound = item_sounds.electric_large_inventory_move,
    pick_sound = item_sounds.electric_large_inventory_pickup,
    drop_sound = item_sounds.electric_large_inventory_move,
    stack_size = 20,
    weight = 200*kg
  }
})