execute as @a if score @s dafi.ball.dropNoteBlock matches 1.. at @s run function dafi:internal/game/ball/drop
kill @e[type=item,nbt={Item:{id:"minecraft:note_block"}}]

## HOOP
execute as @e[tag=dafi.ball.westeast] at @s run function dafi:internal/game/ball/hoop_westeast
execute as @e[tag=dafi.ball.southnorth] at @s run function dafi:internal/game/ball/hoop_southnorth
## ON DEATH
execute as @a[scores={death=1..}] run function dafi:internal/game/ball/ondeath/ondeath