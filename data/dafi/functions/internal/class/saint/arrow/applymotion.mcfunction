execute store result score @s dafi.arrow.x run data get entity @s Motion[0] 1000 
execute store result score @s dafi.arrow.y run data get entity @s Motion[1] 1000 
execute store result score @s dafi.arrow.z run data get entity @s Motion[2] 1000 

summon marker ~ ~ ~ {Tags:["dafi.arrow.saint.helper"]}

#tp @e[tag=dafi.arrow.saint.helper] ~ ~ ~ facing entity @a[sort=nearest,limit=1] eyes 
tp @e[tag=dafi.arrow.saint.helper] ~ ~ ~ facing entity @e[type=villager,sort=nearest,limit=1] eyes 

summon marker 0.0 0.0 0.0 {Tags:["dafi.arrow.saint.origin"]}

data modify entity @e[tag=dafi.arrow.saint.origin,limit=1] Rotation[0] set from entity @e[tag=dafi.arrow.saint.helper,limit=1] Rotation[0]
data modify entity @e[tag=dafi.arrow.saint.origin,limit=1] Rotation[1] set from entity @e[tag=dafi.arrow.saint.helper,limit=1] Rotation[1]

    #execute store result score holdenretriever temp run data get entity @e[tag=dafi.arrow.saint.origin,limit=1] Rotation[0] 1

execute as @e[tag=dafi.arrow.saint.origin] at @s run summon marker ^ ^ ^1 {Tags:["dafi.arrow.saint.target"]}

execute store result score @s dafi.arrow.x run data get entity @s Motion[0] 1000
execute store result score @s dafi.arrow.y run data get entity @s Motion[1] 1000
execute store result score @s dafi.arrow.z run data get entity @s Motion[2] 1000

execute store result score @s dafi.arrow.temp run data get entity @e[tag=dafi.arrow.saint.target,limit=1] Pos[0] 200
scoreboard players operation @s dafi.arrow.x += @s dafi.arrow.temp
execute store result score @s dafi.arrow.temp run data get entity @e[tag=dafi.arrow.saint.target,limit=1] Pos[1] 200
scoreboard players operation @s dafi.arrow.y += @s dafi.arrow.temp
execute store result score @s dafi.arrow.temp run data get entity @e[tag=dafi.arrow.saint.target,limit=1] Pos[2] 200
scoreboard players operation @s dafi.arrow.z += @s dafi.arrow.temp

execute store result entity @s Motion[0] double 0.0009 run scoreboard players get @s dafi.arrow.x
execute store result entity @s Motion[1] double 0.0009 run scoreboard players get @s dafi.arrow.y
execute store result entity @s Motion[2] double 0.0009 run scoreboard players get @s dafi.arrow.z

kill @e[tag=dafi.arrow.saint.origin]
kill @e[tag=dafi.arrow.saint.helper]
kill @e[tag=dafi.arrow.saint.target]