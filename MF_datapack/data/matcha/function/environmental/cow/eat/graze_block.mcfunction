setblock ~ ~-1 ~ minecraft:dirt
#Cows gain 1 milk value per grass 
scoreboard players @s add matcha.milk_reserve 1




#Leftover code maybe cows give manure, which can be composted to give immediate bonemeal, or just bonemeal itsself

# spawn this pig's Gift Loot, tags will be determined there (MUST use kill, because that allows us to check the current entities tags using /loot)
# We can also check the block the mob is on with this LT, so for ex. Each block type can have a different LT
# tag @s add matcha.pig_gifting
# loot spawn ^ ^-0.8 ^ kill @s
# data merge entity @n[type=item] {Motion:[0d,0.3d,0d,0d]}
# tag @s remove matcha.pig_gifting