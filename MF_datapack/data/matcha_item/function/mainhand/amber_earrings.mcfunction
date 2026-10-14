data modify storage matcha_item:enchants held set from entity @s SelectedItem.components.minecraft:enchantments
# processing enchantment matcha:regeneration / regeneration 
execute store result score enchants_lvl_regeneration item_updater run data get storage matcha_item:enchants held.'matcha:regeneration'
execute unless score enchants_lvl_regeneration item_updater matches 1.. run data modify storage matcha_item:enchants held merge value {'matcha:regeneration': 1}
item modify entity @s weapon.mainhand matcha_item:modify/amber_earrings
function matcha_item:enchants/mainhand with storage matcha_item:enchants