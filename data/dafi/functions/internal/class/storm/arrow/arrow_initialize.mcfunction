tag @s add dafi.arrow.storm
tag @s add dafi.arrow.original.temp

execute as @a[tag=dafi.player.shooter] at @s anchored eyes run function dafi:internal/class/storm/arrow/arrow_summon
execute store result entity @s Motion[0] double 0.001 run scoreboard players get @s dafi.arrow.x
execute store result entity @s Motion[1] double 0.001 run scoreboard players get @s dafi.arrow.y
execute store result entity @s Motion[2] double 0.001 run scoreboard players get @s dafi.arrow.z
scoreboard players set @s dafi.arrow.lifetime 60

execute as @e[tag=this] run function dafi:internal/class/storm/arrow/arrow_apply
tag @e[tag=this] remove this
tag @s remove dafi.arrow.original.temp