#No Armour & Weapon Drops
execute as @s if predicate matcha:mob_checks/is_mundane_hostiles run function matcha:mechanic/spawn_mechanic/clear_drop_chances
#Weak Skeletons
execute as @s if predicate matcha:mob_checks/is_skeletons run function matcha:mechanic/spawn_mechanic/easy_modifications/modify_skeletons
#Weak Creepers
execute as @s if predicate matcha:mob_checks/is_creeper run function matcha:mechanic/spawn_mechanic/easy_modifications/modify_creeper
#Weak but Fast Cavespiders
execute as @s if predicate matcha:mob_checks/is_cave_spider run function matcha:mechanic/spawn_mechanic/easy_modifications/modify_cave_spider
# Baby Zombies
execute as @s if predicate matcha:mob_checks/is_zombies if predicate matcha:mob_checks/is_baby run function matcha:mechanic/spawn_mechanic/normal_and_easy_modifications/modify_baby_zombies
#Weak Silverfish
execute as @s if predicate matcha:mob_checks/is_silverfish run function matcha:mechanic/spawn_mechanic/normal_and_easy_modifications/modify_silverfish
