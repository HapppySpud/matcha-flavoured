# Checks if a mob spawn is exposed to the sky OR if it is above sea level. So NO mobs will spawn above sea level, or if exposed to the sky.
execute at @s run execute if dimension minecraft:overworld run execute if predicate matcha:surface_spawn run tag @s add SpawnForbidden
# I dont think Camel Jockeys spawn underground, but just in-case, ill remove them
execute at @s run execute if dimension minecraft:overworld run execute if predicate matcha:mob_checks/is_husk if predicate matcha:riding_camel_husk run function matcha:mechanic/spawn_mechanic/remove_camel_husk_jockey
execute at @s run execute if dimension minecraft:overworld run execute if predicate matcha:drowned_surface_spawn run tag @s add SpawnForbidden
execute as @s[tag=SpawnForbidden] run tp @s ~ ~-1000 ~
execute as @s[tag=SpawnForbidden] run kill @s
execute as @s run execute if entity @s[tag=!SpawnForbidden] run function matcha:mechanic/spawn_mechanic/modify_mob
tag @s add SpawnChecked