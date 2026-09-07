execute as @e[type=minecraft:armor_stand,tag=WardingStoneSetup] run execute at @s if predicate matcha:in_dungeon run setblock ~ ~ ~ air
execute as @e[type=minecraft:armor_stand,tag=WardingStoneSetup] run execute at @s if predicate matcha:in_dungeon run summon tnt ~ ~ ~ {fuse:0}
execute as @e[type=minecraft:armor_stand,tag=WardingStoneSetup] run execute at @s if predicate matcha:in_dungeon run particle minecraft:sculk_soul ~ ~ ~ .1 .1 .1 .5 100
advancement revoke @a only matcha:mechanics/enter_dungeon