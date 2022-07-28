## 100% stolen from timber forge

execute at @s run summon marker ~ ~ ~ {Tags:["dafi.swamp.helper"]}

execute store result score @s swamp_y1 run data get entity @e[tag=dafi.swamp.helper,limit=1] Pos[1] 1000

kill @e[tag=dafi.swamp.helper]

execute at @s rotated as @a[tag=dafi.swamp.summon] run summon marker ^ ^ ^0.1 {Tags:["dafi.swamp.helper"]}

execute store result score @s swamp_y2 run data get entity @e[tag=dafi.swamp.helper,limit=1] Pos[1] 1000

kill @e[tag=dafi.swamp.helper]

execute store result entity @s Motion[1] double 0.015 run scoreboard players operation @s swamp_y2 -= @s swamp_y1

say spongbob