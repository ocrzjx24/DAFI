scoreboard players add @s shovel 1
execute if score @s shovel matches 1.. at @s run particle minecraft:enchanted_hit ~ ~1 ~ 0.5 0.5 0.5 1 1 force
execute if score @s shovel matches 1 run tag @s remove strike
execute if score @s shovel matches 1.. run scoreboard players set @s CD 2
execute if score @s shovel matches 1 run item replace entity @s hotbar.1 with minecraft:diamond_shovel{display:{Name:'[{"text":"Wavedigger","italic":false,"bold":true,"color":"aqua"}]'},Enchantments:[{id:"channeling",lvl:1},{id:"sharpness",lvl:2}],Unbreakable:1,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Slot:"mainhand",Amount:100,Operation:0,UUID:[I;1028214595,1066950744,1016402789,1603413261]},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Slot:"mainhand",Amount:-0.4,Operation:2,UUID:[I;1028214595,1066950744,1016402789,1603413261]}],HideFlags:3} 1
execute if score @s shovel matches 5.. run advancement revoke @s only dafi:fall
execute if score @s shovel matches 120.. run clear @s diamond_shovel 
execute if score @s shovel matches 120.. run scoreboard players set @s dropWave 60
execute if score @s shovel matches 120.. run tag @s remove garden