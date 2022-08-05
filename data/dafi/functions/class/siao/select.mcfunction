## RESET
execute at @s run function dafi:game/select/reset

## TAG
tag @s add siao

## ITEM
execute if score #weapon weapon matches 1 run item replace entity @s[team=red] hotbar.0 with crossbow{mainhand:1,display:{Name:'[{"text":"JSN ","italic":false,"color":"yellow","bold":true},{"text":"X13","italic":false,"bold":true,"color":"gold"}]',Lore:['[{"text":"death.attack.firework.item","italic":false,"color":"dark_green"}]']},Enchantments:[{id:"quick_charge",lvl:5},{id:"knockback",lvl:1}],Unbreakable:1,ChargedProjectiles:[{id:"minecraft:tipped_arrow",Count:1b,tag:{CustomPotionColor:16711680,CustomPotionEffects:[{Id:7,Duration:1,Amplifier:4,ShowParticles:0b,ShowIcon:0b}]}}],Charged:1b,Unbreakable:1,HideFlags:36} 1
execute if score #weapon weapon matches 1 run item replace entity @s[team=blue] hotbar.0 with crossbow{mainhand:1,display:{Name:'[{"text":"JSN ","italic":false,"color":"yellow","bold":true},{"text":"X13","italic":false,"bold":true,"color":"gold"}]',Lore:['[{"text":"death.attack.firework.item","italic":false,"color":"dark_green"}]']},Enchantments:[{id:"quick_charge",lvl:5},{id:"knockback",lvl:1}],Unbreakable:1,ChargedProjectiles:[{id:"minecraft:tipped_arrow",Count:1b,tag:{CustomPotionColor:255,CustomPotionEffects:[{Id:7,Duration:1,Amplifier:4,ShowParticles:0b,ShowIcon:0b}]}}],Charged:1b,Unbreakable:1,HideFlags:36} 1
item replace entity @s armor.feet with leather_boots{Enchantments:[{id:"binding_curse",lvl:1},{id:"depth_strider",lvl:3}],Unbreakable:1,display:{color:65484},HideFlags:1} 1
item replace entity @s hotbar.1 with minecraft:bamboo{mainhand:1,display:{Name:'[{"text":"Jade Winged","italic":false,"bold":true,"color":"dark_green"},{"text":" Spear","color":"green"}]',Lore:['[{"text":"This is a joke class how...","italic":false,"color":"dark_gray"}]','[{"text":"how did you even select this","italic":false,"color":"dark_gray"}]','[{"text":"have fun I guess...","italic":false,"color":"dark_gray"}]']},Enchantments:[{id:sharpness,lvl:9},{id:smite,lvl:5}]} 1
item replace entity @s weapon.offhand with ender_eye{display:{Name:'[{"text":"Fa","italic":false,"bold":true,"color":"light_purple"},{"text":"de ","color":"dark_purple"},{"text":"| ","color":"white","bold":false},{"text":"[RMB]","color":"white","bold":false}]'}} 1
function dafi:mechanics/hat_system/hat

## SOUND
execute at @s run playsound minecraft:item.armor.equip_netherite master @s ~ ~ ~ 1 1 1

## TITLE
title @s reset

## SCOREBOARD
scoreboard players set @s lwcCharges 3
# scoreboard players reset @a[scores={magenta=1..}] magenta