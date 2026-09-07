#Does not run in creative, because it can cause an infinite loop
advancement revoke @s only matcha:update_old_items/tanakh
execute if entity @p[gamemode=!creative] run clear @s minecraft:book[minecraft:item_model="minecraft:tanakh"] 1
execute if entity @p[gamemode=!creative] run loot give @s loot matcha:treasure/tanakh