# These functions are run once every Second
schedule function matcha:timers/10s 10s replace

# Debug
# say Clock 10s

# Functions
function matcha:mechanics/beacon_kindling/10s_loop

# Troughs
execute as @e[type=marker,tag=trough] run function matcha:environmental/cow/trough/update_nearby_cows