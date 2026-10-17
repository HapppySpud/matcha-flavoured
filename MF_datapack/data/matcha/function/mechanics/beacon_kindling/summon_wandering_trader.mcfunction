# This function is run by the Beacon Kindling marker
# Because the scoreboard only applies when it is loaded (I assume?) It means that when checked the player must be close enough to load the beacon kindling, therefore there is no danger of just summoning the trader at that time

# Add the tag so that the beacon doesn't summon another
tag @s add summoned_trader


# Summon a Wandering Trader with a tag to distinguish them from natural spawns
summon wandering_trader ^1 ^ ^ {Invulnerable:1b,Tags:["summoned_by_beacon"]}

# Find the Wandering Trader we just summoned, it should be the only one without a Lifetime score, and give it a 5min Lifetime (30)
execute as @e[type=wandering_trader,tag=summoned_by_beacon] unless score @s Lifetime matches 0.. run scoreboard players add @s Lifetime 30


tellraw @a[distance=..128] {"translate":"log.kleispack.wandering_trader.summoned","color":"gray"}
