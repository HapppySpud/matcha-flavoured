playsound block.stone.place block @s ^ ^ ^1 1
#I have to run the TP here, becuase otherwise the tick takes too long and never places the block
#If not in air (AKA placed on slab) then move it up one block
execute as @e[type=marker,tag=trough,tag=!placed] at @e[type=marker,tag=trough,tag=!placed] run execute unless block ~ ~ ~ air run tp @s ~ ~1 ~
execute as @e[type=marker,tag=trough,tag=!placed] at @e[type=marker,tag=trough,tag=!placed] run function matcha:environmental/cow/trough/check_trough_placement
advancement revoke @s only matcha:mechanics/trough/place_trough

#Debug
say Placed Trough