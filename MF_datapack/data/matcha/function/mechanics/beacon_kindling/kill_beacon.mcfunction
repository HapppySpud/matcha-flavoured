# This function is run by the Beacon Kindling marker

# The campfire is extinguished
execute if block ~ ~ ~ minecraft:campfire run setblock ~ ~ ~ minecraft:campfire[lit=false] replace
particle minecraft:large_smoke ~ ~ ~ .1 .1 .1 0.1 10

# Kill this Marker
kill @s
