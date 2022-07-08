## REAVER HIT
execute if score @s reaver matches 1 at @s run playsound minecraft:entity.blaze.ambient master @s[scores={reaver=1}] ~ ~ ~ 100000 2 1
execute if score @s reaver matches 1 at @s run effect give @s[scores={reaver=1}] minecraft:regeneration 1 10 true
execute if score @s reaver matches 1 at @s run effect give @s[scores={reaver=1}] minecraft:speed 2 5 true
execute if score @s reaver matches 1 at @s run particle minecraft:sculk_soul ~ ~1 ~ 0 0 0 0.1 10 normal
execute if score @s reaver matches 1.. run title @s actionbar {"text":"\u2605 SOULSTEAL \u2605","bold":true,"color":"#ffd814"}
execute if score @s reaver matches 1.. run scoreboard players reset @s reaver

## DASH
execute if score @s dropReaver matches 1 at @s run function dafi:class/soul/drop
execute if score @s dropReaver matches 1 run title @s actionbar {"text":"WOOSH","bold":true,"color":"#ffd814"}
#execute if score @s dropReaver matches 3 run effect clear @s levitation
execute if score @s dropReaver matches 10 run title @s actionbar {"text":"","bold":true,"color":"yellow"}
execute if score @s dropReaver matches 1.. run scoreboard players add @s dropReaver 1
execute if score @s dropReaver matches 1..20 at @s run particle soul_fire_flame ~ ~ ~ 0 0 0 0.1 1 force
execute if score @s dropReaver matches 61 at @s run playsound entity.blaze.shoot master @s ~ ~ ~ 0.4 2 0.4
execute if score @s dropReaver matches 61 at @s run item replace entity @s hotbar.1 with golden_hoe{display:{Name:'[{"text":"Soul ","italic":false,"color":"#ffd814","bold":true},{"text":"Reaver","color":"aqua"},{"text":" "},{"text":"| ","color":"gray"},{"text":"[Q]","color":"white","bold":false}]',Lore:['[{"text":"For millennia, all they could do was run. Even in death, they run.","italic":false}]']},Enchantments:[{id:"unbreaking",lvl:1}],Unbreakable:1,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Slot:"mainhand",Amount:100,Operation:0,UUID:[I;1022498064,1087262705,1008143892,1256304346]},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Slot:"mainhand",Amount:8,Operation:0,UUID:[I;1022498064,1087262705,1008143892,1256304346]}],HideFlags:3} 1
execute if score @s dropReaver matches 61 run scoreboard players reset @s dropReaver

## PARTICLES
execute at @s run particle minecraft:soul ~ ~ ~ 0.2 0.3 0.2 0.001 1

## EFFECT
effect give @s speed 1 2 true

## KILLCHECK
execute if score @s killcheck matches 1 run effect give @s minecraft:speed 3 5 true
execute if score @s killcheck matches 1 run effect give @s minecraft:regeneration 1 9 true
execute if score @s killcheck matches 1 run title @s actionbar {"text":"\u2605 SOULSTEAL \u2605","bold":true,"color":"#ffd814"}

## KILL
kill @e[type=item,nbt={Item:{id:"minecraft:golden_hoe"}}]