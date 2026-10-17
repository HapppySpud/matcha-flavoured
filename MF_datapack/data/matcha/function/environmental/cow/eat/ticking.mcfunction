#Decrement 1
scoreboard players remove @e[tag=playing_eating_animation] matcha.eating_animation 1
execute as @e[tag=playing_eating_animation] at @s run function matcha:environmental/cow/eat/animation_controller
execute if entity @e[tag=playing_eating_animation] run schedule function matcha:environmental/cow/eat/ticking 1t