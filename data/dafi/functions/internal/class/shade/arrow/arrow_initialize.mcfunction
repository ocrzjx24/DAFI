tag @s add dafi.arrow.shade
data merge entity @s {NoGravity:1b}
execute as @a[tag=dafi.player.shooter] at @s anchored eyes run function dafi:internal/class/shade/arrow/arrow_as_player

execute store result entity @s Motion[0] double 0.0008 run scoreboard players get @s dafi.arrow.x
execute store result entity @s Motion[1] double 0.0008 run scoreboard players get @s dafi.arrow.y
execute store result entity @s Motion[2] double 0.0008 run scoreboard players get @s dafi.arrow.z
scoreboard players set @s dafi.arrow.lifetime 52

execute as @e[tag=this] run function dafi:internal/class/shade/arrow/arrow_apply

data modify entity @s crit set value 1
data modify entity @s pickup set value 0
data modify entity @s damage set value 5
tag @s remove dafi.arrow.explode
tag @e[tag=this,type=arrow] remove this