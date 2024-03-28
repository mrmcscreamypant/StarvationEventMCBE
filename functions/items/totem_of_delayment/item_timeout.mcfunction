scoreboard players reset @s totem_of_delayment_timer
execute as @s run scriptevent se:totem_of_delayment_timeout
titleraw @s actionbar {"rawtext":[{"text":"Totem of Delayment - §cOUT OF TIME§r"}]}
playsound mob.vex.death