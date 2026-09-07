execute at @s run particle minecraft:noxious_gas ~ ~.1 ~ .5 0 .5 0 1
execute at @s if block ~ ~-.1 ~ minecraft:nether_quartz_ore run schedule function matcha:particle/sulfurous_hellstone 3t
advancement revoke @s only matcha:particle/on_sulfur