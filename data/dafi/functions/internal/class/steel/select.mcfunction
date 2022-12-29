## RESET
execute at @s run function dafi:internal/game/select/reset

## TAG
tag @s add dafi.steel

## ITEM
item replace entity @s hotbar.0 with crossbow{mainhand:1,display:{Name:'[{"text":"JSN ","italic":false,"color":"yellow","bold":true},{"text":"X13","italic":false,"bold":true,"color":"gold"}]',Lore:['[{"text":"death.attack.firework.item","italic":false,"color":"dark_green"}]']},Enchantments:[{id:"quick_charge",lvl:5},{id:"knockback",lvl:1}],Unbreakable:1,ChargedProjectiles:[{id:"arrow",Count:1b}],Charged:1b,Unbreakable:1,HideFlags:36} 1
item replace entity @s armor.feet with leather_boots{Enchantments:[{id:"depth_strider",lvl:3},{id:"binding_curse",lvl:1}],Unbreakable:1,HideFlags:1,display:{color:9237519}} 1
item replace entity @s weapon.offhand with minecraft:shield{offhand:1,BlockEntityTag:{Base:5},display:{Name:'[{"text":"Aegis","color":"green","bold":true,"italic":false},{"text":"","color":"green","bold":false}]'},Unbreakable:1,Enchantments:[{id:"minecraft:knockback",lvl:5}],AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Slot:"mainhand",Amount:10,Operation:0,UUID:[I;1023649466,1053530011,1064142780,1400834718]}],HideFlags:3} 1
give @s minecraft:stone_axe{mainhand:1,Unbreakable:1,display:{Name:'[{"text":"Labrys","color":"green","bold":true,"italic":false},{"text":"","color":"green","bold":false}]'},Enchantments:[{id:"minecraft:sharpness",lvl:5}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Slot:"mainhand",Amount:10,Operation:0,UUID:[I;1028214595,1066950744,1016402789,1603413261]},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Slot:"mainhand",Amount:-0.4,Operation:2,UUID:[I;1028214595,1066950744,1016402789,1603413261]}],HideFlags:3} 1
item replace entity @s inventory.0 with skull_banner_pattern{display:{Name:'[{"text":"STEEL","italic":false,"bold":true,"color":"green"},{"text":" | ","color":"white"},{"text":"Stalwart Guardian","bold":false,"color":"white"}]',Lore:['[{"text":"\\"Min fovásai. I will protect thee.\\"","italic":false}]','[{"text":"Since the beginning of time, the Empire","italic":false,"color":"dark_green"}]','[{"text":"was protected by its honorable, loyal,","italic":false,"color":"dark_green"}]','[{"text":"and unwavering warriors. The New Age","italic":false,"color":"dark_green"}]','[{"text":"marked its fall, and the disappearance","italic":false,"color":"dark_green"}]','[{"text":"of most of these warriors. Emphasis on","italic":false,"color":"dark_green"}]','[{"text":"most.","italic":false,"color":"dark_green"}]']}} 1

function dafi:api/hat

## SOUND
execute at @s run playsound minecraft:item.armor.equip_netherite master @s ~ ~ ~ 1 1 1

## TITLE
title @s reset

## SCOREBOARD
# scoreboard players reset @a[scores={lime=1..}] lime

## advancements
advancement revoke @s only dafi:inventory_changed