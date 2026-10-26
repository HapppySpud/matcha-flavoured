# init scoreboard timer for new pigs
execute \
    unless score @s matcha.chicken_gifting_cooldown = @s matcha.chicken_gifting_cooldown \
    store result score @s matcha.chicken_gifting_cooldown \
    run random value 300..600

# decrement scoreboard timer 
scoreboard players remove @s matcha.chicken_gifting_cooldown 1

# abort if timer is not negative or not standing on grass
execute unless score @s matcha.chicken_gifting_cooldown matches ..0 run return fail
execute unless block ~ ~-0.8 ~ #matcha:animal_affects/bird_peckable run return fail

# --- Interact with block

#If the block the chicken is in, is edible, eat it
# execute if block ~ ~0.5 ~ #matcha:animal_affects/chicken_edible run function matcha:environmental/chicken/eat/animation
# Check to make sure there isn't anything edible on top of the block it is trying to peck, so that the function does not trigger twice

execute if block ~ ~-1 ~ #matcha:animal_affects/seagull_peckable \
    unless block ~ ~0.5 ~ #matcha:animal_affects/chicken_edible \
    if predicate matcha:mob_checks/is_seagull \
    run function matcha:environmental/chicken/peck/animation

execute if block ~ ~-1 ~ #matcha:animal_affects/chicken_peckable \
    unless block ~ ~0.5 ~ #matcha:animal_affects/chicken_edible \
    unless predicate matcha:mob_checks/is_seagull \
    run function matcha:environmental/chicken/peck/animation

# #Check if chicken can nest on this 
# execute if block ~ ~-0.8 ~ #matcha:animal_affects/chicken_can_nest_on run function matcha:environmental/chicken/nest/animation
#       Maybe you feed chickens golden seeds or smthn that causes them to nest


# --- Reset timer
execute store result score @s matcha.chicken_gifting_cooldown run random value 300..600