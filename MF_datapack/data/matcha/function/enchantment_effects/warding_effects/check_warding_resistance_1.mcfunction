#If they are wearing copper armour, run the warding resistant effects
execute if predicate matcha:wearing_copper_armour run function matcha:enchantment_effects/warding_effects/apply_warding_resistance
execute unless predicate matcha:wearing_copper_armour run function matcha:enchantment_effects/warding_effects/apply_damage_1