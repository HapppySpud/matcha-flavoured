# execute unless block ~ ~ ~ air run tp @s ~ ~1 ~
# If its in air, set the block to brewing stand
execute if block ~ ~ ~ air run setblock ~ ~ ~ minecraft:brewing_stand
# If it set proper, add placed
execute if block ~ ~ ~ minecraft:brewing_stand run tag @s add placed