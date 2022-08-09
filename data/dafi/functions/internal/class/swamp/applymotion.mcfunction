## 100% stolen from timber forge

execute at @s run summon marker ~ ~ ~ {Tags:["dafi.swamp.helper"]}
execute store result score @s dafi.swamp.x1 run data get entity @e[tag=dafi.swamp.helper,limit=1] Pos[0] 1000
execute store result score @s dafi.swamp.y1 run data get entity @e[tag=dafi.swamp.helper,limit=1] Pos[1] 1000
execute store result score @s dafi.swamp.z1 run data get entity @e[tag=dafi.swamp.helper,limit=1] Pos[2] 1000
kill @e[tag=dafi.swamp.helper]
execute at @s rotated as @a[tag=dafi.swamp.summon] run summon marker ^ ^ ^0.1 {Tags:["dafi.swamp.helper"]}
execute store result score @s dafi.swamp.x2 run data get entity @e[tag=dafi.swamp.helper,limit=1] Pos[0] 1000
execute store result score @s dafi.swamp.y2 run data get entity @e[tag=dafi.swamp.helper,limit=1] Pos[1] 1000
execute store result score @s dafi.swamp.z2 run data get entity @e[tag=dafi.swamp.helper,limit=1] Pos[2] 1000
kill @e[tag=dafi.swamp.helper]
execute store result entity @s Motion[0] double 0.015 run scoreboard players operation @s dafi.swamp.x2 -= @s dafi.swamp.x1
execute store result entity @s Motion[1] double 0.015 run scoreboard players operation @s dafi.swamp.y2 -= @s dafi.swamp.y1
execute store result entity @s Motion[2] double 0.015 run scoreboard players operation @s dafi.swamp.z2 -= @s dafi.swamp.z1
tag @s add dafi.swamp.motion_added