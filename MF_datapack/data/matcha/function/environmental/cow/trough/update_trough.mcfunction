#If it is air, kill it and summon item
execute at @s if block ~ ~ ~ air run loot spawn ~ ~ ~ loot matcha:blocks/trough
execute at @s if block ~ ~ ~ air run kill @s