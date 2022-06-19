## WHEN CLOSE
function dafi:class/shade/close

## CAST
# function dafi:class/shade/cast

## THROW SWORD
execute if score @s dropNSword matches 1 at @s run function dafi:class/shade/summon
execute if score @s dropNSword matches 1 at @s anchored eyes run particle minecraft:sweep_attack ^ ^-0.25 ^1 0 0 0 1 3 normal
execute if score @s dropNSword matches 1 at @s run playsound minecraft:block.soul_sand.place master @a[distance=..10] ~ ~ ~ 1 1.5
execute if score @s dropNSword matches 1 at @s run playsound minecraft:entity.evoker.cast_spell master @a[distance=..10] ~ ~ ~ 1 1
execute if score @s dropNSword matches 1 at @s run playsound minecraft:entity.allay.ambient_with_item master @a[distance=..10] ~ ~ ~ 1 2
execute if score @s dropNSword matches 1 if score @s checkIn matches 0 run item replace entity @s hotbar.1 with minecraft:iron_sword{display:{Name:'[{"text":"Oni","italic":false,"bold":true,"color":"gray"},{"text":"kiri ","color":"dark_gray"},{"text":"| ","color":"dark_gray","bold":false},{"text":"[","color":"white","bold":false},{"text":"⌛","bold":false},{"text":"]","bold":false,"color":"white"},{"text":"/","bold":false,"color":"dark_gray"},{"text":"[","bold":false,"color":"white"},{"text":"⌛","bold":false},{"text":"]","bold":false,"color":"white"}]',Lore:['[{"text":"Type: 🧪 ","italic":false,"color":"green"},{"text":"/","color":"dark_green"},{"text":" 🔥"}]']},Unbreakable:1,Enchantments:[{id:"minecraft:unbreaking",lvl:1}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Slot:"mainhand",Amount:7.5,Operation:0,UUID:[I;1066926894,1082457494,1046104757,1644840798]},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Slot:"mainhand",Amount:-0.2,Operation:2,UUID:[I;1066926894,1082457494,1046104757,1644840798]}],HideFlags:3} 1
execute if score @s dropNSword matches 60 at @s run playsound minecraft:block.ender_chest.open master @a[distance=..10] ~ ~ ~ 1 1.3
execute if score @s dropNSword matches 60 at @s run playsound minecraft:entity.allay.ambient_with_item master @a[distance=..10] ~ ~ ~ 1 1.2
execute if score @s dropNSword matches 60 if score @s checkIn matches 0 run item replace entity @s hotbar.1 with minecraft:netherite_sword{display:{Name:'[{"text":"Oni","italic":false,"bold":true,"color":"light_purple"},{"text":"kiri ","color":"dark_purple"},{"text":"|","color":"dark_gray","bold":false},{"text":" ","color":"gray","bold":false},{"text":"[Q]","color":"white","bold":false},{"text":"/","color":"dark_gray","bold":false},{"text":"[RMB]","color":"white","bold":false}]',Lore:['[{"text":"Type: 🧪 ","italic":false,"color":"green"},{"text":"/","color":"dark_green"},{"text":" 🔥"}]']},Unbreakable:1,Enchantments:[{id:"minecraft:unbreaking",lvl:1}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Slot:"mainhand",Amount:10,Operation:0,UUID:[I;1069942072,1057578295,1077372865,1692893952]},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Slot:"mainhand",Amount:-0.2,Operation:2,UUID:[I;1069942072,1057578295,1077372865,1692893952]}],HideFlags:7} 1

execute if score @s dropNSword matches 60 run scoreboard players set @s dropNSword 0
execute if score @s dropNSword matches 1.. run scoreboard players add @s dropNSword 1

## Advancement Charge Check
scoreboard players set @s[advancements={dafi:eye=true}] chargeCheck 1
execute if score @s chargeCheck matches 1 at @s run particle minecraft:portal ~ ~1 ~ 0 0 0 1 20
function dafi:class/shade/chargecheck
advancement revoke @s only dafi:eye
function dafi:class/shade/charged

## OFFHAND READY
function dafi:class/shade/offhand

## DEATHCHECK
execute if score @s deathcheck matches 1.. if score @s charge matches 1.. run scoreboard players set @s step 190
execute if score @s deathcheck matches 1.. if score @s charge matches 1.. run tag @s remove wallrunP

## KILL SWORD
kill @e[type=item,nbt={Item:{id:"minecraft:netherite_sword"}}]