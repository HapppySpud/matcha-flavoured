tellraw @s {"translate": "log.kleispack.pet_whistle.bind_fail_not_owner", "color": "red", "with": [{"selector": "@n[type=#matcha:pet_whistle_summons]"}]}
playsound minecraft:item.bone_meal.use neutral @s ~ ~ ~
data remove storage matcha:pet_whistle owner_UUID