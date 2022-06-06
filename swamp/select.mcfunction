## RESET
execute at @s run function dafi:game/select/reset

## TAG
tag @s add swamp

## ITEM
give @s crossbow{display:{Name:'[{"text":"JSN ","italic":false,"color":"yellow","bold":true},{"text":"X13","italic":false,"bold":true,"color":"gold"}]',Lore:['[{"text":"death.attack.firework.item","italic":false,"color":"dark_green"}]']},Enchantments:[{id:"quick_charge",lvl:5}],Unbreakable:1,HideFlags:1} 1
item replace entity @s armor.feet with leather_boots{Enchantments:[{id:"depth_strider",lvl:3},{id:"binding_curse",lvl:1}],Unbreakable:1,HideFlags:1,display:{color:8606770}} 1
item replace entity @s weapon.offhand with ender_pearl{display:{Name:'[{"text":"Mire","italic":false,"bold":true,"color":"dark_red"}]'},Enchantments:[{id:"minecraft:unbreaking",lvl:10}],HideFlags:1} 1
give @s netherite_axe{display:{Name:'[{"text":"Maul","italic":false,"bold":true,"color":"dark_red"}]'},Unbreakable:1,HideFlags:3,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Slot:"mainhand",Amount:10,Operation:0,UUID:[I;1014886342,1084823496,1064780877,1393545524]},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Slot:"mainhand",Amount:-0.2,Operation:2,UUID:[I;1014886342,1084823496,1064780877,1393545524]}],Enchantments:[{id:"minecraft:thorns",lvl:1}]} 1
item replace entity @s armor.head with conduit{display:{Name:'[{"text":"Brain","italic":false,"color":"light_purple"}]'}} 1

## SOUND
execute at @s run playsound minecraft:item.armor.equip_netherite master @s ~ ~ ~ 1 1 1

## TITLE
title @s reset

## SCOREBOARD
# scoreboard players reset @a[scores={brown=1..}] brown