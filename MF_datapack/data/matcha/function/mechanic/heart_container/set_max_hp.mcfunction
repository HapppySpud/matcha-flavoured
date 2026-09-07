#Fallback, this shouldn't happen, but if somehow their score is set above the max, then set it to the max
execute as @s if score @s Hearts >= maximum_hearts Hearts run scoreboard players set @s Hearts 60
#If they are on easy, we want to make sure it never goes below 10, HOWEVER, if they choose to go back to normal, we still want them to have that death consequence, thus:
execute if score current_world_settings_difficulty difficulty_score matches 1 run execute as @s if score @s Hearts < minimum_hearts Hearts run scoreboard players set @s Hearts 20
#If they are NOT on easy, and they dip below the minimum, set it to the minimum (NamlessJu showed me how to set scores with another score! Thank you, Ju!!)
execute unless score current_world_settings_difficulty difficulty_score matches 1 run execute as @s if score @s Hearts < current_minimum_hearts Hearts store result score @s Hearts run scoreboard players get current_minimum_hearts Hearts

# Check to see if my score corresponds to the other scores, if so, set my health to the corresponding score
execute as @s if score @s Hearts matches 60 run attribute @s minecraft:max_health base set 60
execute at @s if score @s Hearts matches 58 run attribute @s minecraft:max_health base set 58
execute at @s if score @s Hearts matches 56 run attribute @s minecraft:max_health base set 56
execute at @s if score @s Hearts matches 54 run attribute @s minecraft:max_health base set 54
execute at @s if score @s Hearts matches 52 run attribute @s minecraft:max_health base set 52
execute at @s if score @s Hearts matches 50 run attribute @s minecraft:max_health base set 50
execute at @s if score @s Hearts matches 48 run attribute @s minecraft:max_health base set 48
execute at @s if score @s Hearts matches 46 run attribute @s minecraft:max_health base set 46
execute at @s if score @s Hearts matches 44 run attribute @s minecraft:max_health base set 44
execute at @s if score @s Hearts matches 42 run attribute @s minecraft:max_health base set 42
execute at @s if score @s Hearts matches 40 run attribute @s minecraft:max_health base set 40
execute at @s if score @s Hearts matches 38 run attribute @s minecraft:max_health base set 38
execute at @s if score @s Hearts matches 36 run attribute @s minecraft:max_health base set 36
execute at @s if score @s Hearts matches 34 run attribute @s minecraft:max_health base set 34
execute at @s if score @s Hearts matches 32 run attribute @s minecraft:max_health base set 32
execute at @s if score @s Hearts matches 30 run attribute @s minecraft:max_health base set 30
execute at @s if score @s Hearts matches 28 run attribute @s minecraft:max_health base set 28
execute at @s if score @s Hearts matches 26 run attribute @s minecraft:max_health base set 26
execute at @s if score @s Hearts matches 24 run attribute @s minecraft:max_health base set 24
execute at @s if score @s Hearts matches 22 run attribute @s minecraft:max_health base set 22
execute at @s if score @s Hearts matches 20 run attribute @s minecraft:max_health base set 20
execute at @s if score @s Hearts matches 18 run attribute @s minecraft:max_health base set 18
execute at @s if score @s Hearts matches 16 run attribute @s minecraft:max_health base set 16
execute at @s if score @s Hearts matches 14 run attribute @s minecraft:max_health base set 14
execute at @s if score @s Hearts matches 12 run attribute @s minecraft:max_health base set 12
execute at @s if score @s Hearts matches 10 run attribute @s minecraft:max_health base set 10
execute at @s if score @s Hearts matches 8 run attribute @s minecraft:max_health base set 8
execute at @s if score @s Hearts matches 6 run attribute @s minecraft:max_health base set 6