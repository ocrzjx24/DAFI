kill @s[tag=!dafi.arrow.explode]

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

data modify entity @s crit set value 1

tag @s remove dafi.arrow.explode