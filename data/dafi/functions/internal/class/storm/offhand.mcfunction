execute if entity @s[tag=dafi.storm.offhandReady] if score @s dafi.crossbowMainhand matches 0 run item replace entity @s[tag=!dafi.storm.offhandProcessed,team=red] weapon.offhand with trident{offhand:1,display:{Name:'[{"text":"Tidecaller","italic":false,"bold":true,"color":"aqua"}]'},tred:1,Unbreakable:1,HideFlags:1} 1
execute if entity @s[tag=dafi.storm.offhandReady] if score @s dafi.crossbowMainhand matches 0 run item replace entity @s[tag=!dafi.storm.offhandProcessed,team=blue] weapon.offhand with trident{offhand:1,display:{Name:'[{"text":"Tidecaller","italic":false,"bold":true,"color":"aqua"}]'},tblue:1,Unbreakable:1,HideFlags:1} 1
execute if entity @s[tag=dafi.storm.offhandReady] if score @s dafi.crossbowMainhand matches 0 run item replace entity @s[tag=!dafi.storm.offhandProcessed,team=ffa] weapon.offhand with trident{offhand:1,display:{Name:'[{"text":"Tidecaller","italic":false,"bold":true,"color":"aqua"}]'},tffa:1,Unbreakable:1,HideFlags:1} 1

execute if entity @s[tag=dafi.storm.offhandReady] if score @s dafi.crossbowMainhand matches 0 run tag @s[tag=!dafi.storm.offhandProcessed] add dafi.storm.offhandProcessed

execute if entity @s[tag=dafi.storm.offhandProcessed] if score @s dafi.crossbowMainhand matches 1 run clear @s trident{display:{Name:'[{"text":"Tidecaller","italic":false,"bold":true,"color":"aqua"}]'},Unbreakable:1b,HideFlags:1} 1
execute if entity @s[tag=dafi.storm.offhandProcessed] if score @s dafi.crossbowMainhand matches 1 run tag @s remove dafi.storm.offhandProcessed

execute if score @s dafi.crossbowMainhand matches 1 run clear @s trident