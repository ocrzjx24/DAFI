## PLACE DECOY
execute as @s[scores={dropNAxe=1}] at @s run function dafi:class/swamp/drop
execute as @s[scores={dropNAxe=1}] at @s run playsound minecraft:entity.ravager.step master @a ~ ~ ~ 1 1
execute as @s[scores={dropNAxe=30}] at @s run playsound minecraft:entity.ravager.step master @a ~ ~ ~ 1 2
clear @s[scores={dropNAxe=30..}] wooden_axe
item replace entity @s[scores={dropNAxe=30}] hotbar.1 with netherite_axe{display:{Name:'[{"text":"Maul","italic":false,"color":"dark_red","bold":true},{"text":" ","color":"#ffd814"},{"text":"| ","color":"gray"},{"text":"[Q]/[RMB]","color":"white","bold":false}]',Lore:['[{"text":"Thousands disappeared. None were ever found.","italic":false}]']},Unbreakable:1,HideFlags:3,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Slot:"mainhand",Amount:10,Operation:0,UUID:[I;1014886342,1084823496,1064780877,1393545524]},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Slot:"mainhand",Amount:-0.2,Operation:2,UUID:[I;1014886342,1084823496,1064780877,1393545524]}],Enchantments:[{id:"minecraft:thorns",lvl:1}]} 1
scoreboard players reset @s[scores={dropNAxe=30..}] dropNAxe
scoreboard players add @s[scores={dropNAxe=1..}] dropNAxe 1
kill @e[type=item,nbt={Item:{id:"minecraft:netherite_axe"}}]

## TEXT RANDOMIZER
title @s[scores={swampTPTrigger=10,swampRandom=1}] actionbar {"text":"RUN.","bold":true,"color":"dark_red"}
title @s[scores={swampTPTrigger=10,swampRandom=2}] actionbar {"text":"FLEE.","bold":true,"color":"dark_red"}
title @s[scores={swampTPTrigger=10,swampRandom=3}] actionbar {"text":"HIDE.","bold":true,"color":"dark_red"}
title @s[scores={swampTPTrigger=10,swampRandom=4}] actionbar {"text":"DIE.","bold":true,"color":"dark_red"}

## SCOREBOARD RANDOMIZER
scoreboard players set @s[scores={swampRandom=4..}] swampRandom 1
scoreboard players add @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:ender_pearl"}]}] swampRandom 1

## TELEPORT
execute at @s[scores={swampTPTrigger=1}] run playsound minecraft:block.portal.trigger master @a[distance=..10] ~ ~ ~ 0.4 2 1
execute at @s[scores={swampTPTrigger=10}] run function dafi:class/swamp/teleport
execute at @s[scores={swampTPTrigger=10}] run playsound minecraft:entity.ravager.step master @a ~ ~ ~ 1 1
execute at @s[scores={swampTPTrigger=10}] run playsound minecraft:entity.elder_guardian.curse master @a ~ ~ ~ 0.5 1
execute at @s[scores={swampTPTrigger=10}] run playsound minecraft:entity.zombie.converted_to_drowned master @a[distance=..10] ~ ~ ~ 1 0.7
execute at @s[scores={swampTPTrigger=5}] run effect give @a[scores={swampTPTrigger=5}] minecraft:blindness 2 1 true
execute at @s[scores={swampTPTrigger=20}] run effect clear @a[scores={swampTPTrigger=20}]
execute at @s[scores={swampTPTrigger=1..30}] run scoreboard players set @s slowCheck 1
execute at @s[scores={swampTPTrigger=5}] run scoreboard players set @s slow 25
execute at @s[scores={swampTPTrigger=10}] run particle minecraft:block dirt ~ ~ ~ 0.5 0.5 0.5 1 200 force
execute at @s[scores={swampTPTrigger=10}] run particle minecraft:block redstone_block ~ ~ ~ 0.5 0.5 0.5 1 100 force
title @s[scores={swampTPTrigger=130}] actionbar {"text":"\u2605 FEAR ME. \u2605","bold":true,"color":"dark_red"}
execute at @s[scores={swampTPTrigger=130}] run playsound minecraft:entity.ravager.step master @a ~ ~ ~ 1 2
execute at @s[scores={swampTPTrigger=130}] run playsound minecraft:entity.evoker.prepare_attack master @a ~ ~ ~ 1 2
item replace entity @s[scores={swampTPTrigger=130}] weapon.offhand with ender_pearl{display:{Name:'[{"text":"Mire","italic":false,"bold":true,"color":"dark_red"}]'},Enchantments:[{id:"minecraft:unbreaking",lvl:10}],HideFlags:1} 1
scoreboard players reset @s[scores={swampTPTrigger=130..}] swampTPTrigger
scoreboard players add @s[scores={swampTPTrigger=1..}] swampTPTrigger 1
kill @e[type=ender_pearl]

## MIRE
execute as @s[predicate=dafi:is_sneaking] at @s run function dafi:class/swamp/particles

## KILL ARMOR STAND
execute as @e[type=armor_stand,tag=swampTP] if score @s sbsid = @a[scores={deathcheck=1},limit=1] sbsid run kill @s



















