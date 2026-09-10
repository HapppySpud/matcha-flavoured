#Fallback, this shouldn't happen, but if somehow their score is set above the max, then set it to the maximum
execute if score @s Hearts >= maximum_hearts Hearts store result score @s Hearts run scoreboard players get maximum_hearts Hearts

#If they are on easy, we want to make sure it never goes below 10, HOWEVER, if they choose to go back to normal, we still want them to have that death consequence, thus:
execute if score current_world_settings_difficulty difficulty_score matches 1 run execute if score @s Hearts < minimum_hearts Hearts store result score @s Hearts run scoreboard players get minimum_hearts Hearts

#If they are NOT on easy, and they dip below the minimum, set it to the minimum (NamlessJu showed me how to set scores with another score! Thank you, Ju!!)
execute if score current_world_settings_difficulty difficulty_score matches 2.. run execute if score @s Hearts < current_minimum_hearts Hearts store result score @s Hearts run scoreboard players get current_minimum_hearts Hearts


# Convert the player's Hearts score into a format that the Macro function can read
execute store result storage matcha:hearts Hearts float 1 run scoreboard players get @s Hearts

# Set their max hp to match their Hearts score (This will likely be done as the player is on the death screen)
function matcha:mechanic/heart_container/set_max_hp.macro with storage matcha:hearts

# While it shouldn't be necessary, I'm emptying the storage again just to be safe
data remove storage matcha:hearts Hearts