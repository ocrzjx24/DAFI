scoreboard players set @s[scores={checkIn=1..}] checkIn 0
execute at @s[team=!blue] if entity @e[team=!red,scores={castTagged=1..},distance=..5] run scoreboard players set @s checkIn 1
execute at @s[team=!red] if entity @e[team=!blue,scores={castTagged=1..},distance=..5] run scoreboard players set @s checkIn 1

##DEBUG
item replace entity @s[scores={checkIn=1},tag=!processedDSword] hotbar.1 with minecraft:diamond_sword
clear @s[scores={checkIn=0},tag=!processedDSword] diamond_sword
tag @s[scores={checkIn=0},tag=processedDSword] remove processedDSword
tag @s[scores={checkIn=1},tag=!processedDSword] add processedDSword

item replace entity @s[scores={checkIn=0,dropNSword=1..59},tag=!processedISword] hotbar.1 with minecraft:iron_sword{display:{Name:'[{"text":"Oni","italic":false,"bold":true,"color":"light_purple"},{"text":"kiri ","color":"dark_purple"},{"text":"|","color":"dark_gray","bold":false},{"text":" ","color":"gray","bold":false},{"text":"[Q]","color":"white","bold":false},{"text":"/","color":"dark_gray","bold":false},{"text":"[RMB]","color":"white","bold":false}]',Lore:['[{"text":"Type: 🧪 ","italic":false,"color":"green"},{"text":"/","color":"dark_green"},{"text":" 🔥"}]']},Unbreakable:1,Enchantments:[{id:"minecraft:unbreaking",lvl:1}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Slot:"mainhand",Amount:10,Operation:0,UUID:[I;1069942072,1057578295,1077372865,1692893952]},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Slot:"mainhand",Amount:-0.2,Operation:2,UUID:[I;1069942072,1057578295,1077372865,1692893952]}],HideFlags:7} 1
tag @s[scores={checkIn=1,dropNSword=1..59},tag=processedISword] remove processedISword
tag @s[scores={checkIn=0,dropNSword=1..59},tag=!processedISword] add processedISword

item replace entity @s[scores={checkIn=0,dropNSword=0},tag=!processedNSword] hotbar.1 with minecraft:netherite_sword{display:{Name:'[{"text":"Oni","italic":false,"bold":true,"color":"light_purple"},{"text":"kiri ","color":"dark_purple"},{"text":"|","color":"dark_gray","bold":false},{"text":" ","color":"gray","bold":false},{"text":"[Q]","color":"white","bold":false},{"text":"/","color":"dark_gray","bold":false},{"text":"[RMB]","color":"white","bold":false}]',Lore:['[{"text":"Type: 🧪 ","italic":false,"color":"green"},{"text":"/","color":"dark_green"},{"text":" 🔥"}]']},Unbreakable:1,Enchantments:[{id:"minecraft:unbreaking",lvl:1}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Slot:"mainhand",Amount:10,Operation:0,UUID:[I;1069942072,1057578295,1077372865,1692893952]},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Slot:"mainhand",Amount:-0.2,Operation:2,UUID:[I;1069942072,1057578295,1077372865,1692893952]}],HideFlags:7} 1
tag @s[scores={checkIn=1,dropNSword=0},tag=processedNSword] remove processedNSword
tag @s[scores={checkIn=0,dropNSword=0},tag=!processedNSword] add processedNSword
