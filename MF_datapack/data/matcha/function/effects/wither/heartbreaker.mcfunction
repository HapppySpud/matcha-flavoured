# Decrement hearts, clear the wither effect and remove them from the scoreboard
effect clear @s wither
function matcha:mechanics/heart_container/hpdown
playsound minecraft:item.totem.use player @s ~ ~ ~ .25 0 0
damage @s 0.1
scoreboard players reset @s wither_timer
#Grant Player Heart Breaker Adv
advancement grant @s only matcha:hell/wither_breaks_heart