# Apply held warding effect for 1s timer

#The electrum armour scores are there as to not let both warding_equipment and electrum_armour run at the same time, it chooses the highest score and prefers electrum
execute as @a[scores={warding_equipment=1}] unless entity @s[scores={electrum_armour=1..}] at @s run function matcha:enchantment_effects/warding_1
execute as @a[scores={warding_equipment=2}] unless entity @s[scores={electrum_armour=2..}] at @s run function matcha:enchantment_effects/warding_2
