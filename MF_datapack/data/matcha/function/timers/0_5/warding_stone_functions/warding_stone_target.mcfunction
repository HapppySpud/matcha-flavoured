# if theres a wither, prioritize it and exit out of the function
# if there isnt, run the default function

execute as @s[type=minecraft:wither] run return run function matcha:timers/0_5/warding_stone_functions/warding_stone_wither
function matcha:timers/0_5/warding_stone_functions/warding_stone_default