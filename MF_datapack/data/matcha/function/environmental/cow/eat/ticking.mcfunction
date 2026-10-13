#Decrement 1
scoreboard players remove @e[tag=playing_digging_animation] matcha.digging_animation 1
execute as @e[tag=playing_digging_animation] at @s run function matcha:environmental/cow/eat/animation_controller
execute if entity @e[tag=playing_digging_animation] run schedule function matcha:environmental/cow/eat/ticking 1t