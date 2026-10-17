# This function is run by the Beacon Kindling marker

# Set lifetime for Beacon
scoreboard players add @s Lifetime 90

# Place Campfire
setblock ~ ~ ~ minecraft:campfire[signal_fire=true]

# Play Effects
particle minecraft:flame ~ ~.7 ~ .1 .1 .1 0.07 30
playsound minecraft:item.firecharge.use block @a ~ ~ ~ 1
playsound minecraft:entity.wither.spawn block @a ~ ~ ~ 0.5
