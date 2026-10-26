# Reset trigger
advancement revoke @s only matcha:mechanics/amnestic/pet
execute unless predicate matcha:items/is_amnestic run return fail
execute if function matcha:mechanics/amnestic/check_pet_ownership run return run data remove storage matcha:amnestic_pets owner_UUID
data remove storage matcha:amnestic_pets owner_UUID

# Run amnestic effects on (approximately) the pet that was clicked with the amnestic
execute anchored eyes positioned ^ ^ ^1.5 as @n[type=#matcha:amnestic_pets] run function matcha:mechanics/amnestic/pet_consumed

# Remove one amnestic
execute unless entity @s[gamemode=creative] run clear @s *[minecraft:item_model="matcha:amnestic_wrapped"] 1