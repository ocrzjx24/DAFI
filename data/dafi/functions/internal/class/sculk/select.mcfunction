##> dafi:internal/class/sculk/select
# select function for sculk
#
# callers:
# > dafi:internal/game/select/legacy
# > dafi:internal/game/select/main

## RESET
execute at @s run function dafi:internal/game/select/reset

## TAG
tag @s add dafi.sculk

## ITEM
item replace entity @s hotbar.0 with crossbow{display:{Name:'[{"text":"JSN ","italic":false,"color":"yellow","bold":true},{"text":"X13","italic":false,"bold":true,"color":"gold"}]',Lore:['[{"text":"death.attack.firework.item","italic":false,"color":"dark_green"}]']},Enchantments:[{id:"quick_charge",lvl:5},{id:"knockback",lvl:1}],Unbreakable:1,ChargedProjectiles:[{id:"arrow",Count:1b}],Charged:1b,Unbreakable:1,HideFlags:36} 1
item replace entity @s armor.feet with leather_boots{Enchantments:[{id:"binding_curse",lvl:1},{id:"depth_strider",lvl:3}],Unbreakable:1,display:{color:3635373},HideFlags:1} 1
item replace entity @s hotbar.1 with minecraft:bone{display:{Name:'[{"text":"Corrupt","italic":false,"bold":true,"color":"dark_aqua"},{"text":"ion","color":"gray"}]',Lore:['[{"text":"This is a joke class how...","italic":false,"color":"dark_gray"}]','[{"text":"how did you even select this","italic":false,"color":"dark_gray"}]','[{"text":"have fun I guess...","italic":false,"color":"dark_gray"}]']},Enchantments:[{id:sharpness,lvl:9},{id:smite,lvl:5}]} 1
item replace entity @s weapon.offhand with ender_eye{display:{Name:'[{"text":"Fa","italic":false,"bold":true,"color":"light_purple"},{"text":"de ","color":"dark_purple"},{"text":"| ","color":"white","bold":false},{"text":"[RMB]","color":"white","bold":false}]'}} 1

function dafi:api/hat

## SOUND
execute at @s run playsound minecraft:item.armor.equip_netherite master @s ~ ~ ~ 1 1 1

## TITLE
title @s reset

## advancements
advancement revoke @s only dafi:inventory_changed