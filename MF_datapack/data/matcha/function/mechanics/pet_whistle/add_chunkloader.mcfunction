#Debug
say Summoned Enderpearl and Set its Owner

# Not at like +1000y for debug reasons
summon ender_pearl ~ ~2 ~ {NoGravity:1b,Tags:["chunkloader"]}
execute as @s run execute positioned ~ ~2 ~ run data modify entity @n[type=minecraft:ender_pearl,tag=chunkloader] Owner set from entity @s UUID
execute as @s run tag @s add chunkloader