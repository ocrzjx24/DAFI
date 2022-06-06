## RESET
execute at @s run function dafi:game/select/reset

## TAG
tag @s add siege

## ITEM
give @s crossbow{display:{Name:'[{"text":"JSN ","italic":false,"color":"yellow","bold":true},{"text":"X13","italic":false,"bold":true,"color":"gold"}]',Lore:['[{"text":"death.attack.firework.item","italic":false,"color":"dark_green"}]']},Enchantments:[{id:"quick_charge",lvl:5}],Unbreakable:1,HideFlags:1} 1
item replace entity @s armor.feet with chainmail_boots{Enchantments:[{id:"binding_curse",lvl:1},{id:"depth_strider",lvl:3}],Unbreakable:1,HideFlags:1} 1
item replace entity @s hotbar.1 with minecraft:gunpowder{display:{Name:'[{"text":"Toggle Chaingun","italic":false,"bold":false,"color":"gray"}]'}}
give @s minecraft:tripwire_hook{AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Slot:"mainhand",Amount:10,Operation:0,UUID:[I;1021537433,1056320062,1069698063,1260727900]},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Slot:"mainhand",Amount:-0.4,Operation:2,UUID:[I;1021537433,1056320062,1069698063,1260727900]}],Unbreakable:1,display:{Name:'[{"text":"Overclock","color":"gray","bold":true,"italic":false}]'},HideFlags:3} 1
item replace entity @s armor.head with conduit{display:{Name:'[{"text":"Brain","italic":false,"color":"light_purple"}]'}} 1

## SOUND
execute at @s run playsound minecraft:item.armor.equip_netherite master @s ~ ~ ~ 1 1 1

## TITLE
title @s reset

## SCOREBOARD
scoreboard players set @s useSentry 0
scoreboard players set @s sentry 0
# scoreboard players reset @a[scores={gray=1..}] gray