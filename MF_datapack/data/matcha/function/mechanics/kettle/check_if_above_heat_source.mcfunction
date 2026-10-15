execute at @s if block ~ ~-1 ~ #matcha:is_kettle_heat_source run data merge block ~ ~ ~ {Fuel:20,total_fuel:20}
#Can you change just the blockstate with data merge? I dont think you can but if you can figure it out, please do 
# execute at @s if block ~ ~-1 ~ minecraft:furnace run setblock ~ ~-1 ~ furnace[lit=true] replace