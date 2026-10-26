setblock ~ ~-0.5 ~ minecraft:dirt_path
fill ~ ~.5 ~ ~ ~.5 ~ minecraft:short_dry_grass

#Summon baby Bobwhite chicks
execute if predicate matcha:mob_checks/is_bobwhite run summon chicken ~ ~ ~ {Age:-24000,variant:"matcha:bobwhite"}
execute if predicate matcha:mob_checks/is_bobwhite run summon chicken ~ ~ ~ {Age:-24000,variant:"matcha:bobwhite"}

#Summon baby Temperate chicks
execute if predicate matcha:mob_checks/is_temperate_chicken run summon chicken ~ ~ ~ {Age:-24000,variant:"minecraft:temperate"}
execute if predicate matcha:mob_checks/is_temperate_chicken run summon chicken ~ ~ ~ {Age:-24000,variant:"minecraft:temperate"}

#Summon baby Cold chicks
execute if predicate matcha:mob_checks/is_cold_chicken run summon chicken ~ ~ ~ {Age:-24000,variant:"minecraft:cold"}
execute if predicate matcha:mob_checks/is_cold_chicken run summon chicken ~ ~ ~ {Age:-24000,variant:"minecraft:cold"}

#Summon baby Warm chicks
execute if predicate matcha:mob_checks/is_warm_chicken run summon chicken ~ ~ ~ {Age:-24000,variant:"minecraft:warm"}
execute if predicate matcha:mob_checks/is_warm_chicken run summon chicken ~ ~ ~ {Age:-24000,variant:"minecraft:warm"}

# Seagulls DO NOT use this function bc they make a different kind of nest