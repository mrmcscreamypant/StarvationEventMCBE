replaceitem entity @s slot.weapon.offhand 0 se:active_totem_of_delayment 1 0 {"minecraft:item_lock":{ "mode": "lock_in_slot" }}
scoreboard players set @s totem_of_delayment_timer 620
effect @s instant_health 1 20
playsound mob.vex.death @s