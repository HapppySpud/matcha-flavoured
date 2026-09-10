# Remove deaths score to make sure this isn't run again
scoreboard players set @s deaths 0

# Remove the hearts
scoreboard players remove @s Hearts 2

# Update Max HP
execute as @s run function matcha:mechanic/heart_container/set_max_hp