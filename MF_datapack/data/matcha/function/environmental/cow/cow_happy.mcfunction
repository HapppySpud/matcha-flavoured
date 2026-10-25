# decrement scoreboard timer 
scoreboard players remove @s matcha.cow_happy_cooldown 1

# abort if timer is not negative
execute unless score @s matcha.cow_happy_cooldown matches ..0 run return fail

# Remove their tag, and remove them from the scoreboard
tag @s remove happy
tag @s remove fed
scoreboard players reset @s matcha.cow_happy_cooldown
