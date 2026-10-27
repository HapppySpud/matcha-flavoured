execute anchored eyes positioned ^ ^ ^1.5 as @n[type=#matcha:pet_whistle_summons] if data entity @s Tame unless data entity @s Owner run return 1
execute anchored eyes positioned ^ ^ ^1.5 run data modify storage matcha:pet_whistle owner_UUID set from entity @n[type=#matcha:pet_whistle_summons] Owner
return run data modify storage matcha:pet_whistle owner_UUID set from entity @s UUID