# Hashiru: This function was so horrible it needed to be completely redone
# It was doing queries to get the Warding Stones wayyyyy way wayy too often
# Now it only does it once and then moves forward with the other functions
# Those functions also did a lot of redundant @n checks, which is now running much cheaper

execute as @e[type=minecraft:armor_stand,tag=WardingStone] at @s run function matcha:mechanic/warding_stone/warding_stone_effect
