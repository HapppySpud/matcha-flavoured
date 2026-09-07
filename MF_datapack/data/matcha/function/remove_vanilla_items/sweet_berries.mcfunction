#Does not run in creative, because it can cause an infinite loop
advancement revoke @s only matcha:remove_vanilla_items/sweet_berries
execute if entity @p[gamemode=!creative] run clear @s minecraft:sweet_berries[minecraft:lore=[]] 1
execute if entity @p[gamemode=!creative] run loot give @s loot matcha:food/sweet_berries