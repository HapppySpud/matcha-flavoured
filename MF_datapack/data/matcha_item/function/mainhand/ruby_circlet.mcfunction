data modify storage matcha_item:enchants held set from entity @s SelectedItem.components.minecraft:enchantments
# processing enchantment matcha:fire_proof / fire_proof 
execute store result score enchants_lvl_fire_proof item_updater run data get storage matcha_item:enchants held.'matcha:fire_proof'
execute unless score enchants_lvl_fire_proof item_updater matches 1.. run data modify storage matcha_item:enchants held merge value {'matcha:fire_proof': 1}
item modify entity @s weapon.mainhand matcha_item:modify/ruby_circlet
function matcha_item:enchants/mainhand with storage matcha_item:enchants