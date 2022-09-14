## RESET
execute at @s run function dafi:internal/game/select/reset

## TAG
tag @s add dafi.storm

## ITEM
item replace entity @s hotbar.0 with crossbow{display:{Name:'[{"text":"JSN ","italic":false,"color":"yellow","bold":true},{"text":"X13","italic":false,"bold":true,"color":"gold"}]',Lore:['[{"text":"death.attack.firework.item","italic":false,"color":"dark_green"}]']},Enchantments:[{id:"quick_charge",lvl:5},{id:"knockback",lvl:1}],Unbreakable:1,ChargedProjectiles:[{id:"arrow",Count:1b}],Charged:1b,Unbreakable:1,HideFlags:36} 1
item replace entity @s armor.feet with leather_boots{Enchantments:[{id:"depth_strider",lvl:3},{id:"binding_curse",lvl:1}],Unbreakable:1,display:{color:3847130},HideFlags:1} 1
item replace entity @s[team=red] weapon.offhand with trident{display:{Name:'[{"text":"Tidecaller","italic":false,"bold":true,"color":"aqua"}]'},tred:1,Unbreakable:1,HideFlags:1} 1
item replace entity @s[team=blue] weapon.offhand with trident{display:{Name:'[{"text":"Tidecaller","italic":false,"bold":true,"color":"aqua"}]'},tblue:1,Unbreakable:1,HideFlags:1} 1
item replace entity @s[team=ffa] weapon.offhand with trident{display:{Name:'[{"text":"Tidecaller","italic":false,"bold":true,"color":"aqua"}]'},tffa:1,Unbreakable:1,HideFlags:1} 1
item replace entity @s hotbar.1 with diamond_shovel{display:{Name:'[{"text":"Wavebreaker","italic":false,"bold":true,"color":"aqua"}]'},Unbreakable:1,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Slot:"mainhand",Amount:8.0,Operation:0,UUID:[I;1028214595,1066950744,1016402789,1603413261]},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Slot:"mainhand",Amount:-0.4,Operation:2,UUID:[I;1028214595,1066950744,1016402789,1603413261]}],HideFlags:7} 1
item replace entity @s inventory.0 with skull_banner_pattern{display:{Name:'[{"text":"STORM","italic":false,"bold":true,"color":"aqua"},{"text":" ","color":"gray"},{"text":"| ","color":"white"},{"text":"Divine Tempest","color":"white","bold":false}]',Lore:['[{"text":"\\"Hm? What\'s that? Do you wish for death?\\"","italic":false}]','[{"text":"With no one to rule the seas, they","italic":false,"color":"dark_green"}]','[{"text":"took their trident, appointing","italic":false,"color":"dark_green"}]','[{"text":"themselves as the Lord of the Ocean.","italic":false,"color":"dark_green"}]','[{"text":"Make no mistake, even if they\'re stuck","italic":false,"color":"dark_green"}]','[{"text":"up, they can still smite you down.","italic":false,"color":"dark_green"}]']}} 1

function dafi:api/hat

## SOUND
execute at @s run playsound minecraft:item.armor.equip_netherite master @s ~ ~ ~ 1 1 1

## TITLE
title @s reset

## SCOREBOARD
# scoreboard players set @s tridentCD 0
# scoreboard players reset @a[scores={light_blue=1..}] light_blue

## advancements
advancement revoke @s only dafi:inventory_changed