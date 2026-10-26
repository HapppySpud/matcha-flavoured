data modify storage matcha:pet_whistle check_UUIDs set from storage matcha:pet_whistle whistle_UUIDs

execute unless data storage matcha:pet_whistle check_UUIDs[0] run return 1
execute unless function matcha:mechanics/pet_whistle/try_set run return fail
data remove storage matcha:pet_whistle check_UUIDs[0]

execute unless data storage matcha:pet_whistle check_UUIDs[0] run return 1
execute unless function matcha:mechanics/pet_whistle/try_set run return fail
data remove storage matcha:pet_whistle check_UUIDs[0]

execute unless data storage matcha:pet_whistle check_UUIDs[0] run return 1
execute unless function matcha:mechanics/pet_whistle/try_set run return fail
data remove storage matcha:pet_whistle check_UUIDs[0]

execute unless data storage matcha:pet_whistle check_UUIDs[0] run return 1
execute unless function matcha:mechanics/pet_whistle/try_set run return fail
data remove storage matcha:pet_whistle check_UUIDs[0]

execute unless data storage matcha:pet_whistle check_UUIDs[0] run return 1
execute unless function matcha:mechanics/pet_whistle/try_set run return fail
return 1