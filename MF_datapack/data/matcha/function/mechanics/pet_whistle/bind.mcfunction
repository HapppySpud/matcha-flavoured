advancement revoke @s only matcha:mechanics/pet_whistle_bind
execute unless predicate matcha:items/is_pet_whistle run return fail

# Unbind if sneaking
execute if predicate matcha:flags/is_sneaking run return run function matcha:mechanics/pet_whistle/unbind

# Check ownership
execute if function matcha:mechanics/pet_whistle/check_ownership run return run function matcha:mechanics/pet_whistle/bind_fail_not_owner
data remove storage matcha:pet_whistle owner_UUID

# Save data to storage
data modify storage matcha:pet_whistle whistle_UUIDs set from entity @s SelectedItem.components.minecraft:custom_data.UUIDs
execute anchored eyes positioned ^ ^ ^1.5 run data modify storage matcha:pet_whistle UUID set from entity @n[type=#matcha:pet_whistle_summons] UUID

# Check not already bound
execute unless function matcha:mechanics/pet_whistle/check_unique run return run function matcha:mechanics/pet_whistle/bind_fail_not_unique
data remove storage matcha:pet_whistle check_UUIDs

execute if data storage matcha:pet_whistle whistle_UUIDs[4] run function matcha:mechanics/pet_whistle/bind_overwrite

# Add UUID to whistle
data modify storage matcha:pet_whistle whistle_UUIDs append from storage matcha:pet_whistle UUID
item modify entity @s weapon.mainhand {"type": "copy_custom_data", "source": {"type": "storage", "source": "matcha:pet_whistle"}, "ops": [{"source": "whistle_UUIDs", "target": "UUIDs", "op": "replace"}]}
tellraw @s {"translate": "log.kleispack.pet_whistle.bind_success", "color": "green"}

# Clear storage
data remove storage matcha:pet_whistle whistle_UUIDs
data remove storage matcha:pet_whistle UUID