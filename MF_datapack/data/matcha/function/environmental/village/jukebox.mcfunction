# Remove used hoppers
execute if score @s Lifetime matches ..0 run fill ~1 ~ ~1 ~-1 ~ ~-1 air replace hopper
execute if score @s Lifetime matches ..0 run return run kill @s

# Reduce Lifetime of marker
execute if score @s Lifetime matches 1.. run scoreboard players remove @s Lifetime 1


# If the player is close to the Jukebox, play Dry Hands
execute if entity @s[tag=music_played] run return fail
execute unless entity @p[distance=..30,gamemode=survival] run return fail

# Let the Hopper play the disc
fill ~1 ~ ~1 ~-1 ~ ~-1 air replace redstone_block

# 2t lifetime for the hopper before it gets removed too
scoreboard players set @s Lifetime 2

tag @s add music_played
