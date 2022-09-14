##> dafi:internal/class/shade/charged
# runs when shade charges
#
# callers:
# > ?

## CHARGE INITIALIZE
execute if score @s dafi.shade.charge matches 1 at @s run playsound minecraft:entity.ender_eye.death master @s ~ ~ ~ 1 0.75
execute if score @s dafi.shade.charge matches 5 at @s run execute at @s run playsound minecraft:entity.ender_eye.death master @s ~ ~ ~ 1 0.9
execute if score @s dafi.shade.charge matches 9 at @s run execute at @s run playsound minecraft:entity.ender_eye.death master @s ~ ~ ~ 1 1

execute if score @s dafi.shade.charge matches 9 run scoreboard players reset @s dafi.mechanics.offhandReady
execute if score @s dafi.shade.charge matches 9 run clear @s ender_eye
execute if score @s dafi.shade.charge matches 9 run tag @s add dafi.mechanics.wallrunP
execute if score @s dafi.shade.charge matches 9 run effect give @s minecraft:speed 3 7 true
execute if score @s dafi.shade.charge matches 9 run effect give @s minecraft:invisibility 3 0 true
execute if score @s dafi.shade.charge matches 9 at @s run playsound minecraft:block.chorus_flower.grow master @s[distance=..10] ~ ~ ~ 1 1.7
execute if score @s dafi.shade.charge matches 9 at @s run playsound minecraft:entity.wither.ambient master @a[distance=..10] ~ ~ ~ 0.4 2 1
execute if score @s dafi.shade.charge matches 9 run item replace entity @s armor.feet with minecraft:air
execute if score @s dafi.shade.charge matches 9 run item replace entity @s armor.head with minecraft:air

## CHARGE DURATION
#execute at @s[scores={charge=14..74}] run particle minecraft:witch ~ ~ ~ 0 0 0 0.001 2
execute if score @s dafi.shade.charge matches 9..70 at @s run particle minecraft:squid_ink ~ ~ ~ 0.2 0.2 0.2 0.01 1 force
execute if score @s dafi.shade.charge matches 9..70 at @s run particle minecraft:dust 1 0 0.8 0.8 ~ ~ ~ 0.5 0.5 0.5 0.00000001 3 normal
execute if score @s dafi.shade.charge matches 70 run item replace entity @s armor.feet with minecraft:leather_boots{Enchantments:[{id:"binding_curse",lvl:1},{id:"depth_strider",lvl:3}],Unbreakable:1,display:{color:4980889}} 1
execute if score @s dafi.shade.charge matches 70 run function dafi:api/hat
execute if score @s dafi.shade.charge matches 70 run tag @s remove dafi.mechanics.wallrunP


## CHARGE END
execute if score @s dafi.shade.charge matches 150 run title @s actionbar ["",{"text":"[RMB] ","bold":true,"color":"gold"},{"text":"READY","color":"green"}]
execute if score @s dafi.shade.charge matches 150 run scoreboard players set @s dafi.mechanics.offhandReady 1
execute if score @s dafi.shade.charge matches 150 run tag @s remove dafi.mechanics.offhandProcessed
execute if score @s dafi.shade.charge matches 150 at @s run playsound minecraft:item.armor.equip_elytra master @s ~ ~ ~ 0.6 1
execute if score @s dafi.shade.charge matches 150 at @s run playsound minecraft:block.chorus_flower.grow master @s ~ ~ ~ 1 1.3
#execute if score @s charge matches 194 run item replace entity @s weapon.offhand with ender_eye{display:{Name:'[{"text":"Fa","italic":false,"bold":true,"color":"light_purple"},{"text":"de ","color":"dark_purple"},{"text":"| ","color":"white","bold":false},{"text":"[RMB]","color":"white","bold":false}]'}} 1

## CHARGE TICK UP
execute if score @s dafi.shade.charge matches 150.. run scoreboard players reset @s dafi.shade.charge
execute if score @s dafi.shade.charge matches 9.. run scoreboard players add @s dafi.shade.charge 1



## CHARGE ALT
execute if score @s dafi.shade.charge matches -1 run scoreboard players reset @s dafi.mechanics.offhandReady
execute if score @s dafi.shade.charge matches -1 run clear @s ender_eye
execute if score @s dafi.shade.charge matches -1 run tag @s add dafi.mechanics.wallrunP
execute if score @s dafi.shade.charge matches -1 run effect give @s minecraft:speed 1 7 true
execute if score @s dafi.shade.charge matches -1 run effect give @s minecraft:invisibility 1 0 true
execute if score @s dafi.shade.charge matches -1 at @s run playsound minecraft:block.chorus_flower.grow master @s[distance=..10] ~ ~ ~ 1 1.7
execute if score @s dafi.shade.charge matches -1 at @s run playsound minecraft:entity.wither.ambient master @a[distance=..10] ~ ~ ~ 0.4 2 1
execute if score @s dafi.shade.charge matches -1 run item replace entity @s armor.feet with minecraft:air
execute if score @s dafi.shade.charge matches -1 run item replace entity @s armor.head with minecraft:air

## CHARGE ALT DURATION
#execute at @s[scores={charge=14..74}] run particle minecraft:witch ~ ~ ~ 0 0 0 0.001 2
execute if score @s dafi.shade.charge matches -20..-1 at @s run particle minecraft:squid_ink ~ ~ ~ 0.2 0.2 0.2 0.01 1 force
execute if score @s dafi.shade.charge matches -20..-1 at @s run particle minecraft:dust 1 0 0.8 0.8 ~ ~ ~ 0.5 0.5 0.5 0.00000001 3 normal
execute if score @s dafi.shade.charge matches -20 run item replace entity @s armor.feet with minecraft:leather_boots{Enchantments:[{id:"binding_curse",lvl:1},{id:"depth_strider",lvl:3}],Unbreakable:1,display:{color:4980889}} 1
execute if score @s dafi.shade.charge matches -20 run function dafi:api/hat
execute if score @s dafi.shade.charge matches -20 run tag @s remove dafi.mechanics.wallrunP

## CHARGE ALT END
execute if score @s dafi.shade.charge matches -61 run title @s actionbar ["",{"text":"[RMB] ","bold":true,"color":"gold"},{"text":"READY","color":"green"}]
execute if score @s dafi.shade.charge matches -61 run scoreboard players set @s dafi.offhandReady 1
execute if score @s dafi.shade.charge matches -61 run tag @s remove dafi.offhandProcessed
execute if score @s dafi.shade.charge matches -61 at @s run playsound minecraft:item.armor.equip_elytra master @s ~ ~ ~ 0.6 1
execute if score @s dafi.shade.charge matches -61 at @s run playsound minecraft:block.chorus_flower.grow master @s ~ ~ ~ 1 1.3

## CHARGE ALT TICK
execute if score @s dafi.shade.charge matches ..-61 run scoreboard players reset @s dafi.shade.charge
execute if score @s dafi.shade.charge matches ..-1 run scoreboard players remove @s dafi.shade.charge 1
