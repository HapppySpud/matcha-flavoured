#Does not run in creative, because it can cause an infinite loop
advancement revoke @s only matcha:remove_vanilla_items/apple
execute if entity @p[gamemode=!creative] run clear @s minecraft:apple[minecraft:lore=[]] 1
execute if entity @p[gamemode=!creative] run loot give @s loot matcha:food/apple