# No block check is needed, this only runs on wheat

effect give @s slowness 2 99 true

execute if score @s matcha.pecking_animation matches 26 run execute at @s run particle heart ~ ~1 ~ .3 .1 .3 0.1 1 normal
execute if score @s matcha.pecking_animation matches 26 run execute at @s run function matcha:environmental/chicken/eat/eat_animation
execute if score @s matcha.pecking_animation matches 26..30 run rotate @s ~ 90
execute if score @s matcha.pecking_animation matches 21..22 run rotate @s ~ 20
execute if score @s matcha.pecking_animation matches 16..20 run rotate @s ~ 90
execute if score @s matcha.pecking_animation matches 16 run execute at @s run particle heart ~ ~1 ~ .3 .1 .3 0.1 1 normal
execute if score @s matcha.pecking_animation matches 16 run execute at @s run function matcha:environmental/chicken/eat/eat_animation
execute if score @s matcha.pecking_animation matches 11..12 run rotate @s ~ 20
execute if score @s matcha.pecking_animation matches 10 run execute at @s run particle heart ~ ~1 ~ .3 .1 .3 0.1 1 normal
execute if score @s matcha.pecking_animation matches 10 run execute at @s run function matcha:environmental/chicken/eat/eat_animation
execute if score @s matcha.pecking_animation matches 8..10 run rotate @s ~ 90
execute if score @s matcha.pecking_animation matches 4..5 run rotate @s ~ 20
execute if score @s matcha.pecking_animation matches 4 run execute at @s run particle heart ~ ~1 ~ .3 .1 .3 0.1 1 normal
execute if score @s matcha.pecking_animation matches 4 run execute at @s run function matcha:environmental/chicken/eat/eat_animation
execute if score @s matcha.pecking_animation matches 1..3 run rotate @s ~ 90
execute if score @s matcha.pecking_animation matches 1 run execute at @s run particle heart ~ ~1 ~ .3 .1 .3 0.1 1 normal
execute if score @s matcha.pecking_animation matches 1 run execute at @s run effect give @s minecraft:regeneration 10 2 true

# We care if chickens are on wheat, beucase they modify the block
execute if block ~ ~0.5 ~ #matcha:animal_affects/chicken_edible \
    run function matcha:environmental/chicken/eat/eat_block

# Remove animation scores
execute if score @s matcha.pecking_animation matches ..0 run tag @s remove playing_pecking_animation
execute if score @s matcha.pecking_animation matches ..0 run scoreboard players reset @s matcha.pecking_animation