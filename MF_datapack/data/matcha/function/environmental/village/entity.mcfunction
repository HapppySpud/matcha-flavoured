# This is run every tick by the village Entity closest to each player within a village

# If a Player gets too close, or doesn't come through the door, disappear
execute if entity @p[distance=..5,gamemode=survival] run return run tp @s ~ ~-1000 ~
execute at @n[type=marker,tag=jukebox] if entity @p[distance=..2,gamemode=survival] run return run tp @s ~ ~-1000 ~

# Turn to face the nearest Player
execute at @s anchored eyes run tp @s ~ ~ ~ facing entity @p eyes
