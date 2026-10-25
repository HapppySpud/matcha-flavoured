#Decrement 1
scoreboard players remove @e[tag=playing_pecking_animation] matcha.pecking_animation 1
execute as @e[tag=playing_pecking_animation] at @s run function matcha:environmental/chicken/peck/animation_controller
execute if entity @e[tag=playing_pecking_animation] run schedule function matcha:environmental/chicken/peck/ticking 1t