scoreboard players set .itt dafi.raycast 0
summon arrow ~ ~ ~ {Tags:["dafi.arrow.swamp","dafi.arrow.swamp.tunnel","dafi.arrow.processing"]}

execute store result entity @e[tag=dafi.arrow.processing,limit=1] Motion[0] double 0.0007 run scoreboard players get @e[tag=dafi.arrow.swamp.inground,limit=1] dafi.arrow.x
execute store result entity @e[tag=dafi.arrow.processing,limit=1] Motion[1] double 0.0007 run scoreboard players get @e[tag=dafi.arrow.swamp.inground,limit=1] dafi.arrow.y
execute store result entity @e[tag=dafi.arrow.processing,limit=1] Motion[2] double 0.0007 run scoreboard players get @e[tag=dafi.arrow.swamp.inground,limit=1] dafi.arrow.z

execute store result entity @e[tag=dafi.arrow.processing,limit=1] Owner int 1 run data get entity @e[tag=dafi.arrow.swamp.inground,limit=1] Owner

data modify entity @e[tag=dafi.arrow.processing,limit=1] crit set value 1
data modify entity @e[tag=dafi.arrow.processing,limit=1] pickup set value 0
data modify entity @e[tag=dafi.arrow.processing,limit=1] damage set value 8
#data modify entity @e[tag=dafi.arrow.swamp.tunnel,limit=1] PierceLevel set value 5
execute if score #universal dafi.arrownogravity matches 1 run data modify entity @e[tag=dafi.arrow.processing,limit=1] NoGravity set value 1

tag @e[tag=dafi.arrow.processing] add dafi.arrow.processed 
tag @e[tag=dafi.arrow.processing] remove dafi.arrow.processing