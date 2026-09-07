advancement revoke @s only matcha:mechanics/intrinsic_enchants_obtained

data modify storage minecraft:intrinsic_enchants item set from entity @s Inventory[{components: {"minecraft:custom_data": {"has_intrinsic_enchants": 1b}}}]

data modify storage minecraft:intrinsic_enchants slot set from storage minecraft:intrinsic_enchants item.Slot
data modify storage minecraft:intrinsic_enchants enchantments set value {}
data modify storage minecraft:intrinsic_enchants enchantments merge from storage minecraft:intrinsic_enchants item.components.minecraft:enchantments

function matcha:mechanic/intrinsic_enchants/select_higher_level {"enchantment_id": "matcha:adamant_armour"}
function matcha:mechanic/intrinsic_enchants/select_higher_level {"enchantment_id": "matcha:adamant_tool"}
function matcha:mechanic/intrinsic_enchants/select_higher_level {"enchantment_id": "matcha:anemos"}
function matcha:mechanic/intrinsic_enchants/select_higher_level {"enchantment_id": "matcha:adamant_weapon"}
function matcha:mechanic/intrinsic_enchants/select_higher_level {"enchantment_id": "matcha:bloodrage"}
function matcha:mechanic/intrinsic_enchants/select_higher_level {"enchantment_id": "matcha:cleanse_armor_chest"}
function matcha:mechanic/intrinsic_enchants/select_higher_level {"enchantment_id": "matcha:cleanse_armor_feet"}
function matcha:mechanic/intrinsic_enchants/select_higher_level {"enchantment_id": "matcha:cleanse_armor_head"}
function matcha:mechanic/intrinsic_enchants/select_higher_level {"enchantment_id": "matcha:cleanse_armor_legs"}
function matcha:mechanic/intrinsic_enchants/select_higher_level {"enchantment_id": "matcha:cleanse_armor_maleffect"}
function matcha:mechanic/intrinsic_enchants/select_higher_level {"enchantment_id": "matcha:conduit_power"}
function matcha:mechanic/intrinsic_enchants/select_higher_level {"enchantment_id": "matcha:divinity"}
function matcha:mechanic/intrinsic_enchants/select_higher_level {"enchantment_id": "matcha:fire_proof"}
function matcha:mechanic/intrinsic_enchants/select_higher_level {"enchantment_id": "matcha:freezing_protection"}
function matcha:mechanic/intrinsic_enchants/select_higher_level {"enchantment_id": "matcha:haste"}
function matcha:mechanic/intrinsic_enchants/select_higher_level {"enchantment_id": "matcha:magic_protection"}
function matcha:mechanic/intrinsic_enchants/select_higher_level {"enchantment_id": "matcha:max_magic_protection"}
function matcha:mechanic/intrinsic_enchants/select_higher_level {"enchantment_id": "matcha:reach"}
function matcha:mechanic/intrinsic_enchants/select_higher_level {"enchantment_id": "matcha:regeneration"}
function matcha:mechanic/intrinsic_enchants/select_higher_level {"enchantment_id": "matcha:riposte"}
function matcha:mechanic/intrinsic_enchants/select_higher_level {"enchantment_id": "matcha:sanguine"}
function matcha:mechanic/intrinsic_enchants/select_higher_level {"enchantment_id": "matcha:shakudo_regen"}
function matcha:mechanic/intrinsic_enchants/select_higher_level {"enchantment_id": "matcha:slaughter"}
function matcha:mechanic/intrinsic_enchants/select_higher_level {"enchantment_id": "matcha:traversal"}
function matcha:mechanic/intrinsic_enchants/select_higher_level {"enchantment_id": "matcha:warding_1"}
function matcha:mechanic/intrinsic_enchants/select_higher_level {"enchantment_id": "matcha:warding_2"}
function matcha:mechanic/intrinsic_enchants/select_higher_level {"enchantment_id": "matcha:warding_3"}
function matcha:mechanic/intrinsic_enchants/select_higher_level {"enchantment_id": "matcha:warding_4"}
function matcha:mechanic/intrinsic_enchants/select_higher_level {"enchantment_id": "matcha:electrum_armour"}
function matcha:mechanic/intrinsic_enchants/select_higher_level {"enchantment_id": "matcha:electrum_tool"}
function matcha:mechanic/intrinsic_enchants/select_higher_level {"enchantment_id": "matcha:zephyr"}
function matcha:mechanic/intrinsic_enchants/select_higher_level {"enchantment_id": "minecraft:aqua_affinity"}
function matcha:mechanic/intrinsic_enchants/select_higher_level {"enchantment_id": "minecraft:bane_of_arthropods"}
function matcha:mechanic/intrinsic_enchants/select_higher_level {"enchantment_id": "minecraft:binding_curse"}
function matcha:mechanic/intrinsic_enchants/select_higher_level {"enchantment_id": "minecraft:blast_protection"}
function matcha:mechanic/intrinsic_enchants/select_higher_level {"enchantment_id": "minecraft:breach"}
function matcha:mechanic/intrinsic_enchants/select_higher_level {"enchantment_id": "minecraft:channeling"}
function matcha:mechanic/intrinsic_enchants/select_higher_level {"enchantment_id": "minecraft:density"}
function matcha:mechanic/intrinsic_enchants/select_higher_level {"enchantment_id": "minecraft:depth_strider"}
function matcha:mechanic/intrinsic_enchants/select_higher_level {"enchantment_id": "minecraft:efficiency"}
function matcha:mechanic/intrinsic_enchants/select_higher_level {"enchantment_id": "minecraft:feather_falling"}
function matcha:mechanic/intrinsic_enchants/select_higher_level {"enchantment_id": "minecraft:fire_aspect"}
function matcha:mechanic/intrinsic_enchants/select_higher_level {"enchantment_id": "minecraft:fire_protection"}
function matcha:mechanic/intrinsic_enchants/select_higher_level {"enchantment_id": "minecraft:flame"}
function matcha:mechanic/intrinsic_enchants/select_higher_level {"enchantment_id": "minecraft:fortune"}
function matcha:mechanic/intrinsic_enchants/select_higher_level {"enchantment_id": "minecraft:frost_walker"}
function matcha:mechanic/intrinsic_enchants/select_higher_level {"enchantment_id": "minecraft:impaling"}
function matcha:mechanic/intrinsic_enchants/select_higher_level {"enchantment_id": "minecraft:infinity"}
function matcha:mechanic/intrinsic_enchants/select_higher_level {"enchantment_id": "minecraft:knockback"}
function matcha:mechanic/intrinsic_enchants/select_higher_level {"enchantment_id": "minecraft:looting"}
function matcha:mechanic/intrinsic_enchants/select_higher_level {"enchantment_id": "minecraft:loyalty"}
function matcha:mechanic/intrinsic_enchants/select_higher_level {"enchantment_id": "minecraft:luck_of_the_sea"}
function matcha:mechanic/intrinsic_enchants/select_higher_level {"enchantment_id": "minecraft:lunge"}
function matcha:mechanic/intrinsic_enchants/select_higher_level {"enchantment_id": "minecraft:lure"}
function matcha:mechanic/intrinsic_enchants/select_higher_level {"enchantment_id": "minecraft:mending"}
function matcha:mechanic/intrinsic_enchants/select_higher_level {"enchantment_id": "minecraft:multishot"}
function matcha:mechanic/intrinsic_enchants/select_higher_level {"enchantment_id": "minecraft:piercing"}
function matcha:mechanic/intrinsic_enchants/select_higher_level {"enchantment_id": "minecraft:power"}
function matcha:mechanic/intrinsic_enchants/select_higher_level {"enchantment_id": "minecraft:projectile_protection"}
function matcha:mechanic/intrinsic_enchants/select_higher_level {"enchantment_id": "minecraft:protection"}
function matcha:mechanic/intrinsic_enchants/select_higher_level {"enchantment_id": "minecraft:punch"}
function matcha:mechanic/intrinsic_enchants/select_higher_level {"enchantment_id": "minecraft:quick_charge"}
function matcha:mechanic/intrinsic_enchants/select_higher_level {"enchantment_id": "minecraft:respiration"}
function matcha:mechanic/intrinsic_enchants/select_higher_level {"enchantment_id": "minecraft:riptide"}
function matcha:mechanic/intrinsic_enchants/select_higher_level {"enchantment_id": "minecraft:sharpness"}
function matcha:mechanic/intrinsic_enchants/select_higher_level {"enchantment_id": "minecraft:silk_touch"}
function matcha:mechanic/intrinsic_enchants/select_higher_level {"enchantment_id": "minecraft:smite"}
function matcha:mechanic/intrinsic_enchants/select_higher_level {"enchantment_id": "minecraft:soul_speed"}
function matcha:mechanic/intrinsic_enchants/select_higher_level {"enchantment_id": "minecraft:sweeping_edge"}
function matcha:mechanic/intrinsic_enchants/select_higher_level {"enchantment_id": "minecraft:swift_sneak"}
function matcha:mechanic/intrinsic_enchants/select_higher_level {"enchantment_id": "minecraft:thorns"}
function matcha:mechanic/intrinsic_enchants/select_higher_level {"enchantment_id": "minecraft:unbreaking"}
function matcha:mechanic/intrinsic_enchants/select_higher_level {"enchantment_id": "minecraft:vanishing_curse"}
function matcha:mechanic/intrinsic_enchants/select_higher_level {"enchantment_id": "minecraft:wind_burst"}

scoreboard players reset current intrinsic_enchants_levels
scoreboard players reset intrinsic intrinsic_enchants_levels
data remove storage minecraft:intrinsic_enchants item

function matcha:mechanic/intrinsic_enchants/apply_intrinsic_enchants with storage minecraft:intrinsic_enchants