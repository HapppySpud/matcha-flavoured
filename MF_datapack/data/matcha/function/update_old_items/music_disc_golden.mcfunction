#Does not run in creative, because it can cause an infinite loop
advancement revoke @s only matcha:update_old_items/music_disc_golden
execute if entity @p[gamemode=!creative] run clear @s minecraft:music_disc_11[minecraft:item_model="minecraft:music_disc_golden"] 1
execute if entity @p[gamemode=!creative] run loot give @s loot matcha:music_disc/golden