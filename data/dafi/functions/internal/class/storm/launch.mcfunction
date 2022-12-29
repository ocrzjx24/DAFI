
clear @s diamond_shovel
kill @e[type=item,nbt={Item:{id:"minecraft:diamond_shovel"}},sort=nearest,limit=1]
item replace entity @s hotbar.1 with diamond_shovel{mainhand:1,display:{Name:'[{"text":"Wavebreaker","italic":false,"bold":true,"color":"aqua"}]'},Enchantments:[{}],Unbreakable:1,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Slot:"mainhand",Amount:20.0,Operation:0,UUID:[I;1028214595,1066950744,1016402789,1603413261]},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Slot:"mainhand",Amount:-0.4,Operation:2,UUID:[I;1028214595,1066950744,1016402789,1603413261]}],HideFlags:6} 1

tag @s add dafi.storm.launched
execute if predicate dafi:is_sneaking run tag @s add dafi.storm.sneaklaunch
