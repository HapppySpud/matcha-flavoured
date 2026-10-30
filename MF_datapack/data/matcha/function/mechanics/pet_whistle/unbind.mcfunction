execute unless function matcha:mechanics/pet_whistle/try_remove_tag run return run function matcha:mechanics/pet_whistle/not_bound
tellraw @s {"translate": "log.kleispack.pet_whistle.unbind_success", "color": "green", "with": [{"selector": "@n[type=#matcha:pet_whistle_summons]"}]}
playsound minecraft:item.shears.snip neutral @s ~ ~ ~ 0.7