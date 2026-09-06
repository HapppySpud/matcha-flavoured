#If there are no doom targets (entities with weakness and not wearing adamant), dont continue the function
execute unless entity @e[distance=..12,predicate=matcha:effects/has_weakness,predicate=matcha:has_adamant] run return fail

#Since the function continued, there is atleast one doom target, so play the associated sound
playsound minecraft:event.mob_effect.raid_omen hostile @a ~ ~ ~ 0.1 2

#Run apply_doom on all doom targets
execute as @e[distance=..12,predicate=matcha:effects/has_weakness,predicate=matcha:has_adamant] run function matcha:enchantment_effects/adamant_effects/apply_doom_1
