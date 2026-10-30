# Check whether pet's Owner tag matches the player's UUID
execute as @n[type=#matcha:amnestic_pets] if data entity @s Tame unless data entity @s Owner run return 1
execute as @n[type=#matcha:amnestic_pets] run data modify storage matcha:amnestic_pets owner_UUID set from entity @n[type=#matcha:amnestic_pets] Owner
return run data modify storage matcha:amnestic_pets owner_UUID set from entity @s UUID