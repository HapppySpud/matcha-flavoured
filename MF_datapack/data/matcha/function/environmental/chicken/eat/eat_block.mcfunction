setblock ~ ~0.5 ~ air

# Remove any personality tags they could have had and add nest_maker
tag @s remove mama
tag @s remove curious
tag @s add nest_maker

# If turned into a nest maker by wheat, we want them to nest quickly
execute store result score @s matcha.chicken_nesting_countdown run random value 10..30