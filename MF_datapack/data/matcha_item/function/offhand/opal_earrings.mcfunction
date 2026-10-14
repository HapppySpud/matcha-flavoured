data modify storage matcha_item:enchants held set from entity @s equipment.offhand.components.minecraft:enchantments
# processing enchantment matcha:conduit_power / conduit_power 
execute store result score enchants_lvl_conduit_power item_updater run data get storage matcha_item:enchants held.'matcha:conduit_power'
execute unless score enchants_lvl_conduit_power item_updater matches 1.. run data modify storage matcha_item:enchants held merge value {'matcha:conduit_power': 1}
item modify entity @s weapon.offhand matcha_item:modify/opal_earrings
function matcha_item:enchants/offhand with storage matcha_item:enchants