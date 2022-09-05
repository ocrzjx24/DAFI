scoreboard players set @s dafi.ball.death 0

clear @s note_block

execute store result storage death Pos[0] double 1.0 run data get entity @s LastDeathLocation.pos[0]
execute store result storage death Pos[1] double 1.0 run data get entity @s LastDeathLocation.pos[1]
execute store result storage death Pos[2] double 1.0 run data get entity @s LastDeathLocation.pos[2]

execute if entity @s[tag=dafi.balling] run summon marker ~ ~ ~ {Tags:["dafi.death"]}
tag @s add this
execute as @e[type=marker,tag=dafi.death] run function dafi:internal/game/ball/ondeath/atpos
tag @s remove this
tag @s remove dafi.balling