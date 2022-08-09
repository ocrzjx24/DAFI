#particle minecraft:block dirt ~ ~ ~ 2 2 2 0.1 50 force
#particle minecraft:block redstone_block ~ ~ ~ 2 2 2 0.1 30 force
#particle ash ~ ~ ~ 2 2 2 0.1 30 force
tag @s add dafi.arrow.swamp.inground

summon marker 0.0 0.0 0.0 {Tags:["dafi.arrow.swamp.originhelper"]}

summon marker 0.0 0.0 0.0 {Tags:["dafi.arrow.swamp.targethelper"]}

execute store result entity @e[tag=dafi.arrow.swamp.targethelper,limit=1] Pos[0] double 0.001 run scoreboard players get @s dafi.arrow.x
execute store result entity @e[tag=dafi.arrow.swamp.targethelper,limit=1] Pos[1] double 0.001 run scoreboard players get @s dafi.arrow.y
execute store result entity @e[tag=dafi.arrow.swamp.targethelper,limit=1] Pos[2] double 0.001 run scoreboard players get @s dafi.arrow.z

tp @e[tag=dafi.arrow.swamp.originhelper] 0.0 0.0 0.0 facing entity @e[tag=dafi.arrow.swamp.targethelper,limit=1] eyes 

function dafi:internal/class/swamp/arrow/raycast_fire

kill @e[tag=dafi.arrow.swamp.originhelper]

kill @e[tag=dafi.arrow.swamp.targethelper]

tag @s remove dafi.arrow.swamp.inground