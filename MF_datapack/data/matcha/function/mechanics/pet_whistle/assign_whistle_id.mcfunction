execute store result storage matcha:pet_whistle whistleId int 1 run scoreboard players get whistleId whistleId
item modify entity @s weapon.mainhand {"type": "copy_custom_data", "source": {"type": "storage", "source": "matcha:pet_whistle"}, "ops": [{"source": "whistleId", "target": "whistleId", "op": "replace"}]}
scoreboard players add whistleId whistleId 1