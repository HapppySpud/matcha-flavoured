#Decrement 1
scoreboard players remove @e[tag=playing_nesting_animation] matcha.nesting_animation 1
execute as @e[tag=playing_nesting_animation] at @s run function matcha:environmental/chicken/nest/animation_controller
execute if entity @e[tag=playing_nesting_animation] run schedule function matcha:environmental/chicken/nest/ticking 1t