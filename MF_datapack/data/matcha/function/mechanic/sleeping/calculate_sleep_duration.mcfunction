# calculate sleep duration (gametime to skip before kicking out of bed)
# default to 12000, but should be less if going to bed after nightfall so that
# players wake up in the morning

scoreboard players set @s sleepDuration 12000

#check time of day
execute store result score current_time sleepTimerScore run time query day
execute unless score current_time sleepTimerScore matches 12000..23000 run return 0

#only executes if current_time is between 12000 and 23000 (night time)
#subtract elapsed night time from sleep duration so player wakes up in the morning
scoreboard players set @s sleepDuration 24000
scoreboard players operation @s sleepDuration -= current_time sleepTimerScore
