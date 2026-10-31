# Reset trigger
advancement revoke @s only matcha:mechanics/pet_whistle_bind
# Return if not holding whistle
execute unless predicate matcha:items/is_pet_whistle run return fail

# Ensure whistle has an id
execute unless data entity @s SelectedItem.components.minecraft:custom_data.whistleId run function matcha:mechanics/pet_whistle/assign_whistle_id

# Unbind if sneaking
execute if predicate matcha:flags/is_sneaking anchored eyes positioned ^ ^ ^1.5 run return run function matcha:mechanics/pet_whistle/unbind

# Check ownership
execute anchored eyes positioned ^ ^ ^1.5 if function matcha:mechanics/pet_whistle/check_ownership run return run function matcha:mechanics/pet_whistle/bind_fail_not_owner
data remove storage matcha:pet_whistle owner_UUID

# Add tag
execute anchored eyes positioned ^ ^ ^1.5 unless function matcha:mechanics/pet_whistle/try_add_tag run return run function matcha:mechanics/pet_whistle/already_bound

# Add Chunkloader
execute anchored eyes positioned ^ ^ ^1.5 run execute as @n run function matcha:mechanics/pet_whistle/add_chunkloader
# If success
# execute anchored eyes positioned ^ ^ ^1.5 run tellraw @s {"translate": "log.kleispack.pet_whistle.bind_success", "color": "green", "with": [{"selector": "@n[type=#matcha:pet_whistle_summons]"}]}
# playsound minecraft:block.amethyst_cluster.break neutral @s ~ ~ ~ 0.7
execute anchored eyes positioned ^ ^ ^1.5 run execute at @n run particle note ~ ~1 ~ 0 0 0 0 1
playsound minecraft:block.note_block.flute player @s ~ ~ ~ 1 1