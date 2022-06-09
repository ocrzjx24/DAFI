## WHEN CLOSE
function dafi:class/shade/close

## CAST
function dafi:class/shade/cast

## THROW SWORD
execute at @s[scores={dropNSword=1}] run function dafi:class/shade/summon
execute at @s[scores={dropNSword=1}] anchored eyes run particle minecraft:sweep_attack ^ ^-0.25 ^1 0 0 0 1 3 normal
execute at @s[scores={dropNSword=1}] run playsound minecraft:block.soul_sand.place master @a ~ ~ ~ 1 1.5
execute at @s[scores={dropNSword=1}] run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 1 1
execute at @s[scores={dropNSword=1}] run playsound minecraft:entity.allay.ambient_with_item master @a ~ ~ ~ 1 2
item replace entity @s[scores={dropNSword=1,checkIn=0}] hotbar.1 with minecraft:iron_sword{display:{Name:'[{"text":"Oni","italic":false,"bold":true,"color":"gray"},{"text":"kiri ","color":"dark_gray"},{"text":"| ","color":"dark_gray","bold":false},{"text":"[","color":"white","bold":false},{"text":"⌛","bold":false},{"text":"]","bold":false,"color":"white"},{"text":"/","bold":false,"color":"dark_gray"},{"text":"[","bold":false,"color":"white"},{"text":"⌛","bold":false},{"text":"]","bold":false,"color":"white"}]',Lore:['[{"text":"Type: 🧪 ","italic":false,"color":"green"},{"text":"/","color":"dark_green"},{"text":" 🔥"}]']},Unbreakable:1,Enchantments:[{id:"minecraft:unbreaking",lvl:1}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Slot:"mainhand",Amount:7.5,Operation:0,UUID:[I;1066926894,1082457494,1046104757,1644840798]},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Slot:"mainhand",Amount:-0.2,Operation:2,UUID:[I;1066926894,1082457494,1046104757,1644840798]}],HideFlags:3} 1
execute at @s[scores={dropNSword=60}] run playsound minecraft:block.ender_chest.open master @a ~ ~ ~ 1 1.3
execute at @s[scores={dropNSword=60}] run playsound minecraft:entity.allay.ambient_with_item master @a ~ ~ ~ 1 1.2
item replace entity @s[scores={dropNSword=60,checkIn=0}] hotbar.1 with minecraft:netherite_sword{display:{Name:'[{"text":"Oni","italic":false,"bold":true,"color":"light_purple"},{"text":"kiri ","color":"dark_purple"},{"text":"|","color":"dark_gray","bold":false},{"text":" ","color":"gray","bold":false},{"text":"[Q]","color":"white","bold":false},{"text":"/","color":"dark_gray","bold":false},{"text":"[RMB]","color":"white","bold":false}]',Lore:['[{"text":"Type: 🧪 ","italic":false,"color":"green"},{"text":"/","color":"dark_green"},{"text":" 🔥"}]']},Unbreakable:1,Enchantments:[{id:"minecraft:unbreaking",lvl:1}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Slot:"mainhand",Amount:10,Operation:0,UUID:[I;1069942072,1057578295,1077372865,1692893952]},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Slot:"mainhand",Amount:-0.2,Operation:2,UUID:[I;1069942072,1057578295,1077372865,1692893952]}],HideFlags:7} 1
scoreboard players set @s[scores={dropNSword=60..}] dropNSword 0
scoreboard players add @s[scores={dropNSword=1..}] dropNSword 1

## Advancement Charge Check
scoreboard players set @s[advancements={dafi:eye=true}] chargeCheck 1
execute at @s[scores={chargeCheck=1}] run particle minecraft:portal ~ ~1 ~ 0 0 0 1 20
execute as @s run function dafi:class/shade/chargecheck
advancement revoke @s only dafi:eye
function dafi:class/shade/charged

## DEATHCHECK
execute if entity @s[scores={deathcheck=1..,charge=1..}] run scoreboard players set @s step 193
execute if entity @s[scores={deathcheck=1..,charge=1..}] run tag @s remove wallrunP

## KILL SWORD
kill @e[type=item,nbt={Item:{id:"minecraft:netherite_sword"}}]

## DEATHCHECK
