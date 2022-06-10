## UPDRAFT
execute if score @s feather matches 1 at @s run function dafi:class/saint/drop
execute if score @s feather matches 20 run item replace entity @s armor.chest with elytra{Unbreakable:1,HideFlags:4} 1
execute if score @s feather matches 62.. run clear @s minecraft:elytra
execute if score @s feather matches 200 run item replace entity @s hotbar.1 with feather{display:{Name:'[{"text":"Wings","italic":false,"bold":true,"color":"white"}]'},Enchantments:[{id:"unbreaking",lvl:1}],Unbreakable:1,HideFlags:1} 1
execute if score @s feather matches 100.. run clear @s minecraft:elytra
# deathcheck
execute if score @s feather matches 1.. if score @s deathcheck matches 1.. run execute if entity @s run scoreboard players set @s feather 199
# increment/reset
execute if score @s feather matches 200.. run scoreboard players reset @s feather
execute if score @s feather matches 1.. run scoreboard players add @s feather 1

## PASSIVE
execute at @s run function dafi:class/saint/sneak

## HITBOX INCREASE
execute if score @s feather matches 1..100 at @s run function dafi:class/saint/hitbox

## PARTICLES
execute at @s run particle minecraft:enchant ~ ~0.2 ~ 0.4 0.1 0.4 0.001 1 normal

## TEXT
execute if score @s feather matches 199 run title @s actionbar {"text":"\u2605 PREPARE TO ASCEND \u2605","bold":true}

## SOUND
execute if score @s feather matches 199 at @s run playsound minecraft:block.beacon.activate master @a[distance=..10] ~ ~ ~ 1 1 1

## KILL
kill @e[type=item,nbt={Item:{id:"minecraft:feather"}}]