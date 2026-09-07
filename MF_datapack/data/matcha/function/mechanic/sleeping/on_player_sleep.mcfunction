# run by advancement whenever a player sleeps in a bed
tag @s add is_sleeping

advancement revoke @s only matcha:mechanics/slept_in_bed

function matcha:mechanic/sleeping/calculate_sleep_duration

# needs to be scheduled because it relies on is_sleeping tag and
# apparently the tag command takes a tick to apply
schedule function matcha:mechanic/sleeping/calculate_sleep_rate 1t

# prevent "No amount of rest can pass this night" text
title @s actionbar ""

# display "n/n players sleeping" text in action bar
# 2 tick delay to ensure it runs after calculate_sleep_rate
schedule function matcha:mechanic/sleeping/notify_sleeping_players 2t
