#Does not run in creative, because it can cause an infinite loop
say running
advancement revoke @s only matcha:remove_vanilla_items/turtle_scute
execute if entity @p[gamemode=!creative] run clear @s minecraft:turtle_scute[minecraft:rarity="common"] 1
execute if entity @p[gamemode=!creative] run give @s turtle_helmet