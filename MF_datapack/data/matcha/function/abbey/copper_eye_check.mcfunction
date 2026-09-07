#Before we check the power level, we check the blocks around every copper eye, if the supporting blocks aren't there, including the target, we kill them
function matcha:abbey/check_if_copper_eye_should_be_killed
#Then we go through and actually check power levels
execute at @e[type=minecraft:marker,tag=copper_eye_door,tag=marker_setup] unless block ~ ~ ~ target[power=0] run function matcha:abbey/open_copper_eye_door
execute at @e[type=minecraft:marker,tag=copper_eye_lantern,tag=marker_setup] unless block ~ ~ ~ target[power=0] run function matcha:abbey/break_copper_eye_lantern
execute at @e[type=minecraft:marker,tag=copper_eye_grate,tag=marker_setup] unless block ~ ~ ~ target[power=0] run function matcha:abbey/push_copper_eye_grate
execute at @e[type=minecraft:marker,tag=copper_eye_grate_vertical,tag=marker_setup] unless block ~ ~ ~ target[power=0] run function matcha:abbey/push_vertical_copper_eye_grate
execute at @e[type=minecraft:marker,tag=copper_eye_grate_vertical_retract,tag=marker_setup] unless block ~ ~ ~ target[power=0] run function matcha:abbey/pull_vertical_copper_eye_grate
execute at @e[type=minecraft:marker,tag=copper_eye_grate_horizontal_retract,tag=marker_setup] unless block ~ ~ ~ target[power=0] run function matcha:abbey/pull_horizontal_copper_eye_grate
advancement revoke @a only matcha:mechanics/hit_copper_eye