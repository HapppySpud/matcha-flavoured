advancement revoke @s only matcha:mechanics/place_water_in_nether

#There are multiple becuase near bedrock the fill command will FAIL if the area is outside of the world border
fill ~-20 ~-20 ~-20 ~20 ~20 ~20 air replace water
fill ~-10 ~-10 ~-10 ~10 ~10 ~10 air replace water
fill ~-5 ~-5 ~-5 ~5 ~5 ~5 air replace water
fill ~-2 ~-2 ~-2 ~2 ~2 ~2 air replace water
playsound minecraft:block.fire.extinguish block @s ~ ~ ~ 0.5 2
