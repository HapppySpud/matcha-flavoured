execute unless function matcha:mechanics/dog_whistle/try_unbind run return fail
item modify entity @s weapon.mainhand {"type": "copy_custom_data", "source": {"type": "storage", "source": "matcha:dog_whistle"}, "ops": [{"source": "whistle_UUIDs", "target": "UUIDs", "op": "replace"}]}
tellraw @s {"translate": "log.kleispack.dog_whistle.unbind_success", "color": "green"}

# Clear storage
data remove storage matcha:dog_whistle whistle_UUIDs
data remove storage matcha:dog_whistle check_UUIDs
data remove storage matcha:dog_whistle UUID