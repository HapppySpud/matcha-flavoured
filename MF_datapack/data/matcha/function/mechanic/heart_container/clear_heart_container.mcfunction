# Remove the Heart Crystal
clear @s *[minecraft:item_model="matcha:heart_container"] 1

# Apply pickup effects
scoreboard players add @s Hearts 2
effect give @s regeneration 3 10 true

# If they achieved max hearts in this last pick-up, grant the with_songs advancement
execute if score @s Hearts >= maximum_hearts Hearts run advancement grant @s only matcha:with_songs/max_health

# If they still have the Crystal Heart, stop here and run the function again
execute if items entity @s container.* *[minecraft:item_model="matcha:heart_container"] run return run function matcha:mechanic/heart_container/process_heart_container

# Once all Crystal Hearts have been processed, play the use sound
playsound minecraft:item.totem.use player @a ~ ~ ~ .5 0 0