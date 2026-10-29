# Set the time based on their resistance to it
execute if score @s shakudo_wither_resistance matches ..0 run return run scoreboard players set @s wither_timer 9
execute if score @s shakudo_wither_resistance matches 1 run return run scoreboard players set @s wither_timer 11
execute if score @s shakudo_wither_resistance matches 2 run return run scoreboard players set @s wither_timer 12
execute if score @s shakudo_wither_resistance matches 3 run return run scoreboard players set @s wither_timer 13
scoreboard players set @s wither_timer 14