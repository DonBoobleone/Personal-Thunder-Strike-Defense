data:extend({
    {
        type = "active-defense-equipment",
        name = "personal-thunder-strike-defense-equipment",
        categories = { "armor" },
        sprite = {
            filename = "__personal-thunder-strike-defense__/graphics/equipment/personal-thunder-strike-defense-equipment.png",
            width = 128,
            height = 128,
            priority = "medium",
            scale = 0.5
        },
        shape = {
            width = 2,
            height = 2,
            type = "full"
        },
        energy_source = {
            type = "electric",
            buffer_capacity = "21MJ",
            input_flow_limit = "6900kW",
            usage_priority = "secondary-input"
        },
        attack_parameters = {
            type = "projectile",
            ammo_category = "electric",
            cooldown = 90,
            min_range = 6,
            range = 24,
            sound = {
                switch_vibration_data = { filename = "__base__/sound/fight/pulse.bnvib" },
                game_controller_vibration_data = {
                    low_frequency_vibration_intensity = 0.5,
                    duration = 100
                },
                filename = "__base__/sound/fight/pulse.ogg",
                volume = 0.7
            },
            ammo_type = {
                category = "electric",
                energy_consumption = "10350kJ",
                action = {
                    type = "direct",
                    action_delivery = {
                        type = "projectile",
                        projectile = "lightning-trigger-projectile",
                        starting_speed = 10000
                    }
                }
            }
        },
        automatic = true
    }
})
