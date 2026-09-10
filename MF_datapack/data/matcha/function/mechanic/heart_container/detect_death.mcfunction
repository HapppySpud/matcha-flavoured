# Make everyone who has more than 0 deaths score run the hpdown function
execute as @a if score @s deaths matches 1.. run function matcha:mechanic/heart_container/hpdown