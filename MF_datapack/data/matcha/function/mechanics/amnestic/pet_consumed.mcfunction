# Make a sound
execute at @s run playsound minecraft:block.amethyst_block.break neutral @a ~ ~ ~ 1 0.7

# Remove owner and make stand
data remove entity @s Owner
data remove entity @s Sitting
data remove entity @s Tags
data remove entity @s Tame