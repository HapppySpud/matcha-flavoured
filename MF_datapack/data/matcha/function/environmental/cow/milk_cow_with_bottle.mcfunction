
# Add milking tag, so the current cow that is being milked, can be tracked easier
execute as @e[type=minecraft:cow,distance=..8] run execute if data entity @s {InLove:600} run tag @s add milking
execute as @n[type=minecraft:cow,distance=..8,tag=milking] run data merge entity @s {InLove:0}


# If the cow has no milk left, give them the glass bottle back, and make the cow angry!
execute if score @n[type=minecraft:cow,tag=milking] matcha.milk_reserve matches ..0 run damage @n[type=minecraft:cow,tag=milking] 0.1
execute if score @n[type=minecraft:cow,tag=milking] matcha.milk_reserve matches ..0 run execute at @n[type=minecraft:cow,tag=milking] run particle angry_villager ~ ~1 ~ .3 .1 .3 0.1 1 normal
execute if score @n[type=minecraft:cow,tag=milking] matcha.milk_reserve matches ..0 run give @s glass_bottle 1

# Give a milk bottle if the cow has milk in the reserve
execute if score @n[type=minecraft:cow,tag=milking] matcha.milk_reserve matches 1.. run loot give @s loot matcha:food/matcha/milk_bottle
execute if score @n[type=minecraft:cow,tag=milking] matcha.milk_reserve matches 1.. run playsound minecraft:item.bottle.fill player
execute if score @n[type=minecraft:cow,tag=milking] matcha.milk_reserve matches 1.. run scoreboard players remove @n[type=minecraft:cow,tag=milking] matcha.milk_reserve 1


tag @n[type=minecraft:cow,tag=milking] remove milking

advancement revoke @s only matcha:mechanics/cow/milk_cow_with_bottle