## CHARGE INITIALIZE
execute if score @s charge matches 1 at @s run playsound minecraft:entity.ender_eye.death master @s ~ ~ ~ 1 0.75
execute if score @s charge matches 7 at @s run execute at @s run playsound minecraft:entity.ender_eye.death master @s ~ ~ ~ 1 0.9
execute if score @s charge matches 14 at @s run execute at @s run playsound minecraft:entity.ender_eye.death master @s ~ ~ ~ 1 1

execute if score @s charge matches 14 run clear @s ender_eye
execute if score @s charge matches 14 run tag @s add wallrunP
execute if score @s charge matches 14 run effect give @s minecraft:speed 3 7 true
execute if score @s charge matches 14 run effect give @s minecraft:invisibility 3 0 true
execute if score @s charge matches 14 at @s run playsound minecraft:block.chorus_flower.grow master @s[distance=..10] ~ ~ ~ 1 1.7
execute if score @s charge matches 14 at @s run playsound minecraft:entity.wither.ambient master @a[distance=..10] ~ ~ ~ 0.4 2 1
execute if score @s charge matches 14 run item replace entity @s[scores={charge=14}] armor.feet with minecraft:air
execute if score @s charge matches 14 run item replace entity @s[scores={charge=14}] armor.head with minecraft:air

## CHARGE DURATION
#execute at @s[scores={charge=14..74}] run particle minecraft:witch ~ ~ ~ 0 0 0 0.001 2
execute if score @s charge matches 14..74 at @s run particle minecraft:squid_ink ~ ~ ~ 0.2 0.2 0.2 0.01 1 force
execute if score @s charge matches 14..74 at @s run particle minecraft:dust 1 0 0.8 0.8 ~ ~ ~ 0.5 0.5 0.5 0.00000001 3 normal
execute if score @s charge matches 74 run item replace entity @s armor.feet with minecraft:leather_boots{Enchantments:[{id:"binding_curse",lvl:1},{id:"depth_strider",lvl:3}],Unbreakable:1,display:{color:4980889}} 1
execute if score @s charge matches 74 run item replace entity @s armor.head with minecraft:conduit{display:{Name:'[{"text":"Brain","italic":false,"color":"light_purple"}]'}} 1
execute if score @s charge matches 74 run tag @s remove wallrunP


## CHARGE END
execute if score @s charge matches 194 at @s run playsound minecraft:item.armor.equip_elytra master @s ~ ~ ~ 0.6 1
execute if score @s charge matches 194 at @s run playsound minecraft:block.chorus_flower.grow master @s ~ ~ ~ 1 1.3
execute if score @s charge matches 194 run item replace entity @s weapon.offhand with ender_eye{display:{Name:'[{"text":"Fa","italic":false,"bold":true,"color":"light_purple"},{"text":"de ","color":"dark_purple"},{"text":"| ","color":"white","bold":false},{"text":"[RMB]","color":"white","bold":false}]'}} 1

## CHARGE TICK UP
execute if score @s charge matches 194.. run scoreboard players reset @s charge
execute if score @s charge matches 14.. run scoreboard players add @s charge 1