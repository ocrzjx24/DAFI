## RESET
execute at @s run function dafi:game/select/reset

## TAG
tag @s add saint

## EFFECT
effect clear @s

## ITEM (incomplete)
give @s crossbow{display:{Name:'[{"text":"JSN ","italic":false,"color":"yellow","bold":true},{"text":"X13","italic":false,"bold":true,"color":"gold"}]',Lore:['[{"text":"death.attack.firework.item","italic":false,"color":"dark_green"}]']},Enchantments:[{id:"quick_charge",lvl:5}],Unbreakable:1,HideFlags:1} 1
item replace entity @s armor.feet with leather_boots{Enchantments:[{id:"depth_strider",lvl:3},{id:"binding_curse",lvl:1}],Unbreakable:1,HideFlags:1,display:{color:16777215}} 1
give @s feather{display:{Name:'[{"text":"Wings","italic":false,"bold":true,"color":"white"}]'},Enchantments:[{id:"unbreaking",lvl:1}],Unbreakable:1,HideFlags:1} 1
give @s minecraft:iron_axe{Enchantments:[{id:"minecraft:unbreaking",lvl:1}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Slot:"mainhand",Amount:10,Operation:0,UUID:[I;1021537433,1056320062,1069698063,1260727900]},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Slot:"mainhand",Amount:-0.4,Operation:2,UUID:[I;1021537433,1056320062,1069698063,1260727900]}],Unbreakable:1,display:{Name:'[{"text":"KLE Choppa","color":"white","bold":true,"italic":false}]'},HideFlags:3} 1
item replace entity @s armor.head with conduit{display:{Name:'[{"text":"Brain","italic":false,"color":"light_purple"}]'}} 1
item replace entity @s inventory.0 with skull_banner_pattern{display:{Name:'[{"text":"SAINT","italic":false,"color":"white","bold":true},{"text":" "},{"text":"| "},{"text":"Heavenly Courier","bold":false}]',Lore:['[{"text":"\\"BE NOT AFRAID.\\"","italic":false}]','[{"text":"The archangels rarely ever touched","italic":false,"color":"dark_green"}]','[{"text":"foot upon the earth, for fear of","italic":false,"color":"dark_green"}]','[{"text":"obliterating humanity with their","italic":false,"color":"dark_green"}]','[{"text":"incomprehensible presence. But","italic":false,"color":"dark_green"}]','[{"text":"desperate times call for desperate","italic":false,"color":"dark_green"}]','[{"text":"measures.","italic":false,"color":"dark_green"}]']}} 1 

## SOUND
execute at @s run playsound minecraft:item.armor.equip_netherite master @s ~ ~ ~ 1 1 1

## TITLE
title @s reset

## SCOREBOARD
# scoreboard players reset @a[scores={white=1..}] white