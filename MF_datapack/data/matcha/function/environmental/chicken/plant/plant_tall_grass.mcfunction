particle minecraft:happy_villager ~ ~ ~ .3 .1 .3 0 5
execute if block ~ ~-0.5 ~ minecraft:farmland run \
    execute if block ~ ~0.5 ~ minecraft:air run \
    setblock ~ ~-0.5 ~ dirt
setblock ~ ~0.5 ~ minecraft:tall_grass[half=lower]
setblock ~ ~1.5 ~ minecraft:tall_grass[half=upper]