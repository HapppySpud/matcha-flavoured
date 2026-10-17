# This function is run by the Beacon Kindling marker

# If this Beacon has summoned a Wandering Trader, kill the nearest summoned Wandering trader
execute if score @s Lifetime matches ..30 as @n[type=minecraft:wandering_trader,tag=summoned_by_beacon] run function matcha:mechanics/beacon_kindling/kill_wandering_trader

# Tell nearby players that the Wandering Trader has lost sight of the Beacon
execute as @a[distance=..128] run tellraw @s {"translate":"log.kleispack.wandering_trader.kill_early","color":"gray"}

# Remove the Beacon Kindling marker
function matcha:mechanics/beacon_kindling/kill_beacon
