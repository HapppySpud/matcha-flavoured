# Hashiru: This runs when we have a crystal heart, why are we checking again if we have it?
# I cleaned up the function quite a bit and  made sure the correct selectors are used.
# @s wherever possible
# Testing this in multiplayer it made crystal hearts finally work for everybody!

scoreboard players add @s Hearts 2
effect give @s regeneration 3 10 true
clear @s *[minecraft:item_model="minecraft:heart_container"] 1

# Hashiru: Play the sound only if there is no more heart remaining in the inventory to prevent 10 sounds playing at once and destroying my eardrums
execute unless items entity @s container.* *[minecraft:item_model="minecraft:heart_container"] run playsound minecraft:item.totem.use player @a ~ ~ ~ .5 0 0

advancement revoke @p only matcha:mechanics/heart_container_obtained

#If they acheived max hearts in this last pick-up, grant the with_songs advancement
execute if score @s Hearts >= maximum_hearts Hearts run advancement grant @s only matcha:with_songs/max_health

#If they still have the Crystal Heart, run the function again
execute if items entity @s container.* *[minecraft:item_model="minecraft:heart_container"] run function matcha:mechanic/heart_container/process_heart_container