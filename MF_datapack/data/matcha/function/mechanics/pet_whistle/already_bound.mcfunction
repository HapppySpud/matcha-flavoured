# Runs if binding fails
# tellraw @s {"translate": "log.kleispack.pet_whistle.already_bound", "color": "red", "with": [{"selector": "@n[type=#matcha:pet_whistle_summons]"}]}
# playsound minecraft:item.bone_meal.use neutral @s ~ ~ ~
execute anchored eyes positioned ^ ^ ^1.5 run execute at @n run particle note ~ ~1 ~ 0 0 0 0 1
playsound minecraft:block.note_block.flute player @s ~ ~ ~ 1 0.5
