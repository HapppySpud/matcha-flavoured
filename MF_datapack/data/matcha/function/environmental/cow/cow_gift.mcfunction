# init scoreboard timer for new cows
execute \
    unless score @s matcha.cow_eating_cooldown = @s matcha.cow_eating_cooldown \
    store result score @s matcha.cow_eating_cooldown \
    run random value 300..600

# decrement scoreboard timer 
scoreboard players remove @s matcha.cow_eating_cooldown 1

# abort if timer is not negative or not standing on grass
execute unless score @s matcha.cow_eating_cooldown matches ..0 run return fail
execute at @s run execute unless block ^ ^0.5 ^1 #matcha:animal_affects/cow_edible run return fail

# --- Interact with block
# If block above feet is edible, eat it
execute at @s if block ^ ^0.5 ^1 #matcha:animal_affects/cow_edible run function matcha:environmental/cow/eat/animation
# # Check to make sure there isn't anything edible on top of the block it is trying to graze, so that the function does not trigger twice
# execute if block ~ ~-1 ~ #matcha:animal_affects/cow_grazable \
#     unless block ^ ^0.5 ^1 #matcha:animal_affects/cow_edible \
#     run function matcha:environmental/cow/eat/animation

# reset timer
execute store result score @s matcha.cow_eating_cooldown run random value 300..600
