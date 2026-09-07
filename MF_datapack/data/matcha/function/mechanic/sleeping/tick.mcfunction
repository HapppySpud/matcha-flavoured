# exit if no players are sleeping
# (sleepTimerScore is being used here to store the number of players sleeping,
# among other things that aren't the value sleepTimer, to save on unnecessary
# scoreboard objectives)
execute unless score players_sleeping sleepTimerScore matches 1.. run return 0

# skip sleep_rate ticks forward in time.
# yes, this is a macro function that runs every tick which is said to be bad
# for performance.
# however: it's not forked, it only runs when players are sleeping,
# and it doesn't seem to have any effect on the TPS graph on my machine...
function matcha:mechanic/sleeping/add_variable_time with storage sleep_rate_temp

# update sleeping players' sleep duration and check that they are still asleep.
execute as @a[tag=is_sleeping] run function matcha:mechanic/sleeping/tick_sleeping_player
