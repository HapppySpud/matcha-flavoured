#Execute at all entities who quality for being slowed
execute as @e[type=!player,distance=..8] if predicate matcha:warding_targets_slowed run function matcha:enchantment_effects/warding_effects/apply_slowness_1
#Execute at the nearest valid target, and then check, to see if damage is actually applied
execute as @n[type=!player,distance=..3,type=#matcha:warding_targets_no_wither] run function matcha:enchantment_effects/warding_effects/check_warding_resistance_1
#This way, the copper-armour-wearers act like a "lightning rod", channelling warding to them, that cannot be applied