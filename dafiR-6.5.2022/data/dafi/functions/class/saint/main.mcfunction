## UPDRAFT
execute at @s[scores={feather=1}] run function dafi:class/saint/drop
item replace entity @s[scores={feather=20}] armor.chest with elytra{Unbreakable:1,HideFlags:4} 1
clear @s[scores={feather=62..}] minecraft:elytra
item replace entity @s[scores={feather=200}] hotbar.1 with feather{display:{Name:'[{"text":"Wings","italic":false,"bold":true,"color":"white"}]'},Enchantments:[{id:"unbreaking",lvl:1}],Unbreakable:1,HideFlags:1} 1
clear @s[scores={feather=100..}] minecraft:elytra
# deathcheck
execute if entity @s[scores={deathcheck=1..,feather=1..}] run scoreboard players set @a[scores={deathcheck=1..,feather=1..}] feather 199
# increment/reset
scoreboard players reset @s[scores={feather=200..}] feather
scoreboard players add @s[scores={feather=1..}] feather 1

## PASSIVE
execute at @s run function dafi:class/saint/sneak

## HITBOX INCREASE
execute as @s[scores={feather=1..100}] at @s run function dafi:class/saint/hitbox

## PARTICLES
execute at @s[nbt={Inventory:[{Slot:100b,id:"minecraft:leather_boots",tag:{display:{color:16777215}}}]}] run particle minecraft:enchant ~ ~0.2 ~ 0.4 0.1 0.4 0.001 3 normal

## TEXT
title @s[scores={feather=199}] actionbar {"text":"\u2605 PREPARE TO ASCEND \u2605","bold":true}

## SOUND
execute at @s[scores={feather=199}] run playsound minecraft:block.beacon.activate master @a[distance=..10] ~ ~ ~ 1 1 1

## KILL
kill @e[type=item,nbt={Item:{id:"minecraft:feather"}}]