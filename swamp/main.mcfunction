## PLACE DECOY
execute as @s[scores={dropNAxe=1}] at @s run function dafi:class/swamp/drop
execute as @s[scores={dropNAxe=1}] at @s run playsound minecraft:entity.ravager.step master @a ~ ~ ~ 1 1
execute as @s[scores={dropNAxe=30}] at @s run playsound minecraft:entity.ravager.step master @a ~ ~ ~ 1 2
clear @s[scores={dropNAxe=30..}] wooden_axe
item replace entity @s[scores={dropNAxe=30}] hotbar.1 with netherite_axe{display:{Name:'[{"text":"Maul","italic":false,"bold":true,"color":"dark_red"}]'},Unbreakable:1,HideFlags:3,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Slot:"mainhand",Amount:10,Operation:0,UUID:[I;1014886342,1084823496,1064780877,1393545524]},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Slot:"mainhand",Amount:-0.2,Operation:2,UUID:[I;1014886342,1084823496,1064780877,1393545524]}],Enchantments:[{id:"minecraft:thorns",lvl:1}]} 1
scoreboard players reset @s[scores={dropNAxe=30..}] dropNAxe
scoreboard players add @s[scores={dropNAxe=1..}] dropNAxe 1
kill @e[type=item,nbt={Item:{id:"minecraft:netherite_axe"}}]

## TELEPORT
execute at @s[scores={swampTPTrigger=1}] run function dafi:class/swamp/teleport
execute at @s[scores={swampTPTrigger=1}] run playsound minecraft:entity.ravager.step master @a ~ ~ ~ 1 1
execute at @s[scores={swampTPTrigger=1}] run playsound minecraft:entity.elder_guardian.curse master @a ~ ~ ~ 0.5 1
execute at @s[scores={swampTPTrigger=120}] run playsound minecraft:entity.ravager.step master @a ~ ~ ~ 1 2
execute at @s[scores={swampTPTrigger=120}] run playsound minecraft:entity.evoker.prepare_attack master @a ~ ~ ~ 1 2
item replace entity @s[scores={swampTPTrigger=120}] weapon.offhand with ender_pearl{display:{Name:'[{"text":"Mire","italic":false,"bold":true,"color":"dark_red"}]'},Enchantments:[{id:"minecraft:unbreaking",lvl:10}],HideFlags:1} 1
scoreboard players reset @s[scores={swampTPTrigger=120..}] swampTPTrigger
scoreboard players add @s[scores={swampTPTrigger=1..}] swampTPTrigger 1
kill @e[type=ender_pearl]

## MIRE
execute as @s[predicate=dafi:is_sneaking] at @s run function dafi:class/swamp/particles



















