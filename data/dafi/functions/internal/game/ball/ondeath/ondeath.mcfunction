scoreboard players set @s dafi.ball.death 0

execute store result storage death Pos[0] double 1.0 run data get entity @s LastDeathLocation.pos[0]
execute store result storage death Pos[1] double 1.0 run data get entity @s LastDeathLocation.pos[1]
execute store result storage death Pos[2] double 1.0 run data get entity @s LastDeathLocation.pos[2]

summon marker ~ ~ ~ {Tags:["dafi.ball.death"]}
execute as @e[type=marker,tag=dafi.ball.death] run function dafi