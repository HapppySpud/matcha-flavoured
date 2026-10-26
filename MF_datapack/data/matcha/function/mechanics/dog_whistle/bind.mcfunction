# Check in range
execute unless entity @n[type=#matcha:dog_whistle_summons, distance=..8] run return run function matcha:mechanics/dog_whistle/bind_fail_out_of_range

# Unbind if sneaking
execute if predicate matcha:flags/is_sneaking run return run function matcha:mechanics/dog_whistle/unbind

# Check ownership
data remove storage matcha:dog_whistle owner_UUID
execute if function matcha:mechanics/dog_whistle/check_ownership run return run function matcha:mechanics/dog_whistle/bind_fail_not_owner
data remove storage matcha:dog_whistle owner_UUID

# Save data to storage
data modify storage matcha:dog_whistle whistle_UUIDs set from entity @s SelectedItem.components.minecraft:custom_data.UUIDs
data modify storage matcha:dog_whistle UUID set from entity @n[type=minecraft:wolf] UUID

# Check not already bound
execute unless function matcha:mechanics/dog_whistle/check_unique run return run function matcha:mechanics/dog_whistle/bind_fail_not_unique
data remove storage matcha:dog_whistle check_UUIDs

execute if data storage matcha:dog_whistle whistle_UUIDs[4] run function matcha:mechanics/dog_whistle/bind_overwrite

# Add UUID to whistle
data modify storage matcha:dog_whistle whistle_UUIDs append from storage matcha:dog_whistle UUID
item modify entity @s weapon.mainhand {"type": "copy_custom_data", "source": {"type": "storage", "source": "matcha:dog_whistle"}, "ops": [{"source": "whistle_UUIDs", "target": "UUIDs", "op": "replace"}]}
tellraw @s {"translate": "log.kleispack.dog_whistle.bind_success", "color": "green"}

# Clear storage
data remove storage matcha:dog_whistle whistle_UUIDs
data remove storage matcha:dog_whistle UUID