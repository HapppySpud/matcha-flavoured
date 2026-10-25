# Check for block it is above here, and add a tag to the chicken
#    This will control animation particles, LT, and sounds

effect give @s slowness 2 99 true
execute if score @s matcha.pecking_animation matches 26 run execute at @s run function matcha:environmental/chicken/peck/peck_animation
execute if score @s matcha.pecking_animation matches 26..30 run rotate @s ~ 90
# execute if score @s matcha.pecking_animation matches 23..24 run rotate @s ~ 40
execute if score @s matcha.pecking_animation matches 21..22 run rotate @s ~ 20
execute if score @s matcha.pecking_animation matches 16 run execute at @s run function matcha:environmental/chicken/peck/peck_animation
execute if score @s matcha.pecking_animation matches 16..20 run rotate @s ~ 90
# execute if score @s matcha.pecking_animation matches 13..14 run rotate @s ~ 40
execute if score @s matcha.pecking_animation matches 11..12 run rotate @s ~ 20
execute if score @s matcha.pecking_animation matches 10 run execute at @s run function matcha:environmental/chicken/peck/peck_animation
execute if score @s matcha.pecking_animation matches 8..10 run rotate @s ~ 90
execute if score @s matcha.pecking_animation matches 4..5 run rotate @s ~ 20
# execute if score @s matcha.pecking_animation matches 3..4 run rotate @s ~ 20
execute if score @s matcha.pecking_animation matches 1..3 run rotate @s ~ 90
execute if score @s matcha.pecking_animation matches 4 run execute at @s run function matcha:environmental/chicken/peck/peck_animation

execute if score @s matcha.pecking_animation matches 1 run execute at @s run particle heart ~ ~1 ~ .3 .1 .3 0.1 1 normal
execute if score @s matcha.pecking_animation matches 1 run execute at @s run effect give @s minecraft:regeneration 10 2 true
# execute if score @s matcha.pecking_animation matches 1 run execute at @s run playsound minecraft:entity.pig.death neutral @a ~ ~ ~ 1 1.5


# --- Check at the end of the animation to make sure the chicken is STILL on the block it was pecking at the begining (or at least the same type)
# Check to make sure there isn't anything edible on top of the block it is trying to dig, so that the function does not trigger twice
# execute if score @s matcha.pecking_animation matches 1 run execute at @s run execute \
#     if block ~ ~-1 ~ #matcha:animal_affects/pig_diggable_dirt \
#     unless block ~ ~0.5 ~ #matcha:animal_affects/pig_edible \
#     run execute as @s run function matcha:environmental/chicken/peck/dig_dirt_based_block

# execute if score @s matcha.pecking_animation matches 1 run execute at @s run execute \
#     if block ~ ~0.5 ~ #matcha:animal_affects/pig_edible \
#     run execute as @s run function matcha:environmental/chicken/peck/eat_block

# Remove animation tags and scores
execute if score @s matcha.pecking_animation matches ..0 run tag @s remove playing_pecking_animation
execute if score @s matcha.pecking_animation matches ..0 run scoreboard players reset @s matcha.pecking_animation