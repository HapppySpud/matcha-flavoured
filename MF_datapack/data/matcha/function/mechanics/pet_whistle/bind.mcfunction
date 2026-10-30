advancement revoke @s only matcha:mechanics/pet_whistle_bind
execute unless predicate matcha:items/is_pet_whistle run return fail

# Ensure whistle has an id
execute unless data entity @s SelectedItem.components.minecraft:custom_data.whistleId run function matcha:mechanics/pet_whistle/assign_whistle_id

# Unbind if sneaking
execute if predicate matcha:flags/is_sneaking anchored eyes positioned ^ ^ ^1.5 run return run function matcha:mechanics/pet_whistle/unbind

# Check ownership
execute anchored eyes positioned ^ ^ ^1.5 if function matcha:mechanics/pet_whistle/check_ownership run return run function matcha:mechanics/pet_whistle/bind_fail_not_owner
data remove storage matcha:pet_whistle owner_UUID

# Add tag
execute anchored eyes positioned ^ ^ ^1.5 unless function matcha:mechanics/pet_whistle/try_add_tag run return run function matcha:mechanics/pet_whistle/already_bound

execute anchored eyes positioned ^ ^ ^1.5 run tellraw @s {"translate": "log.kleispack.pet_whistle.bind_success", "color": "green", "with": [{"selector": "@n[type=#matcha:pet_whistle_summons]"}]}
playsound minecraft:block.amethyst_cluster.break neutral @s ~ ~ ~ 0.7