## RESET
execute at @s run function dafi:game/select/reset

## TAG
tag @s add steel

## ITEM
give @s crossbow{display:{Name:'[{"text":"JSN ","italic":false,"color":"yellow","bold":true},{"text":"X13","italic":false,"bold":true,"color":"gold"}]',Lore:['[{"text":"death.attack.firework.item","italic":false,"color":"dark_green"}]']},Enchantments:[{id:"quick_charge",lvl:5}],Unbreakable:1,HideFlags:1} 1
item replace entity @s armor.feet with leather_boots{Enchantments:[{id:"depth_strider",lvl:3},{id:"binding_curse",lvl:1}],Unbreakable:1,HideFlags:1,display:{color:9237519}} 1
item replace entity @s weapon.offhand with minecraft:shield{BlockEntityTag:{Base:5},display:{Name:'[{"text":"Aegis","color":"green","bold":true,"italic":false},{"text":"","color":"green","bold":false}]'},Unbreakable:1,Enchantments:[{id:"minecraft:knockback",lvl:5}],AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Slot:"mainhand",Amount:10,Operation:0,UUID:[I;1023649466,1053530011,1064142780,1400834718]}],HideFlags:3} 1
give @s minecraft:stone_axe{Unbreakable:1,display:{Name:'[{"text":"Labrys","color":"green","bold":true,"italic":false},{"text":"","color":"green","bold":false}]'},Enchantments:[{id:"minecraft:sharpness",lvl:5}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Slot:"mainhand",Amount:10,Operation:0,UUID:[I;1028214595,1066950744,1016402789,1603413261]},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Slot:"mainhand",Amount:-0.4,Operation:2,UUID:[I;1028214595,1066950744,1016402789,1603413261]}],HideFlags:3} 1
item replace entity @s armor.head with conduit{display:{Name:'[{"text":"Brain","italic":false,"color":"light_purple"}]'}} 1

## SOUND
execute at @s run playsound minecraft:item.armor.equip_netherite master @s ~ ~ ~ 1 1 1

## TITLE
title @s reset

## SCOREBOARD
# scoreboard players reset @a[scores={lime=1..}] lime