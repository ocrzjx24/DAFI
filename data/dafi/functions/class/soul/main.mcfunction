## REAVER HIT
execute at @s[scores={reaver=1}] run playsound minecraft:entity.blaze.ambient master @s[scores={reaver=1}] ~ ~ ~ 100000 2 1
title @s[nbt={Inventory:[{Slot:100b,id:"minecraft:golden_boots"}]},scores={reaver=1..}] actionbar {"text":"\u2605 SOULSTEAL \u2605","bold":true,"color":"yellow"}
execute at @s[scores={reaver=1}] run effect give @s[scores={reaver=1}] minecraft:regeneration 1 10 true
execute at @s[scores={reaver=1}] run effect give @s[scores={reaver=1}] minecraft:speed 2 5 true
execute at @s[scores={reaver=1}] run particle minecraft:soul_fire_flame ~ ~1 ~ 0.2 0.2 0.2 0.1 10 normal
scoreboard players reset @s[scores={reaver=1..}] reaver

## DASH
execute as @s[scores={dropReaver=1}] at @s run function dafi:class/soul/drop
title @s[scores={dropReaver=1}] actionbar {"text":"WOOSH","bold":true,"color":"yellow"}
title @s[scores={dropReaver=10}] actionbar {"text":"","bold":true,"color":"yellow"}
execute at @s[scores={dropReaver=1..}] run scoreboard players add @s dropReaver 1
execute at @s[scores={dropReaver=1..20}] run particle soul_fire_flame ~ ~ ~ 0.1 0.1 0.1 0.1 1 force
execute at @s[scores={dropReaver=61}] run item replace entity @s hotbar.1 with golden_hoe{display:{Name:'[{"text":"Soul ","italic":false,"bold":true,"color":"yellow"},{"text":"Reaver ","italic":false,"bold":true,"color":"aqua"},{"text":"|","color":"gray","bold":false},{"text":" ","color":"gray","bold":false},{"text":"[Q]","color":"white","bold":false}]'},Enchantments:[{id:"unbreaking",lvl:1}],Unbreakable:1,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Slot:"mainhand",Amount:100,Operation:0,UUID:[I;1022498064,1087262705,1008143892,1256304346]},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Slot:"mainhand",Amount:8,Operation:0,UUID:[I;1022498064,1087262705,1008143892,1256304346]}],HideFlags:3} 1
scoreboard players reset @s[scores={dropReaver=61..}] dropReaver

## PARTICLES
execute at @s[nbt={Inventory:[{Slot:100b,id:"minecraft:golden_boots"}]}] run particle minecraft:soul ~ ~ ~ 0.2 0.3 0.2 0.001 1

## EFFECT
effect give @s speed 1 2 true

## KILLCHECK
effect give @s[scores={killcheck=1}] minecraft:speed 3 5 true
effect give @s[scores={killcheck=1}] minecraft:regeneration 1 9 true
title @s[scores={killcheck=1}] actionbar {"text":"\u2605 SOULSTEAL \u2605","bold":true,"color":"yellow"}

## KILL
kill @e[type=item,nbt={Item:{id:"minecraft:golden_hoe"}}]