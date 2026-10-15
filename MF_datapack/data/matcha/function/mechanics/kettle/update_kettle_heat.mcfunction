execute as @e[type=minecraft:marker,tag=kettle,tag=placed] run function matcha:mechanics/kettle/check_if_above_heat_source
advancement revoke @s only matcha:mechanics/kettle/interact_with_kettle