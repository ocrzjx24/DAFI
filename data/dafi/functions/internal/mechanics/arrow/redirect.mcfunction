# data modify entity @s inGround set value false
# tag @s add dafi.redirect

# summon marker ^ ^ ^ {Tags:["dafi.redirecthelper"]}
# execute store result score @s dafi.redirect.x1 run data get entity @e[tag=dafi.redirecthelper,limit=1] Pos[0] 1000
# execute store result score @s dafi.redirect.y1 run data get entity @e[tag=dafi.redirecthelper,limit=1] Pos[1] 1000
# execute store result score @s dafi.redirect.z1 run data get entity @e[tag=dafi.redirecthelper,limit=1] Pos[2] 1000
# kill @e[tag=dafi.redirecthelper]

# execute at @s facing entity @e[sort=nearest,limit=1,type=!arrow] eyes run summon marker ^ ^ ^0.1 {Tags:["dafi.redirecthelper"]}
# execute store result score @s dafi.redirect.x2 run data get entity @e[tag=dafi.redirecthelper,limit=1] Pos[0] 1000
# execute store result score @s dafi.redirect.y2 run data get entity @e[tag=dafi.redirecthelper,limit=1] Pos[1] 1000
# execute store result score @s dafi.redirect.z2 run data get entity @e[tag=dafi.redirecthelper,limit=1] Pos[2] 1000
# kill @e[tag=dafi.redirecthelper]

# execute store result entity @s Motion[0] double 0.015 run scoreboard players operation @s dafi.redirect.x2 -= @s dafi.redirect.x1
# execute store result entity @s Motion[1] double 0.015 run scoreboard players operation @s dafi.redirect.y2 -= @s dafi.redirect.y1
# execute store result entity @s Motion[2] double 0.015 run scoreboard players operation @s dafi.redirect.z2 -= @s dafi.redirect.z1

# say bruh
# tag @s remove dafi.redirect

data modify entity @s inGround set value false

execute unless block ~0.2 ~ ~ air store result entity @s Motion[0] double -0.0007 run scoreboard players get @s dafi.arrow.x
execute unless block ~0.2 ~ ~ air run scoreboard players operation @s dafi.arrow.x *= #constant.-1 dafi.math
execute unless block ~-0.2 ~ ~ air store result entity @s Motion[0] double -0.0007 run scoreboard players get @s dafi.arrow.x
execute unless block ~-0.2 ~ ~ air run scoreboard players operation @s dafi.arrow.x *= #constant.-1 dafi.math
execute unless block ~ ~0.2 ~ air store result entity @s Motion[1] double -0.0007 run scoreboard players get @s dafi.arrow.y
execute unless block ~ ~0.2 ~ air run scoreboard players operation @s dafi.arrow.y *= #constant.-1 dafi.math
execute unless block ~ ~-0.2 ~ air store result entity @s Motion[1] double -0.0007 run scoreboard players get @s dafi.arrow.y
execute unless block ~ ~-0.2 ~ air run scoreboard players operation @s dafi.arrow.y *= #constant.-1 dafi.math
execute unless block ~ ~ ~0.2 air store result entity @s Motion[2] double -0.0007 run scoreboard players get @s dafi.arrow.z
execute unless block ~ ~ ~0.2 air run scoreboard players operation @s dafi.arrow.z *= #constant.-1 dafi.math
execute unless block ~ ~ ~-0.2 air store result entity @s Motion[2] double -0.0007 run scoreboard players get @s dafi.arrow.z
execute unless block ~ ~ ~-0.2 air run scoreboard players operation @s dafi.arrow.z *= #constant.-1 dafi.math
