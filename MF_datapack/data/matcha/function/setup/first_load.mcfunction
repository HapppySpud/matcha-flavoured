#add a scoreboard for the first load
scoreboard objectives add gamerules dummy

# Set required Gamerules if they have not been set before
execute unless score gamerules_setup gamerules matches 1 run function matcha:setup/gamerules

#If it is the first load for the player, and the first load for the world, and the player IS NOT in hardcore, set the difficulty back to normal
execute unless score gamerules_setup gamerules matches 1 if \
    score current_world_settings_difficulty difficulty_score matches 3 run \
    function matcha:setup/disallow_hard_on_first_load

# Confirm that gamerules have been set
scoreboard players set gamerules_setup gamerules 1