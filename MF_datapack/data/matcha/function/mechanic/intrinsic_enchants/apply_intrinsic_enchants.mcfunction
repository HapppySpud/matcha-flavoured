$item modify entity @s container.$(slot) [{"function": "set_components", "components": {"minecraft:enchantments": $(enchantments), "!minecraft:stored_enchantments": {}}}, {"function": "set_custom_data", "tag": {"has_intrinsic_enchants": 0b}}]

data remove storage minecraft:intrinsic_enchants slot
data remove storage minecraft:intrinsic_enchants enchantments

execute if items entity @s container.* *[minecraft:custom_data~{"has_intrinsic_enchants": 1b}] run function matcha:mechanic/intrinsic_enchants/process_intrinsic_enchants