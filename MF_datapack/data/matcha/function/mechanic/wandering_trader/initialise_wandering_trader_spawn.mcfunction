tellraw @a {"translate":"log.kleispack.wandering_trader.initialise","color":"gray"}
scoreboard players add @n[type=marker,tag=beacon_kindling] wandering_trader_timer_score 0

#Initilise the loop
schedule function matcha:mechanic/wandering_trader/check_wandering_trader_timer_loop 1s
# schedule function matcha:mechanic/wandering_trader/initialise_wandering_trader_spawn
