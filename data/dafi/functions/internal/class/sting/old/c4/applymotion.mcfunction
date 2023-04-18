## 100% stolen from timber forge

execute store result score @s dafi.sting.x1 run data get entity @s Pos[0] 1000
execute store result score @s dafi.sting.y1 run data get entity @s Pos[1] 1000
execute store result score @s dafi.sting.z1 run data get entity @s Pos[2] 1000

# figure it out later
execute at @s rotated as @a[tag=dafi.sting.glshot] run summon marker ^ ^ ^0.1 {Tags:["dafi.sting.helper"]}

execute store result score @s dafi.sting.x2 run data get entity @e[tag=dafi.sting.helper,limit=1] Pos[0] 1000
execute store result score @s dafi.sting.y2 run data get entity @e[tag=dafi.sting.helper,limit=1] Pos[1] 1000
execute store result score @s dafi.sting.z2 run data get entity @e[tag=dafi.sting.helper,limit=1] Pos[2] 1000

kill @e[tag=dafi.sting.helper]

execute store result entity @s Motion[0] double 0.015 run scoreboard players operation @s dafi.sting.x2 -= @s dafi.sting.x1
execute store result entity @s Motion[1] double 0.015 run scoreboard players operation @s dafi.sting.y2 -= @s dafi.sting.y1
execute store result entity @s Motion[2] double 0.015 run scoreboard players operation @s dafi.sting.z2 -= @s dafi.sting.z1