tag @s add delta.addition.to_launch

execute positioned 0.0 0.0 0.0 run summon marker ^ ^ ^1 {Tags:["delta.addition.rotation"]}

execute store result score @s delta.addition.temp run data get entity @e[tag=delta.addition.rotation,limit=1] Pos[0] 1000
scoreboard players operation @s delta.addition.temp *= @s delta.addition.magnitude
scoreboard players operation @s delta.addition.temp /= #constant.1000 delta.addition.math
scoreboard players operation @s delta.addition.x += @s delta.addition.temp

execute store result score @s delta.addition.temp run data get entity @e[tag=delta.addition.rotation,limit=1] Pos[1] 1000
scoreboard players operation @s delta.addition.temp *= @s delta.addition.magnitude
scoreboard players operation @s delta.addition.temp /= #constant.1000 delta.addition.math
scoreboard players operation @s delta.addition.y += @s delta.addition.temp

execute store result score @s delta.addition.temp run data get entity @e[tag=delta.addition.rotation,limit=1] Pos[2] 1000
scoreboard players operation @s delta.addition.temp *= @s delta.addition.magnitude
scoreboard players operation @s delta.addition.temp /= #constant.1000 delta.addition.math
scoreboard players operation @s delta.addition.z += @s delta.addition.temp

scoreboard players reset @s delta.addition.temp
scoreboard players reset @s delta.addition.magnitude

kill @e[tag=delta.addition.rotation]