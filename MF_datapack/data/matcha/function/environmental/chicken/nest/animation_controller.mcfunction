# Check for block it is above here, and add a tag to the chicken
#    This controls animation particles and sounds
# execute if score @s matcha.nesting_animation matches 26 run execute as @s run function matcha:environmental/chicken/peck/check_pecking_block

effect give @s slowness 2 99 true


#Frame-by-Frame anim
execute if score @s matcha.nesting_animation matches 56..60 run rotate @s ~22 90
execute if score @s matcha.nesting_animation matches 56 run execute at @s run function matcha:environmental/chicken/nest/nest_animation
execute if score @s matcha.nesting_animation matches 51..52 run rotate @s ~22 20

execute if score @s matcha.nesting_animation matches 46..50 run rotate @s ~22 90
execute if score @s matcha.nesting_animation matches 46 run execute at @s run function matcha:environmental/chicken/nest/nest_animation
execute if score @s matcha.nesting_animation matches 41..42 run rotate @s ~22 20

execute if score @s matcha.nesting_animation matches 36..40 run rotate @s ~22 90
execute if score @s matcha.nesting_animation matches 36 run execute at @s run function matcha:environmental/chicken/nest/nest_animation
execute if score @s matcha.nesting_animation matches 31..32 run rotate @s ~22 20


execute if score @s matcha.nesting_animation matches 26..30 run rotate @s ~22 90
execute if score @s matcha.nesting_animation matches 26 run execute at @s run function matcha:environmental/chicken/nest/nest_animation
execute if score @s matcha.nesting_animation matches 21..22 run rotate @s ~22 20


execute if score @s matcha.nesting_animation matches 16..20 run rotate @s ~22 90
execute if score @s matcha.nesting_animation matches 16 run execute at @s run function matcha:environmental/chicken/nest/nest_animation
execute if score @s matcha.nesting_animation matches 11..12 run rotate @s ~22 20

execute if score @s matcha.nesting_animation matches 6..10 run rotate @s ~22 90
execute if score @s matcha.nesting_animation matches 6 run execute at @s run function matcha:environmental/chicken/nest/nest_animation
execute if score @s matcha.nesting_animation matches 1..2 run rotate @s ~22 20

execute if score @s matcha.nesting_animation matches 1 run execute at @s run function matcha:environmental/chicken/nest/nest_animation
execute if score @s matcha.nesting_animation matches 1 run execute at @s run particle heart ~ ~1 ~ .5 .1 .5 0.1 5 normal
execute if score @s matcha.nesting_animation matches 1 run execute at @s run effect give @s minecraft:regeneration 10 2 true


# We don't care if it was pushed, we're making a nest, now or never, baby
execute if score @s matcha.nesting_animation matches 1 run function matcha:environmental/chicken/nest/make_nest

# Remove animation score
execute if score @s matcha.nesting_animation matches ..0 run tag @s remove playing_nesting_animation
execute if score @s matcha.nesting_animation matches ..0 run scoreboard players reset @s matcha.nesting_animation