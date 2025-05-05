local thunder_strike = table.deepcopy(data.raw["lightning"]["lightning"])
thunder_strike.name = "thunder-strike-lightning"
thunder_strike.damage = 0 -- Damage will be done with target_effects
thunder_strike.hidden = true
thunder_strike.hidden_in_factoriopedia = true
thunder_strike.energy = "100MJ"
thunder_strike.strike_effect.action_delivery.target_effects[1].particle_name = "stone-particle-big"
thunder_strike.strike_effect.action_delivery.target_effects[2].particle_name = "stone-particle-medium"
thunder_strike.strike_effect.action_delivery.target_effects[3].particle_name = "stone-particle-small"
thunder_strike.strike_effect.action_delivery.target_effects[4].particle_name = "stone-particle-tiny"
thunder_strike.sound.aggregation.max_count = 20

data:extend({ thunder_strike })

data:extend({
    {
        type = "projectile",
        name = "lightning-trigger-projectile",
        flags = { "not-on-map" },
        acceleration = 10000,
        max_speed = 10000,
        animation = nil,
        action = {
            {
                type = "direct",
                action_delivery = {
                    type = "instant",
                    target_effects = {
                        {
                            type = "create-entity",
                            entity_name = "thunder-strike-lightning",
                            offsets = { { 0, -25 } },
                            check_buildability = false
                        }
                    }
                }
            },
            {
                type = "direct",
                action_delivery = {
                    type = "instant",
                    target_effects = data.raw["lightning"]["lightning"].created_effect.action_delivery.target_effects or
                    {}
                }
            },
            {
                type = "area",
                radius = 0.5,
                force = "enemy",
                action_delivery = {
                    type = "instant",
                    target_effects = {
                        {
                            type = "damage",
                            damage = { amount = 100, type = "electric" }
                        },
                        {
                            type = "create-sticker",
                            sticker = "tesla-turret-stun"
                        },
                        {
                            type = "create-sticker",
                            sticker = "tesla-turret-slow"
                        }
                    }
                }
            },
            {
                type = "area",
                radius = 3.5,
                force = "enemy",
                action_delivery = {
                    type = "instant",
                    target_effects = {
                        {
                            type = "damage",
                            damage = { amount = 100, type = "electric" }
                        }
                    }
                }
            }
        }
    }
})
