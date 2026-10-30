# Runs if binding fails
tellraw @s {"translate": "log.kleispack.pet_whistle.already_bound", "color": "red", "with": [{"selector": "@n[type=#matcha:pet_whistle_summons]"}]}
playsound minecraft:item.bone_meal.use neutral @s ~ ~ ~