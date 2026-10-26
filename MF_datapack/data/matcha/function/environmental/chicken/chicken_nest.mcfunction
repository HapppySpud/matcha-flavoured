# init scoreboard timer for new chickens
execute \
    unless score @s matcha.chicken_nesting_countdown = @s matcha.chicken_nesting_countdown \
    store result score @s matcha.chicken_nesting_countdown \
    run random value 600..1200

# decrement scoreboard timer 
scoreboard players remove @s matcha.chicken_nesting_countdown 1

# abort if timer is not negative or not standing on a nestable block
execute unless score @s matcha.chicken_nesting_countdown matches ..0 run return fail
execute unless block ~ ~-0.8 ~ #matcha:animal_affects/chicken_nestable run return fail

# Interact with block
execute unless predicate matcha:mob_checks/is_seagull \
    run function matcha:environmental/chicken/nest/animation

scoreboard players reset @s matcha.chicken_nesting_countdown
tag @s remove nest_maker
tag @s remove has_home
tag @s add mama