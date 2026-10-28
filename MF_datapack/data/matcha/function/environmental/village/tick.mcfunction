# This function is ran every tick by Players that are in Villages

# Activate the Entity
execute as @n[type=minecraft:mannequin,tag=haunted] at @s run function matcha:environmental/village/entity

# Activate the Jukebox
execute as @n[type=marker,tag=jukebox] at @s run function matcha:environmental/village/jukebox

# Kills any playing music
stopsound @s music

# Play eerie sounds
function matcha:environmental/village/eerie_sound