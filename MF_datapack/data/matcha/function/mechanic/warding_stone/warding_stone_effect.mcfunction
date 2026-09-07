# Hashiru: If setup hasnt been done, run it. This will also give it the WardingStoneSetup tag
execute as @s[tag=!WardingStoneSetup] run function matcha:mechanic/warding_stone/setup/warding_stone_setup

# Hashiru: If the lodestone block is removed, we can exit out of the rest of the function with run return ...
execute unless block ~ ~ ~ minecraft:lodestone run return run function matcha:mechanic/warding_stone/warding_stone_killer

# Get nearby villagers that do not have regen and apply it
execute as @e[distance=..16,type=#matcha:villager_friends,predicate=!matcha:effects/has_regeneration] run effect give @s minecraft:regeneration 3 0 true

# Apply slowness to all mobs
effect give @e[type=#matcha:warding_stone_targets,distance=..26] minecraft:slowness 2 2 true

# Spawn particles
particle minecraft:soul_fire_flame ~ ~0.5 ~ .5 .5 .5 0 1

# Timed function is in 0_5 timer