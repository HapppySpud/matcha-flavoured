#If they are wearing copper armour, at max electrum, then we still damage them, just less than normal
execute if predicate matcha:wearing_copper_armour run function matcha:enchantment_effects/warding_effects/apply_damage_1
execute unless predicate matcha:wearing_copper_armour run function matcha:enchantment_effects/warding_effects/apply_damage_2