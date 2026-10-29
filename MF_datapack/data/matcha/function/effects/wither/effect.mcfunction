# This function is called once per second for every player with a score of 0 or more on the wither_timer scoreboard

# IF they no longer have wither, remove them from the scoreboard and cancel the rest of this function
execute unless predicate matcha:effects/has_wither run return run scoreboard players reset @s wither_timer

#Apply wither_resistance based on current armour
function matcha:enchantment_effects/shakudo_effects/wither_resistance/apply_resistance

# Set the time based on their resistance to it
execute if score @s wither_timer matches ..0 run function matcha:effects/wither/set_timer

scoreboard players remove @s wither_timer 1

execute if score current_world_settings_difficulty difficulty_score matches 2 run return run function matcha:effects/wither/effect_normal
execute if score current_world_settings_difficulty difficulty_score matches 3 run function matcha:effects/wither/effect_hard

# Heartbreaker effect is triggered from each of the effect functions