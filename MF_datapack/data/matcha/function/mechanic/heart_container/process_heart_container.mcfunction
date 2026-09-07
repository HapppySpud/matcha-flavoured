# Hashiru: @p to @s

#If they have max HP, do nothing and revoke the advancement
execute if score @s Hearts >= maximum_hearts Hearts run advancement revoke @s only matcha:mechanics/heart_container_obtained
#If they have less than the max HP, clear the heart container
execute if score @s Hearts < maximum_hearts Hearts run function matcha:mechanic/heart_container/clear_heart_container
function matcha:mechanic/heart_container/set_max_hp