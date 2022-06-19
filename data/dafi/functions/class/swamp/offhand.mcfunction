execute if score @s offhandReady matches 1 if score @s crossbowMainhand matches 0 run item replace entity @s[tag=!offhandProcessed] weapon.offhand with ender_pearl{display:{Name:'[{"text":"Mire","italic":false,"bold":true,"color":"dark_red"}]'},Enchantments:[{id:"minecraft:unbreaking",lvl:10}],HideFlags:1} 1
execute if score @s offhandReady matches 1 if score @s crossbowMainhand matches 0 run tag @s[tag=!offhandProcessed] add offhandProcessed

execute if score @s crossbowMainhand matches 1 run clear @s[tag=offhandProcessed] ender_pearl{display:{Name:'[{"text":"Mire","italic":false,"bold":true,"color":"dark_red"}]'},Enchantments:[{id:"minecraft:unbreaking",lvl:10}],HideFlags:1} 1
execute if score @s crossbowMainhand matches 1 run tag @s[tag=offhandProcessed] remove offhandProcessed