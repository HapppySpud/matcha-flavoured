# Save data to storage
data modify storage matcha:dog_whistle whistle_UUIDs set from entity @s SelectedItem.components.minecraft:custom_data.UUIDs
data modify storage matcha:dog_whistle UUID set from entity @n[type=minecraft:wolf,distance=..8] UUID

# Find in saved UUIDs
data modify storage matcha:dog_whistle check_UUIDs set from storage matcha:dog_whistle whistle_UUIDs

execute unless data storage matcha:dog_whistle check_UUIDs[0] run return run function matcha:mechanics/dog_whistle/unbind_fail_not_found
execute unless function matcha:mechanics/dog_whistle/try_set run return run data remove storage matcha:dog_whistle whistle_UUIDs[0]
data remove storage matcha:dog_whistle check_UUIDs[0]

execute unless data storage matcha:dog_whistle check_UUIDs[0] run return run function matcha:mechanics/dog_whistle/unbind_fail_not_found
execute unless function matcha:mechanics/dog_whistle/try_set run return run data remove storage matcha:dog_whistle whistle_UUIDs[1]
data remove storage matcha:dog_whistle check_UUIDs[0]

execute unless data storage matcha:dog_whistle check_UUIDs[0] run return run function matcha:mechanics/dog_whistle/unbind_fail_not_found
execute unless function matcha:mechanics/dog_whistle/try_set run return run data remove storage matcha:dog_whistle whistle_UUIDs[2]
data remove storage matcha:dog_whistle check_UUIDs[0]

execute unless data storage matcha:dog_whistle check_UUIDs[0] run return run function matcha:mechanics/dog_whistle/unbind_fail_not_found
execute unless function matcha:mechanics/dog_whistle/try_set run return run data remove storage matcha:dog_whistle whistle_UUIDs[3]
data remove storage matcha:dog_whistle check_UUIDs[0]

execute unless data storage matcha:dog_whistle check_UUIDs[0] run return run function matcha:mechanics/dog_whistle/unbind_fail_not_found
execute unless function matcha:mechanics/dog_whistle/try_set run return run data remove storage matcha:dog_whistle whistle_UUIDs[4]
return run function matcha:mechanics/dog_whistle/unbind_fail_not_found