tag @s add dafi.arrow.siege

execute as @e[tag=dafi.arrow.processing,limit=1] store result entity @s Motion[0] double 0.0013 run scoreboard players get @s dafi.arrow.x
execute as @e[tag=dafi.arrow.processing,limit=1] store result entity @s Motion[1] double 0.0013 run scoreboard players get @s dafi.arrow.y
execute as @e[tag=dafi.arrow.processing,limit=1] store result entity @s Motion[2] double 0.0013 run scoreboard players get @s dafi.arrow.z

data modify entity @e[tag=dafi.arrow.processing,limit=1] crit set value 0
data modify entity @e[tag=dafi.arrow.processing,limit=1] pickup set value 0
data modify entity @e[tag=dafi.arrow.processing,limit=1] damage set value 1.5