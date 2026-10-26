schedule function matcha:mechanics/pet_whistle/revoke_summon_advancement 5s
execute unless predicate matcha:items/is_pet_whistle run return fail

execute at @s run function matcha:mechanics/pet_whistle/summon_from_tag with entity @s SelectedItem.components.minecraft:custom_data
tellraw @a {"translate": "log.kleispack.pet_whistle.summon"}