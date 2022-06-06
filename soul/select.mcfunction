## RESET
execute at @s run function dafi:game/select/reset
## TAG
tag @s add soul

## ITEM
give @s crossbow{display:{Name:'[{"text":"JSN ","italic":false,"color":"yellow","bold":true},{"text":"X13","italic":false,"bold":true,"color":"gold"}]',Lore:['[{"text":"death.attack.firework.item","italic":false,"color":"dark_green"}]']},Enchantments:[{id:"quick_charge",lvl:5}],Unbreakable:1,HideFlags:1} 1
item replace entity @s armor.feet with golden_boots{Enchantments:[{id:"depth_strider",lvl:3},{id:"soul_speed",lvl:3},{id:"binding_curse",lvl:1}],Unbreakable:1,HideFlags:1} 1
give @s golden_hoe{display:{Name:'[{"text":"Soul Reaver","italic":false,"bold":true,"color":"yellow"}]'},Enchantments:[{id:"unbreaking",lvl:1}],Unbreakable:1,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Slot:"mainhand",Amount:100,Operation:0,UUID:[I;1022498064,1087262705,1008143892,1256304346]},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Slot:"mainhand",Amount:8,Operation:0,UUID:[I;1022498064,1087262705,1008143892,1256304346]}],HideFlags:3} 1
item replace entity @s armor.head with conduit{display:{Name:'[{"text":"Brain","italic":false,"color":"light_purple"}]'}} 1

## SOUND
execute at @s run playsound minecraft:item.armor.equip_netherite master @s ~ ~ ~ 1 1 1

## TITLE
title @s reset

## SCOREBOARD
# scoreboard players reset @a[scores={yellow=1..}] yellow