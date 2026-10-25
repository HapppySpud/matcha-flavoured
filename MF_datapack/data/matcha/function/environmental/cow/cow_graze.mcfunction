# init scoreboard timer for new cows
execute \
    unless score @s matcha.cow_grazing_cooldown = @s matcha.cow_grazing_cooldown \
    store result score @s matcha.cow_grazing_cooldown \
    run random value 150..300

# decrement scoreboard timer 
scoreboard players remove @s matcha.cow_grazing_cooldown 1

# abort if timer is not negative or not standing on grass
execute unless score @s matcha.cow_grazing_cooldown matches ..0 run return fail
execute at @s run execute unless block ~ ~ ~ #matcha:animal_affects/cow_grazable run return fail

# Interact with block
execute if block ~ ~ ~ #matcha:animal_affects/cow_grazable run function matcha:environmental/cow/graze/animation

# reset timer
execute store result score @s matcha.cow_grazing_cooldown run random value 150..300
