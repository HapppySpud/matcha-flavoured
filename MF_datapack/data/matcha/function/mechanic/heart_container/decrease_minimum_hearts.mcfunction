#Called when getting a "broken Heart" advancement (Ie. Obtaining, Iron, Copper, Diamond etc), only if its not in easy mode
execute unless score current_world_settings_difficulty difficulty_score matches 1 run scoreboard players remove @s minimum_hearts 2

#Flavour Messages, these will not run in easy since minimum never decreases
execute if score @s minimum_hearts matches 18 run tellraw @a {"color":"red","translate":"log.kleispack.god_grows_angry_1"}
execute if score @s minimum_hearts matches 16 run tellraw @a {"color":"red","translate":"log.kleispack.god_grows_angry_2"}
execute if score @s minimum_hearts matches 14 run tellraw @a {"color":"red","translate":"log.kleispack.god_grows_angry_3"}
execute if score @s minimum_hearts matches 12 run tellraw @a {"color":"red","translate":"log.kleispack.god_grows_angry_4"}
execute if score @s minimum_hearts matches 10 run tellraw @a {"color":"red","translate":"log.kleispack.god_grows_angry_5"}
execute if score @s minimum_hearts matches 8 run tellraw @a {"color":"red","translate":"log.kleispack.god_grows_angry_6"}
execute if score @s minimum_hearts matches 6 run tellraw @a {"color":"red","translate":"log.kleispack.god_grows_angry_7"}
# Mechanic Messages only if not in Easy
execute unless score current_world_settings_difficulty difficulty_score matches 1 run execute if score @s minimum_hearts matches 18 run tellraw @a {"color":"gray","translate":"log.kleispack.minimum_heart_decreased","with":["9"]}
execute unless score current_world_settings_difficulty difficulty_score matches 1 run execute if score @s minimum_hearts matches 16 run tellraw @a {"color":"gray","translate":"log.kleispack.minimum_heart_decreased","with":["8"]}
execute unless score current_world_settings_difficulty difficulty_score matches 1 run execute if score @s minimum_hearts matches 14 run tellraw @a {"color":"gray","translate":"log.kleispack.minimum_heart_decreased","with":["7"]}
execute unless score current_world_settings_difficulty difficulty_score matches 1 run execute if score @s minimum_hearts matches 12 run tellraw @a {"color":"gray","translate":"log.kleispack.minimum_heart_decreased","with":["6"]}
execute unless score current_world_settings_difficulty difficulty_score matches 1 run execute if score @s minimum_hearts matches 10 run tellraw @a {"color":"gray","translate":"log.kleispack.minimum_heart_decreased","with":["5"]}
execute unless score current_world_settings_difficulty difficulty_score matches 1 run execute if score @s minimum_hearts matches 8 run tellraw @a {"color":"gray","translate":"log.kleispack.minimum_heart_decreased","with":["4"]}
execute unless score current_world_settings_difficulty difficulty_score matches 1 run execute if score @s minimum_hearts matches 6 run tellraw @a {"color":"gray","translate":"log.kleispack.minimum_heart_decreased","with":["3"]}

#If minimum hearts is 5 increase the difficulty IF it is in normal
execute if score current_world_settings_difficulty difficulty_score matches 2 run execute if score @s minimum_hearts matches 10 run function matcha:mechanic/difficulty_scaling/increase_difficulty