execute if block ~ ~-1 ~ minecraft:grass_block run tag @s add pecking_grasses
#I thought maybe the retuning early would make this function cheaper, I don't know how expensive checking block states is
execute if entity @s[tag=pecking_grasses] run return fail
execute if block ~ ~-1 ~ #matcha:animal_affects/dirts run tag @s add pecking_dirts
execute if entity @s[tag=pecking_dirts] run return fail
execute if block ~ ~-1 ~ #matcha:animal_affects/mycelia run tag @s add pecking_mycelia
execute if entity @s[tag=pecking_mycelia] run return fail
execute if block ~ ~-1 ~ minecraft:sand run tag @s add pecking_sand
execute if entity @s[tag=pecking_sand] run return fail
execute if block ~ ~-1 ~ minecraft:red_sand run tag @s add pecking_red_sand