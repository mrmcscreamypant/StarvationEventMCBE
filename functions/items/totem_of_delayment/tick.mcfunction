execute as @a[hasitem={location=slot.weapon.offhand,item=se:totem_of_delayment}] run function items/totem_of_delayment/player_has_item

scoreboard players remove @a[scores={totem_of_delayment_timer=1..}] totem_of_delayment_timer 1
scoreboard players operation * totem_of_delayment_timer = @a[scores={totem_of_delayment_timer=1..}] ticks
scoreboard players operation @a[scores={totem_of_delayment_timer=1..}] totem_of_delayment_seconds = @a[scores={totem_of_delayment_timer=1..}] totem_of_delayment_timer
scoreboard players operation @a[scores={totem_of_delayment_timer=1..}] totem_of_delayment_seconds /= twenty numbers

execute as @a[scores={totem_of_delayment_timer=1..}] run titleraw @s actionbar {"rawtext": [{"text": "Totem of Delayment - §e"},{"score":{"name": "@s","objective": "totem_of_delayment_seconds"}},{"text":"s§r"}]}
effect @a[scores={totem_of_delayment_timer=1..}] health_boost 1 9 true

execute as @a[scores={totem_of_delayment_timer=0..20}] at @s run particle minecraft:totem_particle ~ ~1 ~
execute as @a[scores={totem_of_delayment_timer=20}] run playsound random.totem @s
execute as @a[scores={totem_of_delayment_timer=20}] run replaceitem entity @s slot.weapon.offhand 0 air

execute as @a[scores={totem_of_delayment_timer=..0}] run function items/totem_of_delayment/item_timeout