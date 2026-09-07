# Apply armor pieces warding effect for 0.5s timer

#The warding_eq scores are there as to not let both warding_equipment and electrum_armour run at the same time, it chooses the highest score and prefers electrum
execute as @a[scores={electrum_armour=3}] at @s run function matcha:enchantment_effects/warding_3
execute as @a[scores={electrum_armour=4}] at @s run function matcha:enchantment_effects/warding_4