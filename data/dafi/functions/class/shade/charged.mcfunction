## CHARGE INITIALIZE
execute at @s[scores={charge=1}] run playsound minecraft:entity.ender_eye.death master @s ~ ~ ~ 1 0.75
execute at @s[scores={charge=7}] run playsound minecraft:entity.ender_eye.death master @s ~ ~ ~ 1 0.9
execute at @s[scores={charge=14}] run playsound minecraft:entity.ender_eye.death master @s ~ ~ ~ 1 1

clear @s[scores={charge=14}] ender_eye
tag @s[scores={charge=14}] add wallrunP
effect give @s[scores={charge=14}] minecraft:speed 3 7 true
effect give @s[scores={charge=14}] minecraft:invisibility 3 0 true
execute at @s[scores={charge=14}] run playsound minecraft:block.chorus_flower.grow master @s[distance=..10] ~ ~ ~ 1 1.7
execute at @s[scores={charge=14}] run playsound minecraft:entity.wither.ambient master @a[distance=..10] ~ ~ ~ 0.4 2 1
item replace entity @s[scores={charge=14}] armor.feet with minecraft:air
item replace entity @s[scores={charge=14}] armor.head with minecraft:air

## CHARGE DURATION
#execute at @s[scores={charge=14..74}] run particle minecraft:witch ~ ~ ~ 0 0 0 0.001 2
execute at @s[scores={charge=14..74}] run particle minecraft:squid_ink ~ ~ ~ 0.2 0.2 0.2 0.01 1 force
execute at @s[scores={charge=14..74}] run particle minecraft:dust 1 0 0.8 0.8 ~ ~ ~ 0.5 0.5 0.5 0.00000001 3 normal
item replace entity @s[scores={charge=74}] armor.feet with minecraft:leather_boots{Enchantments:[{id:"binding_curse",lvl:1},{id:"depth_strider",lvl:3}],Unbreakable:1,display:{color:4980889}} 1
item replace entity @s[scores={charge=74}] armor.head with minecraft:conduit{display:{Name:'[{"text":"Brain","italic":false,"color":"light_purple"}]'}} 1
tag @s[scores={charge=74}] remove wallrunP


## CHARGE END
execute at @s[scores={charge=194}] run playsound minecraft:item.armor.equip_elytra master @s ~ ~ ~ 0.6 1
execute at @s[scores={charge=194}] run playsound minecraft:block.chorus_flower.grow master @s ~ ~ ~ 1 1.3
item replace entity @s[scores={charge=194}] weapon.offhand with ender_eye{display:{Name:'[{"text":"Fa","italic":false,"bold":true,"color":"light_purple"},{"text":"de ","color":"dark_purple"},{"text":"| ","color":"white","bold":false},{"text":"[RMB]","color":"white","bold":false}]'}} 1

## CHARGE TICK UP
scoreboard players reset @s[scores={charge=194..}] charge
scoreboard players add @s[scores={charge=14..}] charge 1