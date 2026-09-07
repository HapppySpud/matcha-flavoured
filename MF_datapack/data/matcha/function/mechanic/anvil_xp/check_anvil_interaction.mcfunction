#If they interact with an anvil, exlude them from xp removal
execute as @s run execute if score @s anvil_interaction > 0 anvil_interaction run function matcha:mechanic/anvil_xp/set_xp
scoreboard players set @s anvil_interaction 0
stopwatch restart xp_timer
#Revoke the advancement
advancement revoke @s only matcha:mechanics/check_anvil_interaction