# display "n/n players sleeping" in the actionbar

title @a[tag=is_sleeping] actionbar [ \
        {score:{name:"players_sleeping",objective:"sleepTimerScore"}}, \
        "/", \
        {score:{name:"players_in_overworld",objective:"sleepTimerScore"}}, \
        {text:" players sleeping",color:"gray"} \
    ]

