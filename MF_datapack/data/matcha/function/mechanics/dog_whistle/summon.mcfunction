tellraw @a {"translate": "log.kleispack.dog_whistle.summon"}

data modify storage matcha:dog_whistle UUIDs.UUID0 set from entity @s SelectedItem.components.minecraft:custom_data.UUIDs[0]
data modify storage matcha:dog_whistle UUIDs.UUID1 set from entity @s SelectedItem.components.minecraft:custom_data.UUIDs[1]
data modify storage matcha:dog_whistle UUIDs.UUID2 set from entity @s SelectedItem.components.minecraft:custom_data.UUIDs[2]
data modify storage matcha:dog_whistle UUIDs.UUID3 set from entity @s SelectedItem.components.minecraft:custom_data.UUIDs[3]
data modify storage matcha:dog_whistle UUIDs.UUID4 set from entity @s SelectedItem.components.minecraft:custom_data.UUIDs[4]

function matcha:mechanics/dog_whistle/tp_from_uuids with storage matcha:dog_whistle UUIDs
data remove storage matcha:dog_whistle UUIDs