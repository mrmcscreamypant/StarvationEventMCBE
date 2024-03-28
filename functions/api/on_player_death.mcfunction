scoreboard players set @a [scores={alive=!2}] alive 0
scoreboard players set @e [type=player] alive 1

execute as @a[scores={alive=0,totem_of_delayment_timer=1..}] at @s run function items/totem_of_delayment/on_player_death

scoreboard players set @a [scores={alive=0}] alive 2