## 100% stolen from timber forge

execute at @s run summon marker ~ ~ ~ {Tags:["dafi.ball.helper"]}
execute store result score @s dafi.ball.x1 run data get entity @e[tag=dafi.ball.helper,limit=1] Pos[0] 1000
execute store result score @s dafi.ball.y1 run data get entity @e[tag=dafi.ball.helper,limit=1] Pos[1] 1000
execute store result score @s dafi.ball.z1 run data get entity @e[tag=dafi.ball.helper,limit=1] Pos[2] 1000
kill @e[tag=dafi.ball.helper]
execute at @s rotated as @a[tag=dafi.ball.summon] run summon marker ^ ^ ^0.1 {Tags:["dafi.ball.helper"]}
execute store result score @s dafi.ball.x2 run data get entity @e[tag=dafi.ball.helper,limit=1] Pos[0] 1000
execute store result score @s dafi.ball.y2 run data get entity @e[tag=dafi.ball.helper,limit=1] Pos[1] 1000
execute store result score @s dafi.ball.z2 run data get entity @e[tag=dafi.ball.helper,limit=1] Pos[2] 1000
kill @e[tag=dafi.ball.helper]
scoreboard players operation @s dafi.ball.x2 -= @s dafi.ball.x1
scoreboard players operation @s dafi.ball.y2 -= @s dafi.ball.y1
scoreboard players operation @s dafi.ball.z2 -= @s dafi.ball.z1

execute store result score @s dafi.ball.x3 run data get entity @a[tag=dafi.ball.summon,limit=1] Motion[0] 100
execute store result score @s dafi.ball.y3 run data get entity @a[tag=dafi.ball.summon,limit=1] Motion[1] 100
execute store result score @s dafi.ball.z3 run data get entity @a[tag=dafi.ball.summon,limit=1] Motion[2] 100

execute store result entity @s Motion[0] double 0.015 run scoreboard players operation @s dafi.ball.x2 += @s dafi.ball.x3
execute store result entity @s Motion[1] double 0.015 run scoreboard players operation @s dafi.ball.y2 += @s dafi.ball.y3
execute store result entity @s Motion[2] double 0.015 run scoreboard players operation @s dafi.ball.z2 += @s dafi.ball.z3

tag @s add dafi.ball.motion_added