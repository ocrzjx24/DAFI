##> dafi:api/legacy
# starts class select sequence
#
# callers:
# >

clear @s
execute at @s run function dafi:internal/game/select/reset
item replace entity @s container.0 with minecraft:gray_dye{display:{Name:'[{"text":"Siege","italic":false,"bold":true,"color":"gray"}]'}} 1
item replace entity @s container.1 with minecraft:white_dye{display:{Name:'[{"text":"Saint","italic":false,"bold":true,"color":"white"}]'}} 1
item replace entity @s container.2 with red_dye{display:{Name:'[{"text":"Slay","italic":false,"bold":true,"color":"red"}]'}} 1
item replace entity @s container.3 with minecraft:orange_dye{display:{Name:'[{"text":"Sting","italic":false,"color":"gold","bold":true}]'}} 1
item replace entity @s container.4 with minecraft:yellow_dye{display:{Name:'[{"text":"Soul","italic":false,"color":"yellow","bold":true}]'}} 1
item replace entity @s container.5 with lime_dye{display:{Name:'[{"text":"Steel","italic":false,"color":"green","bold":true}]'}} 1
item replace entity @s container.6 with light_blue_dye{display:{Name:'[{"text":"Storm","italic":false,"color":"aqua","bold":true}]'}} 1
item replace entity @s container.7 with magenta_dye{display:{Name:'[{"text":"Shade","italic":false,"color":"light_purple","bold":true}]'}} 1
item replace entity @s container.8 with brown_dye{display:{Name:'[{"text":"Swamp","italic":false,"bold":true,"color":"dark_red"}]'}} 1
item replace entity @s armor.head with cyan_dye{display:{Name:'[{"text":"Sculk","italic":false,"bold":true,"color":"cyan"}]'}} 1
effect give @s minecraft:jump_boost 100000 250 true
effect give @s minecraft:slowness 100000 255 true
effect give @s minecraft:blindness 100000 255 true
effect give @s minecraft:resistance 100000 255 true
title @s title ["",{"text":"Choose Your Class","bold":true,"color":"gold"}]
title @s subtitle ["",{"text":"Drop to Select","color":"yellow"}]
execute at @s run playsound minecraft:block.metal.place master @s ~ ~ ~ 1 0.1 1
scoreboard players reset @s dafi.class 