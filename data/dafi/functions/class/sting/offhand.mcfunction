execute if score @s offhandReady matches 1 if score @s crossbowMainhand matches 0 if score @s gType matches 0 run item replace entity @s[tag=!offhandProcessed,team=red] weapon.offhand with minecraft:snowball{red:1,display:{Name:'[{"text":"Pondering Orb","italic":false,"color":"yellow"}]'}}
execute if score @s offhandReady matches 1 if score @s crossbowMainhand matches 0 if score @s gType matches 0 run item replace entity @s[tag=!offhandProcessed,team=blue] weapon.offhand with minecraft:snowball{blue:1,display:{Name:'[{"text":"Pondering Orb","italic":false,"color":"yellow"}]'}}

execute if score @s offhandReady matches 1 if score @s crossbowMainhand matches 0 if score @s gType matches 1 run item replace entity @s[tag=!offhandProcessed,team=red] weapon.offhand with minecraft:egg{red:2,display:{Name:'[{"text":"Sting Shell","italic":false,"color":"red"}]'}}
execute if score @s offhandReady matches 1 if score @s crossbowMainhand matches 0 if score @s gType matches 1 run item replace entity @s[tag=!offhandProcessed,team=blue] weapon.offhand with minecraft:egg{blue:2,display:{Name:'[{"text":"Sting Shell","italic":false,"color":"red"}]'}}

execute if score @s offhandReady matches 1 if score @s crossbowMainhand matches 0 run tag @s[tag=!offhandProcessed] add offhandProcessed

execute if score @s crossbowMainhand matches 1 run clear @s[tag=offhandProcessed] minecraft:snowball{display:{Name:'[{"text":"Pondering Orb","italic":false,"color":"yellow"}]'}}
execute if score @s crossbowMainhand matches 1 run clear @s[tag=offhandProcessed] minecraft:egg{display:{Name:'[{"text":"Sting Shell","italic":false,"color":"red"}]'}}
execute if score @s crossbowMainhand matches 1 run tag @s[tag=offhandProcessed] remove offhandProcessed