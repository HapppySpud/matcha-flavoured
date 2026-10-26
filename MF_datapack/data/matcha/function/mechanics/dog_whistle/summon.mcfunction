schedule function matcha:mechanics/dog_whistle/revoke_summon_advancement 5s
tellraw @a {"translate": "log.kleispack.dog_whistle.summon"}

data modify storage matcha:dog_whistle whistle_UUIDs set from entity @s SelectedItem.components.minecraft:custom_data.UUIDs
data modify storage matcha:dog_whistle UUIDs.UUID0 set from storage matcha:dog_whistle whistle_UUIDs[0]
data modify storage matcha:dog_whistle UUIDs.UUID1 set value 0
data modify storage matcha:dog_whistle UUIDs.UUID1 set from storage matcha:dog_whistle whistle_UUIDs[1]
data modify storage matcha:dog_whistle UUIDs.UUID2 set value 0
data modify storage matcha:dog_whistle UUIDs.UUID2 set from storage matcha:dog_whistle whistle_UUIDs[2]
data modify storage matcha:dog_whistle UUIDs.UUID3 set value 0
data modify storage matcha:dog_whistle UUIDs.UUID3 set from storage matcha:dog_whistle whistle_UUIDs[3]
data modify storage matcha:dog_whistle UUIDs.UUID4 set value 0
data modify storage matcha:dog_whistle UUIDs.UUID4 set from storage matcha:dog_whistle whistle_UUIDs[4]
data remove storage matcha:dog_whistle whistle_UUIDs

execute at @s run function matcha:mechanics/dog_whistle/tp_from_uuids with storage matcha:dog_whistle UUIDs
data remove storage matcha:dog_whistle UUIDs