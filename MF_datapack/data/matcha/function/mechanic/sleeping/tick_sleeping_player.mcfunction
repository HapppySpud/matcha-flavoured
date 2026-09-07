# this function runs every tick for all players with the "is_sleeping" tag

# update sleepDuration
scoreboard players operation @s sleepDuration -= sleep_rate sleepTimerScore

# wake player if they've slept their whole sleepDuration
execute if score @s sleepDuration matches ..0 \
        run function matcha:mechanic/sleeping/wake_sleeping_player

# if the player is still in bed, nothing left to do. exit.
execute store result score @s sleepTimerScore run data get entity @s SleepTimer
execute if entity @s[scores={sleepTimerScore=1..}] run return 0

tag @s remove is_sleeping

# everything below this point only runs if the player is no longer in bed

# recaulculate sleep rate since the number of players has changed
schedule function matcha:mechanic/sleeping/calculate_sleep_rate 1t

# display "n/n players sleeping" text in action bar
schedule function matcha:mechanic/sleeping/notify_sleeping_players 2t

