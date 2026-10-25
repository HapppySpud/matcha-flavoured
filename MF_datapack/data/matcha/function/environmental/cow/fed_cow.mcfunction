execute as @e[type=minecraft:cow,distance=..8] run execute if data entity @s {InLove:600} run tag @s add feeding
execute as @e[type=minecraft:cow,distance=..8,tag=feeding] run data merge entity @s {InLove:0}
execute as @e[type=minecraft:cow,distance=..8,tag=feeding] run scoreboard players remove @s matcha.cow_grazing_cooldown 60
playsound minecraft:entity.cow_moody.ambient neutral @a ~ ~ ~ .25
advancement revoke @s only matcha:mechanics/cow/fed_cow