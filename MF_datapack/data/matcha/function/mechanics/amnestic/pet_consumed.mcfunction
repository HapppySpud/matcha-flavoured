# Make a sound
execute at @s run playsound minecraft:block.amethyst_block.chime neutral @a ~ ~ ~ 1 0.65

# Remove owner and make stand
data remove entity @s Owner
data remove entity @s Sitting