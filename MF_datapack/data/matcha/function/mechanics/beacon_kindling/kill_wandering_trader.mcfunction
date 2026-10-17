# This function is run by the summoned Wandering Trader

# Tell nearby players that the Wandering Trader has left
tellraw @a[distance=..128] {"translate":"log.kleispack.wandering_trader.kill","color":"gray"}

# The Wandering Trader disappears in a cloud of smoke
particle minecraft:poof ~ ~.5 ~ .2 1 .2 0 50
tp @s ~ ~-1000 ~

# Kill this entity
kill @s
