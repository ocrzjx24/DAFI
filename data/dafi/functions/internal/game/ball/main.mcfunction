execute as @a if score @s dafi.ball.dropNoteBlock matches 1.. at @s run function dafi:internal/game/ball/drop
kill @e[type=item,nbt={Item:{id:"minecraft:note_block"}}]

execute at @e[type=slime] positioned ~-0.55 ~-0.55 ~-0.55 as @a[dx=0.05,dy=0.05,dz=0.05,limit=1,sort=nearest] unless score @s dafi.ball.grabCD matches 1.. run function dafi:internal/game/ball/grabball
execute as @a if score @s dafi.ball.grabCD matches 1.. run scoreboard players remove @s dafi.ball.grabCD 1
#execute as @e[tag=dafi.ball] if data entity @s {OnGround:1b} unless data entity @s {NoAI:1b} run data merge entity @s {NoAI:1b}
#execute as @e[tag=dafi.ball] if data entity @s {OnGround:1b} at @s run tp @s ~ ~ ~ ~15 ~
#execute as @e[tag=dafi.ball] if data entity @s {OnGround:1b} at @s anchored eyes run particle minecraft:dust 1 1 1 1 ^ ^0.4 ^0.5 0 0 0 1 1 force
#execute as @e[tag=dafi.ball] if data entity @s {OnGround:1b} at @s anchored eyes run particle minecraft:dust 0 0 0 1 ^ ^0.4 ^-0.5 0 0 0 0 1 force
## HOOP
execute as @e[tag=dafi.ball.westeast] at @s run function dafi:internal/game/ball/hoop_westeast
execute as @e[tag=dafi.ball.southnorth] at @s run function dafi:internal/game/ball/hoop_southnorth

## ON DEATH
execute as @a[scores={dafi.ball.death=1..}] run function dafi:internal/game/ball/ondeath/ondeath

## PARTICLE
execute as @a[team=red] run function dafi:internal/game/ball/pointer
execute as @a[team=blue] run function dafi:internal/game/ball/pointer