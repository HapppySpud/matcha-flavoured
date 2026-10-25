data remove storage matcha:dog_whistle owner_UUID
execute if function matcha:mechanics/dog_whistle/check_ownership run return fail
data modify storage matcha:dog_whistle whistle_UUIDs set from entity @s SelectedItem.components.custom_data.UUIDs
data modify storage matcha:dog_whistle whistle_UUIDs append from entity @n[type=minecraft:wolf] UUID
item modify entity @s weapon.mainhand {"type": "copy_custom_data", "source": {"type": "storage", "source": "matcha:dog_whistle"}, "ops": [{"source": "whistle_UUIDs", "target": "UUIDs", "op": "replace"}]}