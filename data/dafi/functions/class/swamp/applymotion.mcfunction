## 100% stolen from timber forge

execute at @s run summon marker ~ ~ ~ {Tags:["dafi.swamp.helper"]}

execute store result score @s swamp_x1 run data get entity @e[tag=dafi.swamp.helper,limit=1] Pos[0] 1000
execute store result score @s swamp_y1 run data get entity @e[tag=dafi.swamp.helper,limit=1] Pos[1] 1000
execute store result score @s swamp_z1 run data get entity @e[tag=dafi.swamp.helper,limit=1] Pos[2] 1000

kill @e[tag=dafi.swamp.helper]

execute at @s rotated as @a[tag=dafi.swamp.summon] run summon marker ^ ^ ^0.1 {Tags:["dafi.swamp.helper"]}

execute store result score @s swamp_x2 run data get entity @e[tag=dafi.swamp.helper,limit=1] Pos[0] 1000
execute store result score @s swamp_y2 run data get entity @e[tag=dafi.swamp.helper,limit=1] Pos[1] 1000
execute store result score @s swamp_z2 run data get entity @e[tag=dafi.swamp.helper,limit=1] Pos[2] 1000

kill @e[tag=dafi.swamp.helper]

execute store result entity @s Motion[0] double 0.015 run scoreboard players operation @s swamp_x2 -= @s swamp_x1
execute store result entity @s Motion[1] double 0.015 run scoreboard players operation @s swamp_y2 -= @s swamp_y1
execute store result entity @s Motion[2] double 0.015 run scoreboard players operation @s swamp_z2 -= @s swamp_z1

tag @s add swamp_motion_added