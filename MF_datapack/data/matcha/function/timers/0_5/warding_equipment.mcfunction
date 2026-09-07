# Apply held item warding effect for 0.5s timer

#The electrum armour scores are there as to not let both warding_equipment and electrum_armour run at the same time, it chooses the highest score and prefers electrum
execute as @a[scores={warding_equipment=3}] unless entity @s[scores={electrum_armour=3..}] at @s run function matcha:enchantment_effects/warding_3
execute as @a[scores={warding_equipment=4..}] unless entity @s[scores={electrum_armour=3..}] at @s run function matcha:enchantment_effects/warding_3
# Warding level 4 is currently unused by warding equipment. The Level 4 bonus is only used by Electrum set bonus. HOWEVER
# I left in a warding_4 enchantment level, for future use? Or maybe just for reference. 
# A combination of items can lead to a score of > 3 therefore, if the score is >= 4, run level 3