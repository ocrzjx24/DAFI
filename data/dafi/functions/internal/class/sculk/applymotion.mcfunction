##> dafi:internal/class/sculk/applymotion
# purpose of function
#
# callers:
# > dafi:internal/class/sculk/lifetime
#
# credit:
# this code is taken from timberforge
# huge thanks to him :)
# https://www.youtube.com/channel/UC606Jh3yjNj40dcVuMwtUCw

execute store result score @s dafi.sculk.x1 run data get entity @s Pos[0] 1000
execute store result score @s dafi.sculk.y1 run data get entity @s Pos[1] 1000
execute store result score @s dafi.sculk.z1 run data get entity @s Pos[2] 1000

tp @s ^ ^ ^0.1
# execute at @s run tp @s ~ ~1 ~

execute store result score @s dafi.sculk.x2 run data get entity @s Pos[0] 1000
execute store result score @s dafi.sculk.y2 run data get entity @s Pos[1] 1000
execute store result score @s dafi.sculk.z2 run data get entity @s Pos[2] 1000

execute store result entity @s Motion[0] double 0.007 run scoreboard players operation @s dafi.sculk.x2 -= @s dafi.sculk.x1
execute store result entity @s Motion[1] double 0.007 run scoreboard players operation @s dafi.sculk.y2 -= @s dafi.sculk.y1
# execute store result entity @s Motion[1] double 0.01 run scoreboard players set @s dafi.sculk.y1 1000
execute store result entity @s Motion[2] double 0.007 run scoreboard players operation @s dafi.sculk.z2 -= @s dafi.sculk.z1