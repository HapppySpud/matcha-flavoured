# Since this runs immediately for every newly joined player, we don't need to use an advancement to trigger "on_first_load" functions, we just run them here.

# Set up scoreboard scores
function matcha:setup/scoreboard/player_setup

# For a new version, we wipe their recipe unlock advancements so they can learn new things that were added or tweaked (or bugged)
advancement revoke @s from minecraft:recipes/root

# Set their xp levels to a high value, so they don't hear the level-up sound very often
function matcha:mechanics/xp_handling/give_levels


# As only players with a version number below the current version are made to run this function, we can set player's version number to current version
scoreboard players operation @s version_number = current_version version_number

# Announce that a player has been updated
tellraw @a [{"text":"[!]","bold":true,"color":"green"},{"text":": ","color":"green"},{"translate":"log.kleispack.player_updated","color":"gray"}]
