execute if score @s offhandReady matches 1 if score @s crossbowMainhand matches 0 run item replace entity @s[tag=!offhandProcessed] weapon.offhand with ender_eye{display:{Name:'[{"text":"Fa","italic":false,"bold":true,"color":"light_purple"},{"text":"de ","color":"dark_purple"},{"text":"| ","color":"white","bold":false},{"text":"[RMB]","color":"white","bold":false}]'}} 1
execute if score @s offhandReady matches 1 if score @s crossbowMainhand matches 0 run tag @s[tag=!offhandProcessed] add offhandProcessed

execute if score @s crossbowMainhand matches 1 run clear @s[tag=offhandProcessed] ender_eye{display:{Name:'[{"text":"Fa","italic":false,"bold":true,"color":"light_purple"},{"text":"de ","color":"dark_purple"},{"text":"| ","color":"white","bold":false},{"text":"[RMB]","color":"white","bold":false}]'}} 1
execute if score @s crossbowMainhand matches 1 run tag @s[tag=offhandProcessed] remove offhandProcessed