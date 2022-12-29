execute if score @s dafi.offhandReady matches 1 if score @s dafi.crossbowMainhand matches 0 if score @s dafi.sting.gType matches 0 run item replace entity @s[tag=!dafi.offhandProcessed,team=red] weapon.offhand with minecraft:snowball{offhand:1,red:1,display:{Name:'[{"text":"Pondering Orb","italic":false,"color":"yellow"}]'}}
execute if score @s dafi.offhandReady matches 1 if score @s dafi.crossbowMainhand matches 0 if score @s dafi.sting.gType matches 0 run item replace entity @s[tag=!dafi.offhandProcessed,team=blue] weapon.offhand with minecraft:snowball{offhand:1,blue:1,display:{Name:'[{"text":"Pondering Orb","italic":false,"color":"yellow"}]'}}

execute if score @s dafi.offhandReady matches 1 if score @s dafi.crossbowMainhand matches 0 if score @s dafi.sting.gType matches 1 run item replace entity @s[tag=!dafi.offhandProcessed,team=red] weapon.offhand with minecraft:egg{offhand:1,red:2,display:{Name:'[{"text":"Sting Shell","italic":false,"color":"red"}]'}}
execute if score @s dafi.offhandReady matches 1 if score @s dafi.crossbowMainhand matches 0 if score @s dafi.sting.gType matches 1 run item replace entity @s[tag=!dafi.offhandProcessed,team=blue] weapon.offhand with minecraft:egg{offhand:1,blue:2,display:{Name:'[{"text":"Sting Shell","italic":false,"color":"red"}]'}}

execute if score @s dafi.offhandReady matches 1 if score @s dafi.crossbowMainhand matches 0 run tag @s[tag=!dafi.offhandProcessed] add dafi.offhandProcessed

execute if score @s dafi.crossbowMainhand matches 1 run clear @s[tag=dafi.offhandProcessed] minecraft:snowball{display:{Name:'[{"text":"Pondering Orb","italic":false,"color":"yellow"}]'}}
execute if score @s dafi.crossbowMainhand matches 1 run clear @s[tag=dafi.offhandProcessed] minecraft:egg{display:{Name:'[{"text":"Sting Shell","italic":false,"color":"red"}]'}}
execute if score @s dafi.crossbowMainhand matches 1 run tag @s[tag=dafi.offhandProcessed] remove dafi.offhandProcessed