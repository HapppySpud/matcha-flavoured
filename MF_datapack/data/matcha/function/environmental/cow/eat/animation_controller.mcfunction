#This is my attempt at using datapacks to do animation, it feels like im doing this wrong, LMK
effect give @s slowness 2 99 true
execute if score @s matcha.eating_animation matches 29 run execute at @s run function matcha:environmental/cow/eat/eat_animation
execute if score @s matcha.eating_animation matches 24..30 run rotate @s ~ 90
execute if score @s matcha.eating_animation matches 23..24 run rotate @s ~ 40
execute if score @s matcha.eating_animation matches 21..22 run rotate @s ~ 20
execute if score @s matcha.eating_animation matches 20 run execute at @s run function matcha:environmental/cow/eat/eat_animation
execute if score @s matcha.eating_animation matches 14..20 run rotate @s ~ 90
execute if score @s matcha.eating_animation matches 13..14 run rotate @s ~ 40
execute if score @s matcha.eating_animation matches 11..12 run rotate @s ~ 20
execute if score @s matcha.eating_animation matches 10 run execute at @s run function matcha:environmental/cow/eat/eat_animation
execute if score @s matcha.eating_animation matches 6..10 run rotate @s ~ 90
execute if score @s matcha.eating_animation matches 4..5 run rotate @s ~ 40
execute if score @s matcha.eating_animation matches 1..3 run rotate @s ~ 20
execute if score @s matcha.eating_animation matches 1 run execute at @s run function matcha:environmental/cow/eat/final_hay_eat_animation
execute if score @s matcha.eating_animation matches 1 run execute at @s[tag=!sad] run particle heart ~ ~2 ~ .3 .1 .3 0.1 1 normal
execute if score @s matcha.eating_animation matches 1 run execute at @s[tag=happy] run particle heart ~ ~2 ~ .3 .1 .3 0.1 5 normal
execute if score @s matcha.eating_animation matches 1 run execute at @s[tag=sad] run particle angry_villager ~ ~2 ~ .3 .1 .3 0.1 1 normal
execute if score @s matcha.eating_animation matches 1 run execute at @s run effect give @s minecraft:regeneration 10 2 true
execute if score @s matcha.eating_animation matches 1 run execute at @s[tag=!sad] run playsound minecraft:entity.cow_moody.ambient neutral @a ~ ~ ~ 1
execute if score @s matcha.eating_animation matches 1 run execute at @s[tag=sad] run playsound minecraft:entity.cow_moody.hurt neutral @a ~ ~ ~ 1


# --- Check at the end of the animation to make sure the cow is STILL on the block it was grazing at the begining (or at least the same type)
# Check to make sure there isn't anything edible on top of the block it is trying to eat, so that the function does not trigger twice
execute if score @s matcha.eating_animation matches 1 run execute at @s run execute \
    if block ~ ~-1 ~ #matcha:animal_affects/cow_grazable \
    unless block ~ ~0.5 ~ #matcha:animal_affects/cow_edible \
    run execute as @s run function matcha:environmental/cow/eat/graze_block

execute if score @s matcha.eating_animation matches 1 run execute at @s run execute \
    if block ^ ^0.5 ^1 #matcha:animal_affects/cow_edible \
    run execute as @s run function matcha:environmental/cow/eat/eat_block

# Remove animation tags and scores
execute if score @s matcha.eating_animation matches ..0 run tag @s remove playing_eating_animation
execute if score @s matcha.eating_animation matches ..0 run scoreboard players reset @s matcha.eating_animation