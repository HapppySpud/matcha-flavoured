# This function is run by the player who placed the Beacon

# Reset the advancement trigger
advancement revoke @s only matcha:mechanics/beacon_kindling

# Place the campfire block and play effects
execute as @n[type=marker,tag=beacon_kindling,tag=!beacon_kindling_init] at @s run function matcha:mechanics/beacon_kindling/place_beacon_kindling

# If this player is on cooldown, cancel the Beacon Kindling they just placed
execute if entity @s[scores={BeaconKindlingCooldown=1..}] run tellraw @s {"translate":"log.kleispack.wandering_trader.beacon_placed","color":"gray"}
execute if entity @s[scores={BeaconKindlingCooldown=1..}] as @n[type=marker,tag=beacon_kindling,tag=!beacon_kindling_init] run return run kill @s

# Put the player on a 15min (90) Cooldown and start summoning a Wandering Trader
scoreboard players add @s BeaconKindlingCooldown 90

# Tell nearby players that a Wandering Trader is coming
tellraw @a[distance=..128] {"translate":"log.kleispack.wandering_trader.initialise","color":"gray"}

# Tag the beacon kindling marker as Initialised
execute as @n[type=marker,tag=beacon_kindling,tag=!beacon_kindling_init] run tag @s add beacon_kindling_init
