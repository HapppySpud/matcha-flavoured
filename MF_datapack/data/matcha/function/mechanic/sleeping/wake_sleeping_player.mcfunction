execute at @s run teleport @s ~ ~ ~

weather clear

# players retain sleepTimer data for a few ticks after they wake up, so this
# will probably end up set back to 100 next tick, but setting it to zero now
# is enough for tick_sleeping_player to register them as no longer sleeping
# which stops them from being teleported again every tick until sleepTimer
# resets
scoreboard players set @s sleepTimerScore 0
