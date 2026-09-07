#Does not run in creative, because it can cause an infinite loop
advancement revoke @s only matcha:update_old_items/divine_comedy
execute if entity @p[gamemode=!creative] run clear @s minecraft:book[minecraft:item_model="minecraft:divine_comedy"] 1
execute if entity @p[gamemode=!creative] run loot give @s loot matcha:treasure/divine_comedy