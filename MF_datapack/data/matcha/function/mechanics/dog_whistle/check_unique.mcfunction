data modify storage matcha:dog_whistle check_UUIDs set from storage matcha:dog_whistle whistle_UUIDs

execute unless data storage matcha:dog_whistle check_UUIDs[0] run return 1
execute unless function matcha:mechanics/dog_whistle/try_set run return fail
data remove storage matcha:dog_whistle check_UUIDs[0]

execute unless data storage matcha:dog_whistle check_UUIDs[0] run return 1
execute unless function matcha:mechanics/dog_whistle/try_set run return fail
data remove storage matcha:dog_whistle check_UUIDs[0]

execute unless data storage matcha:dog_whistle check_UUIDs[0] run return 1
execute unless function matcha:mechanics/dog_whistle/try_set run return fail
data remove storage matcha:dog_whistle check_UUIDs[0]

execute unless data storage matcha:dog_whistle check_UUIDs[0] run return 1
execute unless function matcha:mechanics/dog_whistle/try_set run return fail
data remove storage matcha:dog_whistle check_UUIDs[0]

execute unless data storage matcha:dog_whistle check_UUIDs[0] run return 1
execute unless function matcha:mechanics/dog_whistle/try_set run return fail
return 1