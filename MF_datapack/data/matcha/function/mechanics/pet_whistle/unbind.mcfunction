execute unless function matcha:mechanics/pet_whistle/try_unbind run return fail
item modify entity @s weapon.mainhand {"type": "copy_custom_data", "source": {"type": "storage", "source": "matcha:pet_whistle"}, "ops": [{"source": "whistle_UUIDs", "target": "UUIDs", "op": "replace"}]}
tellraw @s {"translate": "log.kleispack.pet_whistle.unbind_success", "color": "green"}

# Clear storage
data remove storage matcha:pet_whistle whistle_UUIDs
data remove storage matcha:pet_whistle check_UUIDs
data remove storage matcha:pet_whistle UUID