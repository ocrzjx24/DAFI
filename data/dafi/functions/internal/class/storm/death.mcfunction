clear @s diamond_shovel
execute at @s run kill @e[type=item,nbt={Item:{id:"minecraft:diamond_shovel"}},sort=nearest,limit=1]
item replace entity @s hotbar.1 with diamond_shovel{display:{Name:'[{"text":"Wavebreaker","italic":false,"bold":true,"color":"aqua"}]'},Unbreakable:1,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Slot:"mainhand",Amount:8.0,Operation:0,UUID:[I;1028214595,1066950744,1016402789,1603413261]},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Slot:"mainhand",Amount:-0.4,Operation:2,UUID:[I;1028214595,1066950744,1016402789,1603413261]}],HideFlags:7} 1

tag @s remove dafi.storm.launched
tag @s remove dafi.storm.usedslam