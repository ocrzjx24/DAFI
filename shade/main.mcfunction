
execute as @a run function dafi:class/shade/bound

## MARK
execute as @s run function dafi:class/shade/mark

execute as @s[advancements={dafi:killbound=true},team=red] run kill @a[team=!red,tag=bound]
execute as @s[advancements={dafi:killbound=true},team=red] run scoreboard players reset @a[team=!red,tag=bound] bound
execute as @s[advancements={dafi:killbound=true},team=red] run tag @a[team=!red,tag=bound] remove bound
advancement revoke @s[advancements={dafi:killbound=true},team=red] only dafi:killbound

execute as @s[advancements={dafi:killbound=true},team=blue] run kill @a[team=!blue,tag=bound]
execute as @s[advancements={dafi:killbound=true},team=blue] run scoreboard players reset @a[team=!blue,tag=bound] bound
execute as @s[advancements={dafi:killbound=true},team=blue] run tag @a[team=!blue,tag=bound] remove bound
advancement revoke @s[advancements={dafi:killbound=true},team=blue] only dafi:killbound


## ONIKIRI
effect give @s[scores={step=1}] minecraft:nausea 1 10 true
effect give @s[scores={step=1}] minecraft:slowness 1 1 true
effect clear @s[scores={step=10}] minecraft:slowness
execute at @s[scores={step=1..10}] run particle minecraft:portal ~ ~1 ~ 0.01 0.01 0.01 1 100
execute at @s[scores={step=10..65}] run particle minecraft:witch ~ ~ ~ 0 0 0 0.001 2
tag @s[scores={step=10}] add wallrunP
item replace entity @s[scores={step=10}] armor.feet with minecraft:air
item replace entity @s[scores={step=10}] armor.head with minecraft:air
item replace entity @s[scores={step=10}] container.1 with minecraft:diamond_sword{display:{Name:'[{"text":"Oni","italic":false,"bold":true,"color":"aqua"},{"text":"kiri","color":"dark_aqua"},{"text":" | ","color":"dark_gray","bold":false},{"text":"[","color":"white","bold":false},{"text":"⌛","color":"gray","bold":false},{"text":"]","color":"white","bold":false},{"text":"/","color":"dark_gray","bold":false},{"text":"[","color":"white","bold":false},{"text":"⌛","color":"gray","bold":false},{"text":"]","color":"white","bold":false}]',Lore:['[{"text":"Type: 🧪 ","italic":false,"color":"green"},{"text":"/","color":"dark_green"},{"text":" 🔥"}]']},Unbreakable:1,Enchantments:[{id:"minecraft:unbreaking",lvl:1}],AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Slot:"mainhand",Amount:5,Operation:2,UUID:[I;1060846863,1081870173,1010577874,1859017242]},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Slot:"mainhand",Amount:20,Operation:0,UUID:[I;1060846863,1081870173,1010577874,1859017242]}],HideFlags:7} 1
execute as @s[scores={step=10}] at @s run attribute @s minecraft:generic.attack_speed base set 50
effect give @s[scores={step=10}] minecraft:speed 2 7 true
effect clear @s[scores={step=40}] minecraft:speed
effect give @s[scores={step=10}] minecraft:invisibility 2 0 true
effect clear @s[scores={step=40}] minecraft:invisibility
execute at @s[scores={step=10}] run playsound minecraft:block.chorus_flower.grow master @a[distance=..10] ~ ~ ~ 100 1 1
execute as @s[scores={step=10}] at @s run attribute @s minecraft:generic.knockback_resistance base set 100
execute at @s[scores={step=10..65}] run particle minecraft:squid_ink ~ ~ ~ 0.2 0.2 0.2 0.01 1 force
title @s[scores={step=10..11}] actionbar {"text":"SHADOWSTEP","bold":true,"color":"light_purple"}
clear @s[scores={step=50}] minecraft:diamond_sword
item replace entity @s[scores={step=50}] container.1 with minecraft:iron_sword{display:{Name:'[{"text":"Oni","italic":false,"bold":true,"color":"gray"},{"text":"kiri ","color":"dark_gray"},{"text":"| ","color":"dark_gray","bold":false},{"text":"[","color":"white","bold":false},{"text":"⌛","bold":false},{"text":"]","bold":false,"color":"white"},{"text":"/","bold":false,"color":"dark_gray"},{"text":"[","bold":false,"color":"white"},{"text":"⌛","bold":false},{"text":"]","bold":false,"color":"white"}]',Lore:['[{"text":"Type: 🧪 ","italic":false,"color":"green"},{"text":"/","color":"dark_green"},{"text":" 🔥"}]']},Unbreakable:1,Enchantments:[{id:"minecraft:unbreaking",lvl:1}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Slot:"mainhand",Amount:7.5,Operation:0,UUID:[I;1066926894,1082457494,1046104757,1644840798]},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Slot:"mainhand",Amount:-0.2,Operation:2,UUID:[I;1066926894,1082457494,1046104757,1644840798]}],HideFlags:3} 1
execute as @s[scores={step=40}] at @s run attribute @s minecraft:generic.attack_speed base set 3.2
execute as @s[scores={step=40}] at @s run attribute @s minecraft:generic.knockback_resistance base set 0
item replace entity @s[scores={step=40}] armor.feet with minecraft:leather_boots{Enchantments:[{id:"binding_curse",lvl:1},{id:"depth_strider",lvl:3}],Unbreakable:1,display:{color:4980889}} 1
item replace entity @s[scores={step=40}] armor.head with minecraft:conduit{display:{Name:'[{"text":"Brain","italic":false,"color":"light_purple"}]'}} 1
tag @s[scores={step=65}] remove wallrunP
clear @s[scores={step=130}] minecraft:iron_sword
item replace entity @s[scores={step=130}] hotbar.1 with minecraft:netherite_sword{display:{Name:'[{"text":"Oni","italic":false,"bold":true,"color":"light_purple"},{"text":"kiri ","color":"dark_purple"},{"text":"| ","color":"dark_gray","bold":false},{"text":"[Q]","color":"white","bold":false},{"text":"/","color":"dark_gray","bold":false},{"text":"[RMB]","color":"white","bold":false}]',Lore:['[{"text":"Type: 🧪 ","italic":false,"color":"green"},{"text":"/","color":"dark_green"},{"text":" 🔥"}]']},Unbreakable:1,Enchantments:[{id:"minecraft:unbreaking",lvl:1}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Slot:"mainhand",Amount:10,Operation:0,UUID:[I;1069942072,1057578295,1077372865,1692893952]},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Slot:"mainhand",Amount:-0.2,Operation:2,UUID:[I;1069942072,1057578295,1077372865,1692893952]}],HideFlags:7} 1
execute at @s[scores={step=130}] run playsound minecraft:block.ender_chest.open master @a[distance=..10] ~ ~ ~ 100 1 1
title @s[scores={step=130}] actionbar {"text":"\u2605 SPIRIT RETURNED \u2605","bold":true,"color":"light_purple"}
scoreboard players reset @s[scores={step=130..}] step
scoreboard players add @s[scores={step=1..}] step 1

## DEATHCHECK
execute if entity @s[scores={deathcheck=1..,step=1..}] run scoreboard players set @s[scores={deathcheck=1..,step=1..}] step 119
execute if entity @s[scores={deathcheck=1..,step=1..}] run tag @s[scores={deathcheck=1..,step=1..}] remove wallrunP

## KILL
kill @e[type=item,nbt={Item:{id:"minecraft:netherite_sword"}}]
