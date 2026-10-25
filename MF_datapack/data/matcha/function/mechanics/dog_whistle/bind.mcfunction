# Unbind if sneaking
execute if predicate matcha:flags/is_sneaking run return run function matcha:mechanics/dog_whistle/unbind

# Check ownership
data remove storage matcha:dog_whistle owner_UUID
execute if function matcha:mechanics/dog_whistle/check_ownership run return run function matcha:mechanics/dog_whistle/bind_fail

# Add UUID to item data
data modify storage matcha:dog_whistle whistle_UUIDs set from entity @s SelectedItem.components.custom_data.UUIDs
data modify storage matcha:dog_whistle whistle_UUIDs append from entity @n[type=minecraft:wolf] UUID
item modify entity @s weapon.mainhand {"type": "copy_custom_data", "source": {"type": "storage", "source": "matcha:dog_whistle"}, "ops": [{"source": "whistle_UUIDs", "target": "UUIDs", "op": "replace"}]}
tellraw @s {"translate": "log.kleispack.dog_whistle.bind_success", "color": "green"}

# Clear storage
data remove storage matcha:dog_whistle owner_UUID
data remove storage matcha:dog_whistle whistle_UUIDs