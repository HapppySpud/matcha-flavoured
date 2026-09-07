# Play the sound effect
playsound minecraft:entity.wither.spawn block @a ~ ~ ~ .25

# Spawn particles
function matcha:mechanic/warding_stone/warding_stone_particles

# Set lodestone block
setblock ~ ~ ~ minecraft:lodestone

# add setup tag
tag @s add WardingStoneSetup