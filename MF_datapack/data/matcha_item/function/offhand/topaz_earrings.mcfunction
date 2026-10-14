data modify storage matcha_item:enchants held set from entity @s equipment.offhand.components.minecraft:enchantments
# processing enchantment matcha:haste / haste 
execute store result score enchants_lvl_haste item_updater run data get storage matcha_item:enchants held.'matcha:haste'
execute unless score enchants_lvl_haste item_updater matches 1.. run data modify storage matcha_item:enchants held merge value {'matcha:haste': 1}
item modify entity @s weapon.offhand matcha_item:modify/topaz_earrings
function matcha_item:enchants/offhand with storage matcha_item:enchants