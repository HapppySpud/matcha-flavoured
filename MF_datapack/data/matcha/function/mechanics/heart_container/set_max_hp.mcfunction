#Fallback, this shouldn't happen, but if somehow their score is set above the max, then set it to the maximum
execute if score @s Hearts >= $Max Hearts run scoreboard players operation @s Hearts = $Max Hearts


#If they are on easy, we want to make sure it never goes below 10, HOWEVER, if they choose to go back to normal, we still want them to have that death consequence, thus:
execute if score current_world_settings_difficulty difficulty_score matches 0..1 run execute if score @s Hearts < $Easy minimum_hearts run scoreboard players operation @s Hearts = $Easy minimum_hearts

#If they are NOT on easy, and they dip below their minimum, set it to their minimum
execute if score current_world_settings_difficulty difficulty_score matches 2.. run execute if score @s Hearts < @s minimum_hearts run scoreboard players operation @s Hearts = @s minimum_hearts


# Convert the player's Hearts score into a format that the Macro function can read
execute store result storage matcha:hearts Hearts float 1 run scoreboard players get @s Hearts

# Set their max hp to match their Hearts score (This will likely be done as the player is on the death screen)
function matcha:mechanics/heart_container/set_max_hp.macro with storage matcha:hearts

# While it shouldn't be necessary, I'm emptying the storage again just to be safe
data remove storage matcha:hearts Hearts
