# Unbind whistle from pet
execute unless function matcha:mechanics/pet_whistle/try_remove_tag run return run function matcha:mechanics/pet_whistle/not_bound

# Remove Chunkloader
execute anchored eyes positioned ^ ^ ^1.5 run execute as @n run function matcha:mechanics/pet_whistle/remove_chunkloader
execute anchored eyes positioned ^ ^ ^1.5 run execute as @n run tag @s remove chunkloader


# If success
# tellraw @s {"translate": "log.kleispack.pet_whistle.unbind_success", "color": "green", "with": [{"selector": "@n[type=#matcha:pet_whistle_summons]"}]}
# playsound minecraft:item.shears.snip neutral @s ~ ~ ~ 0.7
execute anchored eyes positioned ^ ^ ^1.5 run execute at @n run particle smoke ~ ~1 ~ 0 0 0 0 1
playsound minecraft:block.note_block.didgeridoo player @s ~ ~ ~ 1 0.5
