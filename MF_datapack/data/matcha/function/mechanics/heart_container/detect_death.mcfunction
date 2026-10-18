# Checks if heart_container_loss_on_death is active
# if true, call the hpdown function
# and always consume the death event
execute as @a if score @s deaths matches 1.. if data storage matcha:config {heart_container_loss_on_death:1b} run function matcha:mechanics/heart_container/hpdown
execute as @a if score @s deaths matches 1.. run scoreboard players set @s deaths 0
