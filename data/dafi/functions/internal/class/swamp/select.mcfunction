## RESET
execute at @s run function dafi:internal/game/select/reset

## TAG
tag @s add dafi.swamp

## ITEM
item replace entity @s hotbar.0 with crossbow{mainhand:1,display:{Name:'[{"text":"JSN ","italic":false,"color":"yellow","bold":true},{"text":"X13","italic":false,"bold":true,"color":"gold"}]',Lore:['[{"text":"death.attack.firework.item","italic":false,"color":"dark_green"}]']},Enchantments:[{id:"quick_charge",lvl:5},{id:"knockback",lvl:1}],Unbreakable:1,ChargedProjectiles:[{id:"arrow",Count:1b}],Charged:1b,Unbreakable:1,HideFlags:36} 1
item replace entity @s armor.feet with leather_boots{Enchantments:[{id:"depth_strider",lvl:3},{id:"binding_curse",lvl:1}],Unbreakable:1,HideFlags:1,display:{color:8606770}} 1
item replace entity @s weapon.offhand with ender_pearl{offhand:1,display:{Name:'[{"text":"Mire","italic":false,"bold":true,"color":"dark_red"}]'},Enchantments:[{id:"minecraft:unbreaking",lvl:10}],HideFlags:1} 1
item replace entity @s hotbar.1 with netherite_axe{mainhand:1,display:{Name:'[{"text":"Maul","italic":false,"color":"dark_red","bold":true},{"text":" ","color":"#ffd814"},{"text":"| ","color":"gray"},{"text":"[Q]/[RMB]","color":"white","bold":false}]',Lore:['[{"text":"Thousands disappeared. None were ever found.","italic":false}]']},Unbreakable:1,HideFlags:3,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Slot:"mainhand",Amount:10,Operation:0,UUID:[I;1014886342,1084823496,1064780877,1393545524]},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Slot:"mainhand",Amount:-0.2,Operation:2,UUID:[I;1014886342,1084823496,1064780877,1393545524]}],swap:1} 1
item replace entity @s inventory.0 with skull_banner_pattern{display:{Name:'[{"text":"SWAMP","italic":false,"bold":true,"color":"#996633"},{"text":" ","color":"gray"},{"text":"| ","color":"white"},{"text":"Delusional Monster","color":"white","bold":false}]',Lore:['[{"text":"\\"Fear me.\\"","italic":false}]','[{"text":"The scientists did not understand what","italic":false,"color":"dark_green"}]','[{"text":"they had created. It seemed so afraid","italic":false,"color":"dark_green"}]','[{"text":"of them. But their last shouts were","italic":false,"color":"dark_green"}]','[{"text":"also of terror before drowning in the","italic":false,"color":"dark_green"}]','[{"text":"mud. ","italic":false,"color":"dark_green"}]']}} 1

function dafi:api/hat

## SOUND
execute at @s run playsound minecraft:item.armor.equip_netherite master @s ~ ~ ~ 1 1 1

## TITLE
title @s reset

## SCOREBOARD
# scoreboard players reset @a[scores={brown=1..}] brown

## advancements
advancement revoke @s only dafi:inventory_changed