## RIPPED FROM CLOUDWOLF
# returns sin of xy (rotation around the x axis)
# output  1000x

execute rotated 0 ~ run summon minecraft:marker ^ ^ ^1 {Tags:["dafi.math","dafi.trig"]}
execute store result score .output dafi.math run data get entity @s Pos[1] 1000
execute store result score .temp dafi.math run data get entity @e[tag=dafi.math,tag=dafi.trig,limit=1] Pos[1] 1000
scoreboard players operation .output dafi.math -= .temp dafi.math
kill @e[tag=dafi.math,tag=dafi.trig]