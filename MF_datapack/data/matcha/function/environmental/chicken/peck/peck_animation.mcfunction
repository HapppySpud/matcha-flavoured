execute if entity @s[tag=pecking_grasses] run particle block{block_state:"minecraft:short_grass"} ^ ^ ^0.5 .1 .1 .1 0.1 5 normal
execute if entity @s[tag=pecking_dirts] run particle block{block_state:"minecraft:dirt"} ^ ^ ^0.5 .1 .1 .1 0.1 5 normal
execute if entity @s[tag=pecking_mycelia] run particle block{block_state:"minecraft:mycelium"} ^ ^ ^0.5 .1 .1 .1 0.1 5 normal
execute if entity @s[tag=pecking_sand] run particle block{block_state:"minecraft:sand"} ^ ^ ^0.5 .1 .1 .1 0.1 5 normal
execute if entity @s[tag=pecking_red_sand] run particle block{block_state:"minecraft:red_sand"} ^ ^ ^0.5 .1 .1 .1 0.1 5 normal
tp @s ~ ~.05 ~
# Teleport them up a bit so that their wings flap
execute if entity @s[tag=pecking_grasses] run playsound minecraft:block.crop.break neutral @a
execute if entity @s[tag=pecking_dirts] run playsound minecraft:block.crop.break neutral @a
execute if entity @s[tag=pecking_mycelia] run playsound minecraft:block.crop.break neutral @a
execute if entity @s[tag=pecking_sand] run playsound minecraft:block.sand.hit neutral @a
execute if entity @s[tag=pecking_red_sand] run playsound minecraft:block.sand.hit neutral @a