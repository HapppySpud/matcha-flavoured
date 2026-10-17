# Called when getting a "broken Heart" advancement (Ie. Obtaining, Iron, Copper, Diamond etc)

# Safety check to make sure the score is initialised
execute unless score @s minimum_hearts matches -20..999 run scoreboard players set @s minimum_hearts 20

scoreboard players remove @s minimum_hearts 2

# If minimum hearts falls below the minimum for Normal difficulty, increase the difficulty IF it is in normal
execute if score current_world_settings_difficulty difficulty_score matches 2 run execute if score @s minimum_hearts < $Normal minimum_hearts run function matcha:mechanics/difficulty_scaling/increase_difficulty

# If player's minimum_hearts score is somehow below the minimum set for Hard difficulty, set it to that minimum and do not run the rest of this function
execute if score @s minimum_hearts < $Hard minimum_hearts run return run scoreboard players operation @s minimum_hearts = $Hard minimum_hearts

# Flavour Messages
execute if score @s minimum_hearts matches 18 run tellraw @s {"color":"red","translate":"log.kleispack.god_grows_angry_1"}
execute if score @s minimum_hearts matches 16 run tellraw @s {"color":"red","translate":"log.kleispack.god_grows_angry_2"}
execute if score @s minimum_hearts matches 14 run tellraw @s {"color":"red","translate":"log.kleispack.god_grows_angry_3"}
execute if score @s minimum_hearts matches 12 run tellraw @s {"color":"red","translate":"log.kleispack.god_grows_angry_4"}
execute if score @s minimum_hearts matches 10 run tellraw @a {"color":"red","translate":"log.kleispack.god_grows_angry_5"}
execute if score @s minimum_hearts matches 8 run tellraw @s {"color":"red","translate":"log.kleispack.god_grows_angry_6"}
execute if score @s minimum_hearts matches 6 run tellraw @s {"color":"red","translate":"log.kleispack.god_grows_angry_7"}

# If in Easy mode, do not say that minimum hearts has been decreased
execute if score current_world_settings_difficulty difficulty_score matches 0..1 run return fail

# Mechanic Messages
execute if score @s minimum_hearts matches 18 run tellraw @s {"color":"gray","translate":"log.kleispack.minimum_heart_decreased","with":["9"]}
execute if score @s minimum_hearts matches 16 run tellraw @s {"color":"gray","translate":"log.kleispack.minimum_heart_decreased","with":["8"]}
execute if score @s minimum_hearts matches 14 run tellraw @s {"color":"gray","translate":"log.kleispack.minimum_heart_decreased","with":["7"]}
execute if score @s minimum_hearts matches 12 run tellraw @s {"color":"gray","translate":"log.kleispack.minimum_heart_decreased","with":["6"]}
execute if score @s minimum_hearts matches 10 run tellraw @s {"color":"gray","translate":"log.kleispack.minimum_heart_decreased","with":["5"]}
execute if score @s minimum_hearts matches 8 run tellraw @s {"color":"gray","translate":"log.kleispack.minimum_heart_decreased","with":["4"]}
execute if score @s minimum_hearts matches 6 run tellraw @s {"color":"gray","translate":"log.kleispack.minimum_heart_decreased","with":["3"]}
