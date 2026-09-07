execute if score @s sneaking > 0 sneaking run particle minecraft:gust ~ ~0.1 ~ 0.1 0 0.1 0 1
execute if score @s sneaking >= 45 sneaking run particle minecraft:poof ~ ~ ~ .1 .1 .1 .5 50
execute if score @s sneaking >= 45 sneaking run effect give @s minecraft:levitation 1 12
execute if score @s sneaking > 0 sneaking run playsound minecraft:entity.wind_charge.wind_burst player @s ~ ~ ~ 0.5
scoreboard players set @s sneaking 0