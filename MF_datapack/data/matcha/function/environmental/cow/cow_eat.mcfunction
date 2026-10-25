# abort if they cannot eat the block in front of them or if the nearest player is too far (See Below)
execute if entity @p[distance=40..] run return fail
execute at @s run execute unless block ^ ^0.5 ^1 #matcha:animal_affects/cow_edible run return fail
say player is close, and there is food in front of me

# Interact with block
execute at @s if block ^ ^0.5 ^1 #matcha:animal_affects/cow_edible run function matcha:environmental/cow/eat/animation

# Remove them from the tag so the function stops running
tag @s remove hungry


# Abortion upon player being too far ------
# In 26.3 pathing for passive mobs was changed (TERRIBLE) and passive mobs will not path to new blocks if too far from the player
# I couldn't find out what distance this was from the wiki so 40 is my arbitrary number

# PLEASE let me know if this can be overwritten in some way (following distance attribute??)